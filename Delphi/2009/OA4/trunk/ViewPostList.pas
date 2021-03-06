unit ViewPostList;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, ComCtrls, ExtCtrls, StdCtrls, CheckLst, Buttons, mysql, Main, Grids,
  ImgList;

type
	TViewPostListForm = class(TForm)
		pnlButtons: TPanel;
    btnCreate: TButton;
		btnClose: TButton;
		btnHelp: TButton;
    btnView: TButton;
    btnErase: TButton;
    Panel1: TPanel;
    pnlID: TPanel;
    lblIDCaption: TLabel;
    lblID: TLabel;
    lvMessages: TListView;
    ilPost: TImageList;
    Bevel4: TBevel;
    procedure lvMessagesDblClick(Sender: TObject);
    procedure btnEraseClick(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lvMessagesSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
  private
  public
  end;

var
  ViewPostListForm: TViewPostListForm;

implementation

{$R *.dfm}

uses CreateViewPost;

procedure TViewPostListForm.btnCreateClick(Sender: TObject);
var
  mr: TModalResult;
  s, q: string;
  bError: boolean;
  i, j, iLastID: integer;
  ResultSet: PMYSQL_RES;
  ResultRow: PMYSQL_ROW;
  TSL: TStringList;
  RTFStream: TMemoryStream;
	pacCaption, pacText: PAnsiChar;
  GroupGUID: string;
begin
  GroupGUID:='{C95816A0-63F7-41D3-B844-EBFB321799BE}';
  bError:=False;
  ResultSet:=nil;
  pacCaption:=nil;
  pacText:=nil;
  iLastID:=-1;
  MainForm.LogThis('������� �������� ���� �������� ���������...',GroupGUID,lmtInfo);
  with TCreateViewPostForm.Create(Owner) do
    try
      Screen.Cursor:=crHourGlass;
      MainForm.ImageList2.GetIcon(18,Icon);
      Caption:='OA4 - ����� ���������';
      Hint:='���� �������� ���������';
      pnlID.Visible:=False;
      lblTo.Visible:=True;
      cmbbxTo.Visible:=True;
      edbxCaption.ReadOnly:=False;
      meMessage.ReadOnly:=False;
      pnlCreation.Visible:=False;
      btnClear.Visible:=True;
      btnProcess.Visible:=False;
      btnErase.Visible:=False;
      btnPrevious.Visible:=False;
      btnNext.Visible:=False;
      btnSend.Visible:=True;
      btnHelp.Enabled:=Application.HelpFile<>'';
      ActiveControl:=edbxCaption;
      cmbbxTo.Clear;
      // ��������� ������ �������������
      MainForm.LogThis('��������� ������ �������������...',GroupGUID,lmtInfo);
      q:='SELECT usr_fullname FROM '+MainForm.Configuration.sMySQLDatabase+'._usr WHERE usr_erased="0" GROUP BY usr_fullname ORDER BY usr_fullname;';
      MainForm.LogThis(q,GroupGUID,lmtSQL);
      i:=mysql_real_query(MainForm.MySQLConnectionHandler,PChar(q),Length(q));
      if i=0 then
        begin
          MainForm.LogThis('������ �������� �������.',GroupGUID,lmtInfo);
          ResultSet:=mysql_store_result(MainForm.MySQLConnectionHandler);
          if ResultSet<>nil then
            begin
              MainForm.LogThis('�������������� ������� �������� �������.',GroupGUID,lmtInfo);
              i:=mysql_num_rows(ResultSet);
              if i>0 then
                begin
                  MainForm.ProgressBar1.Max:=i;
                  MainForm.LogThis('���������� ����� ������� ����� '+IntToStr(i)+'.',GroupGUID,lmtInfo);
                  for j:=0 to i-1 do
                    begin
                      MainForm.LogThis('��������� ��������� ������ ������� ('+IntToStr(j)+').',GroupGUID,lmtInfo);
                      ResultRow:=mysql_fetch_row(ResultSet);
                      if ResultRow<>nil then
                        begin
                          MainForm.LogThis('�������� ��������� ��������� ������ ������� ('+IntToStr(j)+') ������ �������.',GroupGUID,lmtInfo);
                          cmbbxTo.Items.Add(ResultRow[0]);
                        end
                      else
                        begin
                          s:='�������� ������ ��� �������� ������ ������ ������� (���������� ����� ������ ����� '+IntToStr(j)+')!';
                          bError:=True;
                        end;
                      MainForm.ProgressBar1.StepIt;
                    end;
                  MainForm.ProgressBar1.Position:=MainForm.ProgressBar1.Min;
                end
              else
                begin
                  s:='� ������� �� ����������������� �� ������ ������������!';
                  bError:=True;
                end;
            end
          else
            begin
              s:='�� ������� �������� �������������� ������� �� ���������� SQL-�������!';
              bError:=True;
            end;
        end
      else
        begin
          s:='�������� ������ ��� ���������� �������!';
          bError:=True;
        end;
      if ResultSet<>nil then
        begin
          MainForm.LogThis('������������ ��������, ������� ����������� �������.',GroupGUID,lmtInfo);
          mysql_free_result(ResultSet);
        end;
      MainForm.ProgressBar1.Position:=MainForm.ProgressBar1.Min;
      Screen.Cursor:=crDefault;
      if bError then
        begin
          MainForm.LogThis(s,GroupGUID,lmtError);
          MessageBox(Handle,PChar(s),PChar('OA4 - ������!'),MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
        end
      else MainForm.LogThis('������ ������������� ������� �������...',GroupGUID,lmtInfo);
      if MainForm.Configuration.fpCreateViewPostForm.bCenter then
        Position:=poScreenCenter
      else
        begin
          Position:=poDesigned;
          Top:=MainForm.Configuration.fpCreateViewPostForm.y;
          Left:=MainForm.Configuration.fpCreateViewPostForm.x;
        end;
      if bError=False then
        begin
          cmbbxTo.Items.Add('[ ������ ��������������� ]');
          cmbbxTo.Items.Add('[ ������ ���������� ]');
          cmbbxTo.Items.Add('[ ������ ������������� ]');
          ShowModal;
        end;
    finally
      mr:=ModalResult;
      MainForm.Configuration.fpCreateViewPostForm.y:=Top;
      MainForm.Configuration.fpCreateViewPostForm.x:=Left;
      if mr=mrOk then
        begin
          // ����������� id ������������
          TSL:=TStringList.Create;
          try
            if ((cmbbxTo.Text='[ ������ ��������������� ]') or (cmbbxTo.Text='[ ������ ���������� ]') or (cmbbxTo.Text='[ ������ ������������� ]')) then
              begin
                if cmbbxTo.Text='[ ������ ��������������� ]' then
                  begin
                    MainForm.LogThis('��������� ������ ��������������� ���������������...',GroupGUID,lmtInfo);
                    q:='SELECT usr_id FROM '+MainForm.Configuration.sMySQLDatabase+'._usr WHERE usr_erased="0" and usr_is_admin="1" GROUP BY usr_id ORDER BY usr_id;';
                  end;
                if cmbbxTo.Text='[ ������ ���������� ]' then
                  begin
                    MainForm.LogThis('��������� ������ ��������������� ����������...',GroupGUID,lmtInfo);
                    q:='SELECT usr_id FROM '+MainForm.Configuration.sMySQLDatabase+'._usr WHERE usr_erased="0" and usr_can_edit_db="1" GROUP BY usr_id ORDER BY usr_id;';
                  end;
                if cmbbxTo.Text='[ ������ ������������� ]' then
                  begin
                    MainForm.LogThis('��������� ������ ��������������� �������������...',GroupGUID,lmtInfo);
                    q:='SELECT usr_id FROM '+MainForm.Configuration.sMySQLDatabase+'._usr WHERE usr_erased="0" and usr_is_admin="0" GROUP BY usr_id ORDER BY usr_id;';
                  end;
              end
            else
              begin
                MainForm.LogThis('��������� �������������� ���������� ������������...',GroupGUID,lmtInfo);
                q:='SELECT usr_id FROM '+MainForm.Configuration.sMySQLDatabase+'._usr WHERE usr_fullname="'+cmbbxTo.Text+'" ORDER BY usr_id;';
              end;
            MainForm.LogThis(q,GroupGUID,lmtSQL);
            i:=mysql_real_query(MainForm.MySQLConnectionHandler,PChar(q),Length(q));
            if i=0 then
              begin
                MainForm.LogThis('������ �������� �������.',GroupGUID,lmtInfo);
                ResultSet:=mysql_store_result(MainForm.MySQLConnectionHandler);
                if ResultSet<>nil then
                  begin
                    MainForm.LogThis('�������������� ������� �������� �������.',GroupGUID,lmtInfo);
                    i:=mysql_num_rows(ResultSet);
                    if i>0 then
                      begin
                        MainForm.LogThis('���������� ����� ������� ����� '+IntToStr(i)+'.',GroupGUID,lmtInfo);
                        MainForm.ProgressBar1.Max:=i;
                        for j:=0 to i-1 do
                          begin
                            MainForm.LogThis('��������� ��������� ������ ������� ('+IntToStr(j)+').',GroupGUID,lmtInfo);
                            ResultRow:=mysql_fetch_row(ResultSet);
                            if ResultRow<>nil then
                              begin
                                MainForm.LogThis('�������� ��������� ��������� ������ ������� ('+IntToStr(j)+') ������ �������.',GroupGUID,lmtInfo);
                                TSL.Add(ResultRow[0]);
                              end
                            else
                              begin
                                s:='�������� ������ ��� �������� ������ ������ ������� (���������� ����� ������ ����� '+IntToStr(j)+')!';
                                bError:=True;
                              end;
                            MainForm.ProgressBar1.StepIt;
                          end;
                      end
                    else
                      begin
                        s:='� ������� �� ����������������� �� ������ ������������ � ������ �������!';
                        bError:=True;
                      end;
                  end
                else
                  begin
                    s:='�� ������� �������� �������������� ������� �� ���������� SQL-�������!';
                    bError:=True;
                  end;
              end
            else
              begin
                s:='�������� ������ ��� ���������� �������!';
                bError:=True;
              end;
            if bError then
              begin
                MainForm.LogThis(s,GroupGUID,lmtError);
                MessageBox(Handle,PChar(s),PChar('OA4 - ������!'),MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
              end
            else MainForm.LogThis('������ ��������������� ������� �������...',GroupGUID,lmtInfo);
            if ResultSet<>nil then
              begin
                MainForm.LogThis('������������ ��������, ������� ����������� �������.',GroupGUID,lmtInfo);
                mysql_free_result(ResultSet);
              end;
            MainForm.ProgressBar1.Position:=MainForm.ProgressBar1.Min;
            // ���� � ������ ������� ���� � ����� �������, �� � ����� ��������� �������
            if not bError then
              begin
	              RTFStream:=TMemoryStream.Create;
	              try
                  // �������������� ����
                  pacCaption:=GetMemory(Length(edbxCaption.Text)*2+1);
                  mysql_escape_string(pacCaption,PAnsiChar(edbxCaption.Text),Length(edbxCaption.Text));
                  // �������������� ���������
                  meMessage.Lines.SaveToStream(RTFStream);
                  RTFStream.Seek(0,soFromBeginning);
                  pacText:=GetMemory(RTFStream.Size*2+1);
                  mysql_escape_string(pacText,RTFStream.Memory,RTFStream.Size);
                  MainForm.ProgressBar1.Max:=TSL.Count*2;
                  Screen.Cursor:=crHourGlass;
                  for j:=0 to TSL.Count-1 do
                    begin
                      if not bError then
                        begin
                          // ���������� ���������
                          MainForm.LogThis('���������� ������ ���������...',GroupGUID,lmtInfo);
                          q:= 'INSERT INTO '+MainForm.Configuration.sMySQLDatabase+'._msg (msg_id, msg_erased, msg_processed, msg_for_user_id, '+
                              'msg_caption, msg_text, msg_created_at, msg_created_by_user_id) VALUES '+
                              '(NULL, "0", "0", '+TSL.Strings[j]+', "'+pacCaption+'", "'+pacText+'", Now(), '+MainForm.CurrentUser.sID+');';
                          MainForm.LogThis(q,GroupGUID,lmtSQL);
                          i:=mysql_real_query(MainForm.MySQLConnectionHandler,PChar(q),Length(q));
                          if i=0 then
                            begin
                              MainForm.LogThis('������ �������� �������.',GroupGUID,lmtInfo);
                              iLastID:=mysql_insert_id(MainForm.MySQLConnectionHandler); // ���������� ID ����������� ������
                              i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
                              if i=1 then
                                begin
                                  MainForm.LogThis('���������� ����� ������� ������������� ����������.',GroupGUID,lmtInfo);
                                  MainForm.LogThis('��������� ������� ���������� ����������.',GroupGUID,lmtInfo);
                                end
                              else
                                begin
                                  s:='���������� ������������ ����� ('+IntToStr(i)+') �� ������������� ���������� (1)!';
                                  bError:=True;
                                end
                            end
                          else
                            begin
                              s:='�������� ������ ��� ���������� �������!';
                              bError:=True;
                            end;
                          MainForm.ProgressBar1.StepIt;
                          Application.ProcessMessages;
                          // ������ ���������� � ��
                          if not bError then
                            begin
                              MainForm.LogThis('�������� ������ � ������� �������.',GroupGUID,lmtInfo);
                              q:='INSERT INTO '+MainForm.Configuration.sMySQLDatabase+'._evn VALUES (NULL, NOW(),"INS","msg",'+IntToStr(iLastID)+','+MainForm.CurrentUser.sID+','+#39+q+#39+');';
                              MainForm.LogThis(q,GroupGUID,lmtSQL);
                              i:=mysql_real_query(MainForm.MySQLConnectionHandler,PChar(q),Length(q));
                              if i=0 then
                                begin
                                  MainForm.LogThis('������ �������� �������.',GroupGUID,lmtInfo);
                                  i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
                                  MainForm.LogThis('���������� ������������ ����� ����� '+IntToStr(i)+'.',GroupGUID,lmtInfo);
                                  if (i=1) then
                                    MainForm.LogThis('������ � ������� ������� ������� �������',GroupGUID,lmtInfo)
                                  else
                                    begin
                                      s:='���������� ������������ ����� ('+IntToStr(i)+') �� ������������� ���������� (1)!';
                                      bError:=True;
                                    end;
                                end
                              else
                                begin
                                  s:='�������� ������ ��� ���������� �������!';
                                  bError:=True;
                                end;
                            end;
                          MainForm.ProgressBar1.StepIt;
                          Application.ProcessMessages;
                          if bError then
                            begin
                              Screen.Cursor:=crDefault;
                              MainForm.LogThis(s,GroupGUID,lmtError);
                              MessageBox(Handle,PChar(s),PChar('OA4 - ������!'),MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
                            end;
                        end;
                    end;
                  MainForm.ProgressBar1.Position:=MainForm.ProgressBar1.Min;
                  Screen.Cursor:=crDefault;
                finally
                  FreeMemory(pacCaption);
                  FreeMemory(pacText);
                  RTFStream.Free;
                end;
              end;
          finally
            TSL.Free;
          end;
        end;
      Free;
    end;
end;

procedure TViewPostListForm.btnEraseClick(Sender: TObject);
var
  s, s_msg_id, q: string;
  b, bError: boolean;
  i: integer;
  GroupGUID: string;
begin
  GroupGUID:='{BB095F24-C157-4D43-8062-5178B5C31CDB}';
  bError:=False;
  MainForm.LogThis('������� �������� ���������...',GroupGUID,lmtInfo);
  b:=MessageBox(Handle,PChar('�� ������������� ������ ������� ���������� ���������?'),PChar('OA4 - ������������� ��������'),MB_OKCANCEL+MB_ICONQUESTION+MB_DEFBUTTON2)=IDOK;
  if b then
    begin
      Screen.Cursor:=crHourGlass;
      MainForm.ProgressBar1.Max:=2;
      MainForm.LogThis('�������� ��������� ������������ �������������...',GroupGUID,lmtInfo);
      // ��������� ID ����������� ���������
      s_msg_id:=lvMessages.Selected.SubItems[2];
      MainForm.LogThis('�������� ���������...',GroupGUID,lmtInfo);
      q:='UPDATE '+MainForm.Configuration.sMySQLDatabase+'._msg SET msg_erased="1" WHERE msg_id='+s_msg_id+';';
      MainForm.LogThis(q,GroupGUID,lmtSQL);
      i:=mysql_real_query(MainForm.MySQLConnectionHandler,PChar(q),Length(q));
      if i=0 then
        begin
          MainForm.LogThis('������ �������� �������.',GroupGUID,lmtInfo);
          i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
          if i=1 then
            begin
              MainForm.LogThis('���������� �������� ����� ������������� ���������� (1).',GroupGUID,lmtInfo);
              MainForm.LogThis('��������� ������� �������.',GroupGUID,lmtInfo);
            end
          else
            begin
              s:='���������� ������������ ����� ('+IntToStr(i)+') �� ������������� ���������� (1)!';
              bError:=True;
            end
        end
      else
        begin
          s:='�������� ������ ��� ���������� �������!';
          bError:=True;
        end;
      MainForm.ProgressBar1.StepIt;
      Application.ProcessMessages;
      // ������ ���������� � ��
      if not bError then
        begin
          MainForm.LogThis('�������� ������ � ������� �������.',GroupGUID,lmtInfo);
          q:='INSERT INTO '+MainForm.Configuration.sMySQLDatabase+'._evn VALUES (NULL, NOW(),"DEL","msg",'+s_msg_id+','+MainForm.CurrentUser.sID+','+#39+q+#39+');';
          MainForm.LogThis(q,GroupGUID,lmtSQL);
          i:=mysql_real_query(MainForm.MySQLConnectionHandler,PChar(q),Length(q));
          if i=0 then
            begin
              MainForm.LogThis('������ �������� �������.',GroupGUID,lmtInfo);
              i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
              MainForm.LogThis('���������� ������������ ����� ����� '+IntToStr(i)+'.',GroupGUID,lmtInfo);
              if (i=1) then
                MainForm.LogThis('������ � ������� ������� ������� �������',GroupGUID,lmtInfo)
              else
                begin
                  s:='���������� ������������ ����� ('+IntToStr(i)+') �� ������������� ���������� (1)!';
                  bError:=True;
                end;
            end
          else
            begin
              s:='�������� ������ ��� ���������� �������!';
              bError:=True;
            end;
        end;
      MainForm.ProgressBar1.StepIt;
      Application.ProcessMessages;
      MainForm.ProgressBar1.Position:=MainForm.ProgressBar1.Min;
      Screen.Cursor:=crDefault;
      if bError then
        begin
          MainForm.LogThis(s,GroupGUID,lmtError);
          MessageBox(Handle,PChar(s),PChar('OA4 - ������!'),MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
        end
      else
        begin
          lvMessages.Selected.Delete;
          btnView.Enabled:=(lvMessages.Items.Count>0) and (lvMessages.ItemIndex>=0);
          btnErase.Enabled:=(lvMessages.Items.Count>0) and (lvMessages.ItemIndex>=0);
        end;
    end
  else MainForm.LogThis('�������� ��������� �������� �������������...',GroupGUID,lmtInfo);
end;

procedure TViewPostListForm.btnViewClick(Sender: TObject);
var
  mr: TModalResult;
  s, q: string;
  bError: boolean;
  i: integer;
  ResultSet: PMYSQL_RES;
  ResultRow: PMYSQL_ROW;
  GroupGUID: string;
begin
  GroupGUID:='{A7A88547-1E24-443E-A15D-A40C837214C7}';
  bError:=False;
  ResultSet:=nil;
  MainForm.LogThis('������� �������� ���� ��������� ���������...',GroupGUID,lmtInfo);
  with TCreateViewPostForm.Create(Owner) do
    try
      Screen.Cursor:=crHourGlass;
      ilPost.GetIcon(lvMessages.Selected.ImageIndex,Icon);
      Caption:='OA4 - �������� ���������';
      Hint:='���� ��������� ���������';
      pnlID.Visible:=MainForm.Configuration.bShowID;
      lblTo.Visible:=False;
      cmbbxTo.Visible:=False;
      edbxCaption.ReadOnly:=True;
      meMessage.ReadOnly:=True;
      pnlCreation.Visible:=True;
      btnClear.Visible:=False;
      btnProcess.Visible:=True;
      btnErase.Visible:=True;
      btnSend.Visible:=False;
      edbxCaption.Width:=meMessage.Width;
      btnClose.Default:=True;
      btnHelp.Enabled:=Application.HelpFile<>'';
      if btnNext.Visible then
        ActiveControl:=btnNext
      else
        ActiveControl:=btnClose;
      // ��������� ID ����������� ���������
      s:=lvMessages.Selected.SubItems[2];
      MainForm.LogThis('�������� ���������...',GroupGUID,lmtInfo);
      q:='SELECT msg_id, msg_processed, msg_caption, msg_text, msg_created_at, usr_fullname FROM '+MainForm.Configuration.sMySQLDatabase+'._msg LEFT JOIN '+MainForm.Configuration.sMySQLDatabase+'._usr ON usr_id=msg_created_by_user_id WHERE msg_id='+s+';';
      MainForm.LogThis(q,GroupGUID,lmtSQL);
      i:=mysql_real_query(MainForm.MySQLConnectionHandler,PChar(q),Length(q));
      if i=0 then
        begin
          MainForm.LogThis('������ �������� �������.',GroupGUID,lmtInfo);
          ResultSet:=mysql_store_result(MainForm.MySQLConnectionHandler);
          if ResultSet<>nil then
            begin
              MainForm.LogThis('�������������� ������� �������� �������.',GroupGUID,lmtInfo);
              i:=mysql_num_rows(ResultSet);
              if i>=0 then
                begin
                  MainForm.LogThis('���������� ����� ������� ����� '+IntToStr(i)+'.',GroupGUID,lmtInfo);
                  if i=1 then
                    begin
                      MainForm.ProgressBar1.Max:=i;
                      ResultRow:=mysql_fetch_row(ResultSet);
                      if ResultRow<>nil then
                        begin
                          MainForm.LogThis('�������� ��������� ������ ������� ������ �������.',GroupGUID,lmtInfo);
                          lblPostID.Caption:=ResultRow[0];
                          btnProcess.Enabled:=ResultRow[1]='0';
                          edbxCaption.Text:=ResultRow[2];
                          meMessage.Text:=ResultRow[3];
                          lblPostCreatedAtBy.Caption:=ResultRow[5]+', '+ResultRow[4];
                        end
                      else
                        begin
                          s:='�������� ������ ��� �������� ������ ������ ������� (���������� ����� ������ ����� '+IntToStr(i)+')!';
                          bError:=True;
                        end;
                      MainForm.ProgressBar1.StepIt;
                    end
                  else
                    begin
                      s:='���������� ����� ������� ('+IntToStr(i)+')�� ������������� ���������� (1)!';
                      bError:=True;
                    end;
                end
              else
                begin
                  s:='� ������� �� ����������������� �� ������ ������������ � ������ �������!';
                  bError:=True;
                end;
            end
          else
            begin
              s:='�� ������� �������� �������������� ������� �� ���������� SQL-�������!';
              bError:=True;
            end;
        end
      else
        begin
          s:='�������� ������ ��� ���������� �������!';
          bError:=True;
        end;
      if ResultSet<>nil then
        begin
          MainForm.LogThis('������������ ��������, ������� ����������� �������.',GroupGUID,lmtInfo);
          mysql_free_result(ResultSet);
        end;
      MainForm.ProgressBar1.Position:=MainForm.ProgressBar1.Min;
      Screen.Cursor:=crDefault;
      if bError then
        begin
          MainForm.LogThis(s,GroupGUID,lmtError);
          MessageBox(Handle,PChar(s),PChar('OA4 - ������!'),MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
        end;
      if MainForm.Configuration.fpCreateViewPostForm.bCenter then
        Position:=poScreenCenter
      else
        begin
          Position:=poDesigned;
          Top:=MainForm.Configuration.fpCreateViewPostForm.y;
          Left:=MainForm.Configuration.fpCreateViewPostForm.x;
        end;
      if bError=False then
        ShowModal;
    finally
      MainForm.Configuration.fpCreateViewPostForm.y:=Top;
      MainForm.Configuration.fpCreateViewPostForm.x:=Left;
      if bError=False then
        begin
          mr:=ModalResult;
          if mr=mrOk then // ���� ������ ���� �������, ������ ����� ����� ��������� mrOk
            begin
              MainForm.LogThis('���������� ������ ��������� ����� ��������� �������� ��������� ���������.',GroupGUID,lmtInfo);
              lvMessages.Selected.Delete;
              btnView.Enabled:=(lvMessages.Items.Count>0) and (lvMessages.ItemIndex>=0);
              btnErase.Enabled:=(lvMessages.Items.Count>0) and (lvMessages.ItemIndex>=0);
            end;
          if mr=mrYes then // ���� ������ ���� ���������, ������ ����� ����� ��������� mrYes
            begin
              MainForm.LogThis('���������� ������ ��������� ����� �������� ������� ��������� ��������� ��� ������������.',GroupGUID,lmtInfo);
              lvMessages.Selected.ImageIndex:=1;
            end;
        end;
      Free;
    end;
end;

procedure TViewPostListForm.FormCreate(Sender: TObject);
begin
  btnHelp.Enabled:=Application.HelpFile<>'';
  btnView.Enabled:=(lvMessages.Items.Count>0) and (lvMessages.ItemIndex>=0);
  btnErase.Enabled:=(lvMessages.Items.Count>0) and (lvMessages.ItemIndex>=0);
end;

procedure TViewPostListForm.lvMessagesDblClick(Sender: TObject);
begin
  if lvMessages.Selected<>nil then
    begin
      if btnView.Visible and btnView.Enabled and btnView.Default then
        btnView.Click;
    end;
end;

procedure TViewPostListForm.lvMessagesSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  btnView.Enabled:=(lvMessages.Items.Count>0) and (lvMessages.ItemIndex>=0);
  btnErase.Enabled:=(lvMessages.Items.Count>0) and (lvMessages.ItemIndex>=0);
  if lvMessages.ItemIndex>=0 then
    lblID.Caption:=lvMessages.Selected.SubItems[2]
  else lblID.Caption:='';
  pnlID.Visible:=MainForm.Configuration.bShowID and (lvMessages.Items.Count>0) and (lvMessages.Selected<>nil);
  if btnView.Enabled then
    begin
      btnClose.Default:=False;
      btnView.Default:=True;
    end
  else
    begin
      btnView.Default:=False;
      btnClose.Default:=True;
    end;
end;

end.
