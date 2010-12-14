unit Phones;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ComCtrls, ExtCtrls, StdCtrls, CheckLst, Buttons, mysql, Main, Grids, ImgList;

type
  TPhonesForm= class(TForm)
    pnlButtons: TPanel;
    btnCreate: TButton;
    btnClose: TButton;
    btnHelp: TButton;
    btnEdit: TButton;
    btnErase: TButton;
    Panel1: TPanel;
    lvPhones: TListView;
    ImageList1: TImageList;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Image2: TImage;
    Label4: TLabel;
    Image3: TImage;
    Image4: TImage;
    Label5: TLabel;
    Image5: TImage;
    Label6: TLabel;
    Image6: TImage;
    Label7: TLabel;
    Image7: TImage;
    Label8: TLabel;
    btnVioceCard: TButton;
    btnConnectionAB: TButton;
    pnlID: TPanel;
    lblIDCaption: TLabel;
    lblID: TLabel;
    Bevel4: TBevel;
    pnlModification: TPanel;
    lblModifiedAtCaption: TLabel;
    lblModifiedAt: TLabel;
    Bevel1: TBevel;
    procedure btnConnectionABClick(Sender: TObject);
    procedure btnVioceCardClick(Sender: TObject);
    procedure lvPhonesKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure lvPhonesDblClick(Sender: TObject);
    procedure lvPhonesCustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure btnEraseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lvPhonesSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure btnEditClick(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
  private
    // bDoubleSpace, bDoublePlus: boolean;
    procedure RefreshPhoneList;
    procedure UpdateState;
    { Private declarations }
    procedure UpdateWithScrollBars;
  public
    { Public declarations }
  end;

var
  PhonesForm: TPhonesForm;

implementation

{$R *.dfm}

uses AddEditPhone;

procedure TPhonesForm.UpdateWithScrollBars;
var
  h: HWND;
  b: boolean;
begin
  b:=lvPhones.Columns.Count>3;
  if b then
    lvPhones.Column[3].Width:=integer(b)*70;
  lvPhones.Column[0].Width:=150;
  lvPhones.Column[1].Width:=160;
  lvPhones.Column[2].Width:=0;

  h:=lvPhones.Handle;
  if (GetWindowLong(h, GWL_STYLE)and WS_VSCROLL)=WS_VSCROLL then
    begin
      lvPhones.Column[2].Width:=lvPhones.Width-lvPhones.Column[0].Width-lvPhones.Column[1].Width-integer(b)*70-(lvPhones.BevelWidth*2)-2-GetSystemMetrics(SM_CXVSCROLL);
    end
  else
    begin
      lvPhones.Column[2].Width:=lvPhones.Width-lvPhones.Column[0].Width-lvPhones.Column[1].Width-integer(b)*70-(lvPhones.BevelWidth*2)-2;
    end;
  lvPhones.FlatScrollBars:=False;
  lvPhones.FlatScrollBars:=True;
end;

procedure TPhonesForm.lvPhonesDblClick(Sender: TObject);
var
  LogGroupGUID: string;
begin
  LogGroupGUID:='{CE795EC0-EE19-470F-9DA5-5EB51F824566}';
  MainForm.ProcedureHeader('��������� ������� �� ������� ������ � ������ ���������', LogGroupGUID, False, True);

  if lvPhones.Selected<>nil then
    begin
      MainForm.LogThis('������� ������ ������ �� �������� ������ ���������. ��������� ���� �������������� ��� ����������� ��������.', LogGroupGUID, lmtInfo);
      if btnEdit.Visible and btnEdit.Enabled then
        btnEdit.Click;
    end
  else
    MainForm.LogThis('������� ������ ������ ���� ��������� ������ ���������.', LogGroupGUID, lmtInfo);

  MainForm.ProcedureFooter(LogGroupGUID, False, True);
end;

procedure TPhonesForm.lvPhonesKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  LogGroupGUID: string;
begin
  LogGroupGUID:='{2C0B1505-CF1F-4908-A9F4-32C6F41CFB52}';
  MainForm.ProcedureHeader('��������� ������� �� ������� ������� ���������� � ������ ���������', LogGroupGUID, False, True);

  if Key=VK_SPACE then
    begin
      MainForm.LogThis('���� ������ ������� ������. ���������� �������� ����������� ������ �������� �� ��������� �����.', LogGroupGUID, lmtInfo);
      btnVioceCard.Click;
    end;

  MainForm.ProcedureFooter(LogGroupGUID, False, True);
end;

procedure TPhonesForm.lvPhonesSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
var
  LogGroupGUID: string;
begin
  LogGroupGUID:='{F65DEF44-63F1-4371-BC68-5F5FE77A0A36}';
  MainForm.ProcedureHeader('��������� ������� �� ��������� ��������� ��������� ������ ���������', LogGroupGUID, False, True);

  UpdateState;

  MainForm.ProcedureFooter(LogGroupGUID, False, True);
end;

procedure TPhonesForm.FormCreate(Sender: TObject);
var
  LogGroupGUID: string;
begin
  LogGroupGUID:='{80089221-46DE-461E-BDE8-1147BAF5D136}';
  MainForm.ProcedureHeader('��������� �������� � ������������� ���� ������ ���������', LogGroupGUID, False, True);

  btnHelp.Enabled:=Application.HelpFile<>'';
  RefreshPhoneList;
  UpdateState;

  MainForm.ProcedureFooter(LogGroupGUID, False, True);
end;

procedure TPhonesForm.FormShow(Sender: TObject);
var
  LogGroupGUID: string;
begin
  LogGroupGUID:='{1ABFFB93-3EF0-4AD2-9CBB-4A5E17A1A475}';
  MainForm.ProcedureHeader('��������� ����������� ���� ������ ���������', LogGroupGUID, False, True);

  pnlModification.Visible:=lvPhones.Items.Count>0;
  if lvPhones.Items.Count>0 then
    begin
      MainForm.LogThis('������ ��������� �� ������, �������� ������ ������� � ������ ���������.', LogGroupGUID, lmtInfo);
      lvPhones.Selected:=lvPhones.TopItem;
      lvPhones.ItemFocused:=lvPhones.TopItem;
    end
  else
    MainForm.LogThis('������ ��������� ����.', LogGroupGUID, lmtInfo);
  UpdateWithScrollBars;

  MainForm.ProcedureFooter(LogGroupGUID, False, True);
end;

procedure TPhonesForm.lvPhonesCustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Item<>nil then
    begin
      lvPhones.Canvas.Font.Color:=clWindowText;
      if Item.SubItems.Count>6 then
        begin
          if Item.Caption<>Item.SubItems[7] then
            lvPhones.Canvas.Font.Color:=clRed;
        end
    end;
end;

procedure TPhonesForm.btnEraseClick(Sender: TObject);
var
  s, q: string;
  i, phn_id, phn_otdel_id: integer;
  s_phn_id, s_phn_otdel_id: string;
  bError: boolean;
  ResultSet: PMYSQL_RES;
  ResultRow: PMYSQL_ROW;
  LogGroupGUID: string;
begin
  LogGroupGUID:='{F7993F75-BFC4-48C3-B015-13706DDC9C8F}';
  // ****�������� ��������****
  // ����������� id ������� � �������� minsk.otdel � rne4._phn
  // ����������� ������� �� �������� ������ �� ������� rne4._phn
  // ��� �������� ���������� ������� - ����������� � ���������� ������� �� �������� ������ �� minsk.otdel
  // ���������� ������ ��������� ��� ������ ���������� ���������� ������� ������������ �������
  MainForm.Set_Busy(LogGroupGUID);
  Screen.Cursor:=crHourGlass;
  ResultSet:=nil;
  bError:=False;
  phn_id:=-1;
  phn_otdel_id:=-1;
  q:='';
  // ��������� id ��������� ������ � ��������
  if lvPhones.Selected<>nil then
    begin
      s_phn_id:=lvPhones.Selected.SubItems[6];
      phn_id:=StrToIntDef(s_phn_id, -1);
      if phn_id>-1 then
        q:='SELECT phn_otdel_id FROM '+MainForm.Configuration.sMySQLDatabase+'._phn WHERE phn_id='+IntToStr(phn_id)+';' // ������ �� ��������� id ������, ������� ����� ������� �� ������� minsk.otdel
      else
        begin
          s:='�������� ������ � �������� ��������� ID ��������� ������ � ���������� ������!';
          bError:=True;
        end;
    end
  else
    begin
      s:='�������� ������ � �������� ����������� ��������� ������ � ���������� ������!';
      bError:=True;
    end;
  if not bError then
    begin
      MainForm.LogThis(q, LogGroupGUID, lmtSQL);
      i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
      if i=0 then
        begin
          MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
          ResultSet:=mysql_store_result(MainForm.MySQLConnectionHandler);
          if ResultSet<>nil then
            begin
              MainForm.LogThis('�������������� ������� �������� �������.', LogGroupGUID, lmtInfo);
              i:=mysql_num_rows(ResultSet);
              MainForm.LogThis('���������� ����� ������� ����� '+IntToStr(i)+'.', LogGroupGUID, lmtInfo);
              if (i>=0) then
                begin
                  if i=1 then
                    begin
                      MainForm.LogThis('���������� ����� ���������� ������� ������������� ���������� (1).', LogGroupGUID, lmtInfo);
                      ResultRow:=mysql_fetch_row(ResultSet);
                      if ResultRow<>nil then
                        begin
                          s_phn_otdel_id:=string(ResultRow[0]);
                          phn_otdel_id:=StrToIntDef(s_phn_otdel_id, -1);
                          if phn_otdel_id=-1 then
                            begin
                              s:='�������� ������ � �������� ��������� ID ������, ��������� �� ������� minsk.otdel!';
                              bError:=True;
                            end;
                        end
                      else
                        begin
                          s:='�������� ������ ��� �������� ������ ������ �������!';
                          bError:=True;
                        end;
                    end
                  else
                    begin
                      s:='�������� ������������ ���������� ����� �������������� ������� ('+IntToStr(i)+')!';
                      bError:=True;
                    end;
                end
              else
                begin
                  s:='�������� ������������ ���������� ����� �������������� ������� ('+IntToStr(i)+')!';
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
          MainForm.LogThis('������������ ��������, ������� ����������� �������...', LogGroupGUID, lmtInfo);
          mysql_free_result(ResultSet);
        end;
    end;
  // ������� �������������� id ��������� ������� � ���������� phn_id � phn_otdel_id, ��������� ��������������� ��������� ��������
  if not bError then
    begin
      q:='DELETE FROM '+MainForm.Configuration.sMySQLDatabase+'._phn WHERE phn_id='+IntToStr(phn_id)+';';
      MainForm.LogThis(q, LogGroupGUID, lmtSQL);
      i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
      if i=0 then
        begin
          MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
          i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
          if i=1 then
            MainForm.LogThis('���������� �������� ����� ������������� ���������� (1).', LogGroupGUID, lmtInfo)
          else
            begin
              s:='���������� �������� ����� ('+IntToStr(i)+') �� ������������� ���������� (1)!';
              bError:=True;
            end
        end
      else
        begin
          s:='�������� ������ ��� ���������� �������!';
          bError:=True;
        end;
    end;
  if not bError then
    begin
      q:='DELETE FROM minsk.otdel WHERE otdel_id='+IntToStr(phn_otdel_id)+';';
      MainForm.LogThis(q, LogGroupGUID, lmtSQL);
      i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
      if i=0 then
        begin
          MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
          i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
          if i=1 then
            MainForm.LogThis('���������� �������� ����� ������������� ���������� (1).', LogGroupGUID, lmtInfo)
          else
            begin
              s:='���������� �������� ����� ('+IntToStr(i)+') �� ������������� ���������� (1)!';
              bError:=True;
            end
        end
      else
        begin
          s:='�������� ������ ��� ���������� �������!';
          bError:=True;
        end;
    end;
  // ������ ���������� � ��
  if not bError then
    begin
      MainForm.LogThis('�������� ������ � ������� �������.', LogGroupGUID, lmtInfo);
      q:='INSERT INTO '+MainForm.Configuration.sMySQLDatabase+'._evn VALUES (NULL, NOW(),"DEL","phn",'+IntToStr(phn_id)+','+MainForm.CurrentUser.sID+','+#39+q+#39+');';
      MainForm.LogThis(q, LogGroupGUID, lmtSQL);
      i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
      if i=0 then
        begin
          MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
          i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
          MainForm.LogThis('���������� ������������ ����� ����� '+IntToStr(i)+'.', LogGroupGUID, lmtInfo);
          if (i=1) then
            MainForm.LogThis('������ � ������� ������� ������� �������', LogGroupGUID, lmtInfo)
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
  Screen.Cursor:=crDefault;
  if bError then
    begin
      MainForm.LogThis(s, LogGroupGUID, lmtError);
      MessageBox(Handle, PChar(s), PChar('OA4 - ������!'), MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
    end;
  RefreshPhoneList;
  UpdateState;
  MainForm.Set_Ready(LogGroupGUID);
end;

procedure TPhonesForm.btnCreateClick(Sender: TObject);
var
  mr: TModalResult;
  q, s, s_house_sym, s_subhouse_sym, s_flat_sym, s_phn_owner_id: string;
  i, iLastID, i_firm_code, i_city_id, i_street_id, i_house_num, i_subhouse_num, i_flat_num, i_phn_owner_id, i_otdel_id: integer;
  bError: boolean;
  ResultSet: PMYSQL_RES;
  ResultRow: PMYSQL_ROW;
  LogGroupGUID: string;
begin
  LogGroupGUID:='{55B7B849-6563-40A8-AB25-C75F9454F8D4}';
  MainForm.LogThis('������� �������� ���� ���������� ��������...', LogGroupGUID, lmtInfo);
  bError:=False;
  ResultSet:=nil;
  s_house_sym:='';
  s_subhouse_sym:='';
  s_flat_sym:='';
  i_firm_code:=-1;
  i_city_id:=-1;
  i_street_id:=-1;
  i_house_num:=-1;
  i_subhouse_num:=-1;
  i_flat_num:=-1;
  i_phn_owner_id:=-1;
  i_otdel_id:=-1;
  iLastID:=-1;
  with TAddEditPhoneForm.Create(Owner) do
    try
      MainForm.ImageList2.GetIcon(ICON_PHONES, Icon);
      Caption:='OA4 - ���������� ��������';
      pnlModification.Visible:=False;
      pnlID.Visible:=False;
      btnHelp.Enabled:=Application.HelpFile<>'';
      Hint:='���� ���������� ��������';
      if MainForm.Configuration.fpAddEditPhoneForm.bCenter then
        Position:=poScreenCenter
      else
        begin
          Position:=poDesigned;
          Top:=MainForm.Configuration.fpAddEditPhoneForm.y;
          Left:=MainForm.Configuration.fpAddEditPhoneForm.x;
        end;
      ShowModal;
    finally
      mr:=ModalResult;
      MainForm.Configuration.fpAddEditPhoneForm.y:=Top;
      MainForm.Configuration.fpAddEditPhoneForm.x:=Left;
      if mr=mrOk then
        begin
          MainForm.Set_Busy(LogGroupGUID);
          Screen.Cursor:=crHourGlass;
          mePhoneComments.Text:=ValidateString(mePhoneComments.Text);
          // edbxPhoneNumber.Text;
          // cmbbxPhoneType.Text;
          // dtpPhoneCompared.Date;
          // ��������� �������� ���� ����� � ������������
          if MainForm.PageControl1.ActivePage=MainForm.tsOrg then
            begin
              if MainForm.lvOrg.Selected<>nil then
                begin
                  s_phn_owner_id:=MainForm.lvOrg.Selected.SubItems[2];
                  i_phn_owner_id:=StrToIntDef(s_phn_owner_id, -1);
                  if i_phn_owner_id>-1 then
                    begin
                      q:='SELECT firm_code, city_id, street_id, house_num, house_sym, subhouse_num, subhouse_sym, flat_num, flat_sym '+'FROM '+MainForm.Configuration.sMySQLDatabase+
                        '._org LEFT JOIN minsk.firma ON firm_code=org_firm_code WHERE org_id='+IntToStr(i_phn_owner_id)+';';
                    end
                  else
                    begin
                      s:='�������� ������ � �������� ��������� ID �����������-���������!';
                      bError:=True;
                    end;
                end
              else
                begin
                  s:='�������� ������ � �������� ����������� �����������-���������!';
                  bError:=True;
                end;
            end;
          if MainForm.PageControl1.ActivePage=MainForm.tsMsr then
            begin
              if MainForm.lvMsr.Selected<>nil then
                begin
                  s_phn_owner_id:=MainForm.lvMsr.Selected.SubItems[2];
                  i_phn_owner_id:=StrToIntDef(s_phn_owner_id, -1);
                  if i_phn_owner_id>-1 then
                    begin
                      q:='SELECT firm_code, city_id, street_id, house_num, house_sym, subhouse_num, subhouse_sym, flat_num, flat_sym '+'FROM '+MainForm.Configuration.sMySQLDatabase+'._msr LEFT JOIN '+MainForm.Configuration.sMySQLDatabase+
                        '._org ON org_id=msr_organization_id LEFT JOIN minsk.firma ON firm_code=org_firm_code WHERE msr_id='+IntToStr(i_phn_owner_id)+';';
                    end
                  else
                    begin
                      s:='�������� ������ � �������� ��������� ID �����������-���������!';
                      bError:=True;
                    end;
                end
              else
                begin
                  s:='�������� ������ � �������� ����������� �����������-���������!';
                  bError:=True;
                end;
            end;
          // ��������� ��������, ����������� ��� ����������� ������� �� ���������� ��������
          if not bError then
            begin
              MainForm.LogThis(q, LogGroupGUID, lmtSQL);
              i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
              if i=0 then
                begin
                  MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
                  ResultSet:=mysql_store_result(MainForm.MySQLConnectionHandler);
                  if ResultSet<>nil then
                    begin
                      MainForm.LogThis('�������������� ������� �������� �������.', LogGroupGUID, lmtInfo);
                      i:=mysql_num_rows(ResultSet);
                      MainForm.LogThis('���������� ����� ������� ����� '+IntToStr(i)+'.', LogGroupGUID, lmtInfo);
                      if (i>=0) then
                        begin
                          if i=1 then
                            begin
                              MainForm.LogThis('���������� ����� ���������� ������� ������������� ���������� (1).', LogGroupGUID, lmtInfo);
                              ResultRow:=mysql_fetch_row(ResultSet);
                              if ResultRow<>nil then
                                begin
                                  i_firm_code:=StrToIntDef(string(ResultRow[0]), -1); // firm_code
                                  i_city_id:=StrToIntDef(string(ResultRow[1]), -1); // city_id
                                  i_street_id:=StrToIntDef(string(ResultRow[2]), -1); // street_id
                                  i_house_num:=StrToIntDef(string(ResultRow[3]), -1); // house_num
                                  s_house_sym:=string(ResultRow[4]); // house_sym
                                  i_subhouse_num:=StrToIntDef(string(ResultRow[5]), -1); // subhouse_num
                                  s_subhouse_sym:=string(ResultRow[6]); // subhouse_sym
                                  i_flat_num:=StrToIntDef(string(ResultRow[7]), -1); // flat_num
                                  s_flat_sym:=string(ResultRow[8]); // flat_sym
                                  if i_firm_code=-1 then
                                    begin
                                      s:='�������� ������ � �������� ��������� id ������ � ������� minsk.firma!';
                                      bError:=True;
                                    end
                                  else
                                    if i_city_id=-1 then
                                      begin
                                        s:='�������� ������ � �������� ��������� id ������ �� ������� minsk.firma!';
                                        bError:=True;
                                      end
                                    else
                                      if i_street_id=-1 then
                                        begin
                                          s:='�������� ������ � �������� ��������� id ����� �� ������� minsk.firma!';
                                          bError:=True;
                                        end
                                      else
                                        if i_house_num=-1 then
                                          begin
                                            s:='�������� ������ � �������� ��������� �������� ����� ������ ���� �� ������� minsk.firma!';
                                            bError:=True;
                                          end
                                        else
                                          if i_subhouse_num=-1 then
                                            begin
                                              s:='�������� ������ � �������� ��������� �������� ����� ������ ������� �� ������� minsk.firma!';
                                              bError:=True;
                                            end
                                          else
                                            if i_flat_num=-1 then
                                              begin
                                                s:='�������� ������ � �������� ��������� �������� ����� ������ �������� �� ������� minsk.firma!';
                                                bError:=True;
                                              end;
                                end
                              else
                                begin
                                  s:='�������� ������ ��� �������� ������ ������ �������!';
                                  bError:=True;
                                end;
                            end
                          else
                            begin
                              s:='�������� ������������ ���������� ����� �������������� ������� ('+IntToStr(i)+')!';
                              bError:=True;
                            end;
                        end
                      else
                        begin
                          s:='�������� ������������ ���������� ����� �������������� ������� ('+IntToStr(i)+')!';
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
                  MainForm.LogThis('������������ ��������, ������� ����������� �������...', LogGroupGUID, lmtInfo);
                  mysql_free_result(ResultSet);
                end;
            end;
          // ������� ������ � ������� minsk.otdel
          if not bError then
            begin
              q:='INSERT INTO minsk.otdel '+'(otdel_id, firm_code, name, phone, state, type_phone, city_id, street_id, '+'sort_level, grp, house_num, house_sym, subhouse_num, subhouse_sym, flat_num, '+
                'flat_sym, comment, ext_comment, work, oper, date) VALUES '+'(NULL, '+ // otdel_id
                IntToStr(i_firm_code)+', '+ // firm_code
                'NULL, '+ // name
                '"'+Trim(edbxPhoneNumber.Text)+'", '+ // phone
                '"1", '+ // state
                '"!R", '+ // type_phone
                IntToStr(i_city_id)+', '+ // city_id
                IntToStr(i_street_id)+', '+ // street_id
                '0, '+ // sort_level
                '0, '+ // grp
                IntToStr(i_house_num)+', '+ // house_num
                NormalizeStringForQuery(s_house_sym, True, False)+', '+ // house_sym
                IntToStr(i_subhouse_num)+', '+ // subhouse_num
                NormalizeStringForQuery(s_subhouse_sym, True, False)+', '+ // subhouse_sym
                IntToStr(i_flat_num)+', '+ // flat_num
                NormalizeStringForQuery(s_flat_sym, True, False)+', '+ // flat_sym
                '"", '+ // comment
                'NULL, '+ // ext_comment
                'NULL, '+ // work
                '0, '+ // oper
                'NOW());'; // date
              MainForm.LogThis(q, LogGroupGUID, lmtSQL);
              i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
              if i=0 then
                begin
                  MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
                  iLastID:=mysql_insert_id(MainForm.MySQLConnectionHandler); // ���������� ID ����������� ������
                  i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
                  if i=1 then
                    begin
                      MainForm.LogThis('���������� ����� ������ � ������� minsk.otdel ����������� �������', LogGroupGUID, lmtInfo);
                      i_otdel_id:=iLastID;
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
            end;
          // ������� ������ � ������� _phn
          if not bError then
            begin
              q:='INSERT INTO '+MainForm.Configuration.sMySQLDatabase+'._phn '+'(phn_id, phn_priority, _phn_phone, phn_otdel_id, phn_type, phn_comments, phn_compared, '+
                'phn_owner_id, phn_owner_is_measure, phn_modified_at, phn_modified_by_user_id) VALUES '+'(NULL, '+ // phn_id
                Trim(edbxPhonePriority.Text)+', '+ // phn_priority
                '"'+Trim(edbxPhoneNumber.Text)+'", '+ // _phn_phone
                IntToStr(i_otdel_id)+', '+ // phn_otdel_id
                '"'+cmbbxPhoneType.Text+'", '+ // phn_type
                NormalizeStringForQuery(mePhoneComments.Text, True, True)+', '+ // phn_comments
                '"'+FormatDateTime('yyyy-mm-dd', dtpPhoneCompared.Date)+'", '+ // phn_compared
                IntToStr(i_phn_owner_id)+', '+ // phn_owner_id
                '"'+IntToStr(Integer(MainForm.PageControl1.ActivePage=MainForm.tsMsr))+'", '+ // phn_owner_is_measure
                'NOW(), '+ // phn_modified_at
                MainForm.CurrentUser.sID+');'; // phn_modified_by_user_id
              MainForm.LogThis(q, LogGroupGUID, lmtSQL);
              i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
              if i=0 then
                begin
                  MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
                  iLastID:=mysql_insert_id(MainForm.MySQLConnectionHandler); // ���������� ID ����������� ������
                  i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
                  if i=1 then
                    MainForm.LogThis('���������� ����� ������ � ������� _phn ����������� �������', LogGroupGUID, lmtInfo)
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
            end;
          // ������ ���������� � ��
          if not bError then
            begin
              MainForm.LogThis('�������� ������ � ������� �������.', LogGroupGUID, lmtInfo);
              q:='INSERT INTO '+MainForm.Configuration.sMySQLDatabase+'._evn VALUES (NULL, NOW(),"INS","phn",'+IntToStr(iLastID)+','+MainForm.CurrentUser.sID+','+#39+q+#39+');';
              MainForm.LogThis(q, LogGroupGUID, lmtSQL);
              i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
              if i=0 then
                begin
                  MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
                  i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
                  MainForm.LogThis('���������� ������������ ����� ����� '+IntToStr(i)+'.', LogGroupGUID, lmtInfo);
                  if (i=1) then
                    MainForm.LogThis('������ � ������� ������� ������� �������', LogGroupGUID, lmtInfo)
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
          Screen.Cursor:=crDefault;
          if bError then
            begin
              MainForm.LogThis(s, LogGroupGUID, lmtError);
              MessageBox(Handle, PChar(s), PChar('OA4 - ������!'), MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
            end;
          RefreshPhoneList;
          UpdateState;
          MainForm.Set_Ready(LogGroupGUID);
        end;
      Free;
    end;
end;

procedure TPhonesForm.btnEditClick(Sender: TObject);
var
  mr: TModalResult;
  bError: boolean;
  i, i_phn_id, i_phn_otdel_id, i_phn_priority: integer;
  s_phn_id, s_phone, s_phn_type, s_phn_compared, s_phn_comments: string;
  q, s: string;
  ResultSet: PMYSQL_RES;
  ResultRow: PMYSQL_ROW;
  LogGroupGUID: string;
begin
  LogGroupGUID:='{55B89CFF-3862-48A8-B4AA-3D520ED288CB}';
  MainForm.LogThis('������� �������� ���� ��������� ��������...', LogGroupGUID, lmtInfo);
  bError:=False;
  ResultSet:=nil;
  i_phn_id:=-1;
  i_phn_otdel_id:=-1;
  i_phn_priority:=0;
  with TAddEditPhoneForm.Create(Owner) do
    try
      MainForm.ImageList2.GetIcon(ICON_PHONES, Icon);
      Caption:='OA4 - ��������� ��������';
      pnlModification.Visible:=True;
      pnlID.Visible:=MainForm.Configuration.bShowID;
      // ������ ������ �� �� � ���������� ����� �����
      if lvPhones.Selected<>nil then
        begin
          s_phn_id:=lvPhones.Selected.SubItems[6];
          i_phn_id:=StrToIntDef(s_phn_id, -1);
          if i_phn_id>-1 then
            q:='SELECT phone, phn_type, date_format(phn_compared,"%d.%m.%Y"), phn_comments, phn_otdel_id, '+'date_format(phn_modified_at,"%d.%m.%Y %T"), usr_fullname, phn_priority FROM '+MainForm.Configuration.sMySQLDatabase+'._phn '+
              'LEFT JOIN minsk.otdel ON otdel_id=phn_otdel_id '+'LEFT JOIN '+MainForm.Configuration.sMySQLDatabase+'._usr ON usr_id=phn_modified_by_user_id WHERE phn_id='+IntToStr(i_phn_id)+';' // ������ �� ��������� ������ ��� ���������� ����� �����
          else
            begin
              s:='�������� ������ � �������� ��������� ������ ���������� ������ � ���������� ������!';
              bError:=True;
            end;
        end
      else
        begin
          s:='�������� ������ � �������� ����������� ���������� ������ � ���������� ������!';
          bError:=True;
        end;
      if not bError then
        begin
          MainForm.LogThis(q, LogGroupGUID, lmtSQL);
          i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
          if i=0 then
            begin
              MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
              ResultSet:=mysql_store_result(MainForm.MySQLConnectionHandler);
              if ResultSet<>nil then
                begin
                  MainForm.LogThis('�������������� ������� �������� �������.', LogGroupGUID, lmtInfo);
                  i:=mysql_num_rows(ResultSet);
                  MainForm.LogThis('���������� ����� ������� ����� '+IntToStr(i)+'.', LogGroupGUID, lmtInfo);
                  if (i>=0) then
                    begin
                      if i=1 then
                        begin
                          MainForm.LogThis('���������� ����� ���������� ������� ������������� ���������� (1).', LogGroupGUID, lmtInfo);
                          ResultRow:=mysql_fetch_row(ResultSet);
                          if ResultRow<>nil then
                            begin
                              s_phone:=string(ResultRow[0]); // phone
                              s_phn_type:=string(ResultRow[1]); // phn_type
                              s_phn_compared:=string(ResultRow[2]); // phn_compared
                              s_phn_comments:=string(ResultRow[3]); ; // phn_comments
                              i_phn_otdel_id:=StrToIntDef(string(ResultRow[4]), -1); // phn_otdel_id
                              i_phn_priority:=StrToIntDef(string(ResultRow[7]), 0); // phn_priority
                              lblPhoneModifiedAt.Caption:=string(ResultRow[6])+', '+string(ResultRow[5]);
                              if pnlID.Visible then
                                lblPhoneID.Caption:=IntToStr(i_phn_id);
                            end
                          else
                            begin
                              s:='�������� ������ ��� �������� ������ ������ �������!';
                              bError:=True;
                            end;
                        end
                      else
                        begin
                          s:='�������� ������������ ���������� ����� �������������� ������� ('+IntToStr(i)+')!';
                          bError:=True;
                        end;
                    end
                  else
                    begin
                      s:='�������� ������������ ���������� ����� �������������� ������� ('+IntToStr(i)+')!';
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
              MainForm.LogThis('������������ ��������, ������� ����������� �������...', LogGroupGUID, lmtInfo);
              mysql_free_result(ResultSet);
            end;
        end;
      if not bError then
        begin
          edbxPhoneNumber.Text:=s_phone;
          cmbbxPhoneType.ItemIndex:=cmbbxPhoneType.Items.IndexOf(s_phn_type);
          dtpPhoneCompared.Date:=StrToDate(s_phn_compared);
          edbxPhonePriority.Text:=IntToStr(i_phn_priority);
          mePhoneComments.Text:=s_phn_comments;
          btnHelp.Enabled:=Application.HelpFile<>'';
          Hint:='���� ��������� ��������';
          if MainForm.Configuration.fpAddEditPhoneForm.bCenter then
            Position:=poScreenCenter
          else
            begin
              Position:=poDesigned;
              Top:=MainForm.Configuration.fpAddEditPhoneForm.y;
              Left:=MainForm.Configuration.fpAddEditPhoneForm.x;
            end;
          ShowModal;
        end;
    finally
      mr:=ModalResult;
      MainForm.Configuration.fpAddEditPhoneForm.y:=Top;
      MainForm.Configuration.fpAddEditPhoneForm.x:=Left;
      if mr=mrOk then
        begin
          // �������� �������� ���������
          MainForm.Set_Busy(LogGroupGUID);
          Screen.Cursor:=crHourGlass;
          mePhoneComments.Text:=ValidateString(mePhoneComments.Text);
          if i_phn_otdel_id>-1 then
            q:='UPDATE minsk.otdel SET '+'phone="'+Trim(edbxPhoneNumber.Text)+'", '+'date=NOW() '+'WHERE otdel_id='+IntToStr(i_phn_otdel_id)+';'
          else
            begin
              s:='�������� ������ � �������� ��������� �������������� ���������� ������ � ������� minsk.otdel!';
              bError:=True;
            end;
          if not bError then
            begin
              MainForm.LogThis(q, LogGroupGUID, lmtSQL);
              i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
              if i=0 then
                begin
                  MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
                  i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
                  if i=1 then
                    MainForm.LogThis('��������� ������ � ������� minsk.otdel ����������� �������', LogGroupGUID, lmtInfo)
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
            end;
          if not bError then
            begin
              q:='UPDATE '+MainForm.Configuration.sMySQLDatabase+'._phn SET '+'_phn_phone="'+Trim(edbxPhoneNumber.Text)+'", '+'phn_priority="'+edbxPhonePriority.Text+'", '+'phn_type="'+cmbbxPhoneType.Text+'", '+'phn_comments='+NormalizeStringForQuery
                (mePhoneComments.Text, True, True)+', '+'phn_compared="'+FormatDateTime('yyyy-mm-dd', dtpPhoneCompared.Date)+'", '+'phn_modified_at=NOW(), '+'phn_modified_by_user_id='+MainForm.CurrentUser.sID+' '+'WHERE phn_id='+IntToStr(i_phn_id)
                +';';
              MainForm.LogThis(q, LogGroupGUID, lmtSQL);
              i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
              if i=0 then
                begin
                  MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
                  i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
                  if i=1 then
                    MainForm.LogThis('��������� ������ � ������� _phn ����������� �������', LogGroupGUID, lmtInfo)
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
            end;
          // ������ ���������� � ��
          if not bError then
            begin
              MainForm.LogThis('�������� ������ � ������� �������.', LogGroupGUID, lmtInfo);
              q:='INSERT INTO '+MainForm.Configuration.sMySQLDatabase+'._evn VALUES (NULL, NOW(),"MOD","phn",'+IntToStr(i_phn_id)+','+MainForm.CurrentUser.sID+','+#39+q+#39+');';
              MainForm.LogThis(q, LogGroupGUID, lmtSQL);
              i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
              if i=0 then
                begin
                  MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
                  i:=mysql_affected_rows(MainForm.MySQLConnectionHandler);
                  MainForm.LogThis('���������� ������������ ����� ����� '+IntToStr(i)+'.', LogGroupGUID, lmtInfo);
                  if (i=1) then
                    MainForm.LogThis('������ � ������� ������� ������� �������', LogGroupGUID, lmtInfo)
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
          Screen.Cursor:=crDefault;
          if bError then
            begin
              MainForm.LogThis(s, LogGroupGUID, lmtError);
              MessageBox(Handle, PChar(s), PChar('OA4 - ������!'), MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
            end;
          RefreshPhoneList;
          UpdateState;
          MainForm.Set_Ready(LogGroupGUID);
        end;
      Free;
    end;
end;

procedure TPhonesForm.btnVioceCardClick(Sender: TObject);
var
  bError: boolean;
  s, s_phone_num, sParameter: string;
  hTargetWnd: HWND;
  aCopyData: TCopyDataStruct;
  LogGroupGUID: string;
begin
  LogGroupGUID:='{DC6F945F-D99D-40A7-A0A2-06E3C2415CA0}';
  MainForm.ProcedureHeader('��������� ������� �� ������� ������ �������� ������ �������� �� ��������� �����', LogGroupGUID, True, True);

  bError:=False;
  if lvPhones.Selected<>nil then
    begin
      MainForm.ProgressBar1.Max:=1;
      MainForm.ProgressBar1.Position:=MainForm.ProgressBar1.Min;
      Application.ProcessMessages;
      // ������� �������� ������ � ���������-����������
      if not bError then
        begin
          s_phone_num:= // �������� ��������� �� ��������-������������ ������ � ������� ��������
            StringReplace(StringReplace(lvPhones.Selected.Caption, '+', '', [rfReplaceAll]), // �� ������ �����
            ' ', '', [rfReplaceAll]); // ������� �� ��������
          if s_phone_num>'' then
            begin
              // hTargetWnd:=FindWindow('TMainForm','OA4');
              hTargetWnd:=FindWindowEx(0, 0, nil, PChar('���������� - BaseInfo'));
              if hTargetWnd<>0 then
                begin
                  sParameter:=IntToStr(INFO_GET_PRONOUNCE_PHONE)+':'+s_phone_num;
                  with aCopyData do
                    begin
                      dwData:=0;
                      cbData:=StrLen(PChar(sParameter))+1;
                      lpData:=PChar(sParameter);
                    end;
                  SendMessage(hTargetWnd, WM_COPYDATA, Longint(Handle), Longint(@aCopyData));
                  MainForm.LogThis('��� �������� ������ �� ��������� ����� ���� ����������� �������� �� ������� ��������� ��������� ������ ������: ['+sParameter+']', LogGroupGUID, lmtInfo);
                end
              else
                begin
                  s:='���������� ���������� �������� ������ �������� �� ��������� �����, ��� ��� �� ���� ������� ��������-���������� ������!';
                  bError:=True;
                end;
            end
          else
            begin
              s:='���������� ���������� �������� ������ �������� �� ��������� �����, ��� ��� ��� ������� ������ ����� ��������!';
              bError:=True;
            end;
          if bError then
            begin
              MainForm.LogThis(s, LogGroupGUID, lmtError);
              Screen.Cursor:=crDefault;
              Application.ProcessMessages;
              MessageBox(Handle, PChar(s), PChar('OA4 - ������!'), MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
            end
          else
            begin
              MainForm.ProgressBar1.StepIt;
              Application.ProcessMessages;
            end;
        end;
      MainForm.ProgressBar1.Position:=MainForm.ProgressBar1.Min;
      Application.ProcessMessages;
    end;

  MainForm.ProcedureFooter(LogGroupGUID, True, True);
end;

procedure TPhonesForm.btnConnectionABClick(Sender: TObject);
var
  bError: boolean;
  s, s_phone_num, sParameter: string;
  hTargetWnd: HWND;
  aCopyData: TCopyDataStruct;
  LogGroupGUID: string;
begin
  LogGroupGUID:='{10DA2DC7-7C38-41C9-BBEB-A676851CFB9C}';
  MainForm.ProcedureHeader('��������� ������� �� ������� ������ ���������� �������� � � ��������� �', LogGroupGUID, True, True);

  bError:=False;
  if lvPhones.Selected<>nil then
    begin
      MainForm.ProgressBar1.Max:=1;
      MainForm.ProgressBar1.Position:=MainForm.ProgressBar1.Min;
      Application.ProcessMessages;
      // ������� �������� ������ � ���������-����������
      if not bError then
        begin
          s_phone_num:= // �������� ��������� �� ��������-������������ ������ � ������� ��������
            StringReplace(StringReplace(lvPhones.Selected.Caption, '+', '', [rfReplaceAll]), // �� ������ �����
            ' ', '', [rfReplaceAll]); // ������� �� ��������
          if s_phone_num>'' then
            begin
              // hTargetWnd:=FindWindow('TMainForm','OA4');
              hTargetWnd:=FindWindowEx(0, 0, nil, PChar('���������� - BaseInfo'));
              if hTargetWnd<>0 then
                begin
                  sParameter:=IntToStr(INFO_GET_CONNECT_PHONE)+':'+s_phone_num;
                  with aCopyData do
                    begin
                      dwData:=0;
                      cbData:=StrLen(PChar(sParameter))+1;
                      lpData:=PChar(sParameter);
                    end;
                  SendMessage(hTargetWnd, WM_COPYDATA, Longint(Handle), Longint(@aCopyData));
                  MainForm.LogThis('��� ���������� �������� � � ��������� � ���� ����������� �������� �� ������� ��������� ��������� ������ ������: ['+sParameter+']', LogGroupGUID, lmtInfo);
                end
              else
                begin
                  s:='���������� ���������� ���������� �������� � � ��������� �, ��� ��� �� ���� ������� ��������-���������� ������!';
                  bError:=True;
                end;
            end
          else
            begin
              s:='���������� ���������� ���������� �������� � � ��������� �, ��� ��� ��� ������� ������ ����� �������� �!';
              bError:=True;
            end;
          if bError then
            begin
              MainForm.LogThis(s, LogGroupGUID, lmtError);
              Screen.Cursor:=crDefault;
              Application.ProcessMessages;
              MessageBox(Handle, PChar(s), PChar('OA4 - ������!'), MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
            end
          else
            begin
              MainForm.ProgressBar1.StepIt;
              Application.ProcessMessages;
            end;
        end;
      MainForm.ProgressBar1.Position:=MainForm.ProgressBar1.Min;
      Application.ProcessMessages;
    end;

  MainForm.ProcedureFooter(LogGroupGUID, True, True);
end;

procedure TPhonesForm.UpdateState;
var
  LogGroupGUID: string;
begin
  LogGroupGUID:='{8AACE1A7-7D60-4062-947E-68250425D296}';
  MainForm.ProcedureHeader('��������� ���������� ��������� ������ ���� ������ ���������', LogGroupGUID, False, False);

  pnlModification.Visible:=(lvPhones.Items.Count>0)and(lvPhones.Selected<>nil);
  pnlID.Visible:=MainForm.Configuration.bShowID and(lvPhones.Items.Count>0)and(lvPhones.Selected<>nil);
  if lvPhones.Selected<>nil then
    begin
      lblModifiedAt.Visible:=lvPhones.Selected<>nil;
      lblModifiedAtCaption.Visible:=lvPhones.Selected<>nil;
      lblModifiedAt.Caption:=lvPhones.Selected.SubItems[4]+', '+lvPhones.Selected.SubItems[3];
      if pnlID.Visible then
        begin
          lblID.Caption:=lvPhones.Selected.SubItems[6];
          lblIDCaption.Visible:=(lvPhones.Selected<>nil);
          lblID.Visible:=(lvPhones.Selected<>nil);
        end;
    end;
  btnEdit.Enabled:=(lvPhones.Items.Count>0)and(lvPhones.ItemIndex>=0);
  btnErase.Enabled:=(lvPhones.Items.Count>0)and(lvPhones.ItemIndex>=0);
  btnVioceCard.Enabled:=(lvPhones.Items.Count>0)and(lvPhones.ItemIndex>=0);
  btnConnectionAB.Enabled:=(lvPhones.Items.Count>0)and(lvPhones.ItemIndex>=0);

  MainForm.ProcedureFooter(LogGroupGUID, False, False);
end;

procedure TPhonesForm.RefreshPhoneList;
var
  s, q: string;
  i, j, owner_id: integer;
  s_owner_id: string;
  bError: boolean;
  ResultSet: PMYSQL_RES;
  ResultRow: PMYSQL_ROW;
  ListItem: TListItem;
  LogGroupGUID: string;
begin
  LogGroupGUID:='{596E2574-AB90-4755-B6CE-A25F360B67A9}';
  MainForm.ProcedureHeader('��������� ���������� ������ ���������', LogGroupGUID, True, True);

  // **** ��������� ������ ��������� ****
  // ����������� �������������� �������� ����������� ���� �����������
  // �������� ������ �� id �����������/�����������-"�������"
  // ����������� ������� �� ������� ��������� �� ������� _phn � ��������������� phn_owner_id
  // ���������� ����������� ������� � ������ � ��������������� �������� ������
  ResultSet:=nil;
  Screen.Cursor:=crHourGlass;
  bError:=False;
  q:='';
  // ���� ������ ���������� ����� ������
  if (MainForm.PageControl1.ActivePage=MainForm.tsOrg)or(MainForm.PageControl1.ActivePage=MainForm.tsMsr) then
    begin

      // ���� ������� ���� ��������� �����������
      if MainForm.PageControl1.ActivePage=MainForm.tsOrg then
        begin
          // �������� ������ �� id �����������-"�������"
          if MainForm.lvOrg.Selected<>nil then
            begin
              s_owner_id:=MainForm.lvOrg.Selected.SubItems[2];
              owner_id:=StrToIntDef(s_owner_id, -1);
              if owner_id>-1 then
                begin
                  // q:='SELECT phn_type, phone, phn_comments, date_format(phn_modified_at,"%d.%m.%Y %T"), '+
                  // 'usr_fullname, date_format(phn_compared,"%d.%m.%Y"), phn_id, _phn_phone, phn_priority '+
                  // 'FROM '+MainForm.Configuration.sMySQLDatabase+'._phn '+
                  // 'LEFT JOIN minsk.otdel ON otdel_id=phn_otdel_id '+
                  // 'LEFT JOIN '+MainForm.Configuration.sMySQLDatabase+'._usr ON usr_id=phn_modified_by_user_id '+
                  // 'WHERE phn_owner_is_measure="0" AND phn_owner_id='+IntToStr(owner_id)+' '+
                  // 'ORDER BY phn_priority, phn_type, phone;';

                  q:='SELECT otdel.phn_owner, '+ // ��� ��������
                    'otdel.phone, '+ // ����� ��������
                    'CONCAT(IFNULL(otdel.name,""), " ", otdel.comment), '+ // �����������
                    'date_format(otdel.date,"%d.%m.%Y %T"), '+ // ���� � ����� �����������
                    'IFNULL(_usr.usr_fullname,"�������������� ������������"), '+ // ������ ����� ��������� ������������ ��������� �����������
                    '"-", '+ // ���� ������
                    'otdel.otdel_id, '+ // ������������� ������
                    'otdel.phone, '+ // ������ ����� ��������
                    'otdel.sort_level '+ // ���������
                    'FROM minsk.otdel '+'LEFT JOIN minsk.firma ON firma.firm_code=otdel.firm_code '+'LEFT JOIN '+MainForm.Configuration.sMySQLDatabase+'._org ON minsk.otdel.firm_code=_org.org_firm_code '+'LEFT JOIN '+
                    MainForm.Configuration.sMySQLDatabase+'._phn ON _phn.phn_otdel_id=otdel.otdel_id '+'LEFT JOIN '+MainForm.Configuration.sMySQLDatabase+'._usr ON _usr.usr_id=otdel.oper '+
                    'WHERE ((!(_phn.phn_owner_is_measure="1")) OR ISNULL(_phn.phn_owner_is_measure)) AND _org.org_id='+IntToStr(owner_id)+' '+'ORDER BY otdel.sort_level, otdel.phn_owner, otdel.phone;';
                end
              else
                begin
                  s:='�������� ������ � �������� ��������� ID �����������-���������!';
                  bError:=True;
                end;
            end
          else
            begin
              s:='�������� ������ � �������� ����������� �����������-���������!';
              bError:=True;
            end;
        end;

      // ���� ������� ���� ��������� �����������
      if MainForm.PageControl1.ActivePage=MainForm.tsMsr then
        begin
          // �������� ������ �� id �����������-"�������"
          if MainForm.lvMsr.Selected<>nil then
            begin
              s_owner_id:=MainForm.lvMsr.Selected.SubItems[2];
              owner_id:=StrToIntDef(s_owner_id, -1);
              if owner_id>-1 then
                begin
                  q:='SELECT phn_type, phone, phn_comments, date_format(phn_modified_at,"%d.%m.%Y %T"), '+'usr_fullname, date_format(phn_compared,"%d.%m.%Y"), phn_id, _phn_phone, phn_priority '+'FROM '+MainForm.Configuration.sMySQLDatabase+'._phn '+
                    'LEFT JOIN minsk.otdel ON otdel_id=phn_otdel_id '+'LEFT JOIN '+MainForm.Configuration.sMySQLDatabase+'._usr ON usr_id=phn_modified_by_user_id '+'WHERE phn_owner_is_measure="1" AND phn_owner_id='+IntToStr(owner_id)
                    +' ORDER BY phn_priority, phn_type, phone;'
                end
              else
                begin
                  s:='�������� ������ � �������� ��������� ID �����������-���������!';
                  bError:=True;
                end;
            end
          else
            begin
              s:='�������� ������ � �������� ����������� �����������-���������!';
              bError:=True;
            end;
        end;

      if not bError then
        begin
          MainForm.LogThis(q, LogGroupGUID, lmtSQL);
          i:=mysql_real_query(MainForm.MySQLConnectionHandler, PAnsiChar(AnsiString(q)), Length(q));
          if i=0 then
            begin
              MainForm.LogThis('������ �������� �������.', LogGroupGUID, lmtInfo);
              ResultSet:=mysql_store_result(MainForm.MySQLConnectionHandler);
              if ResultSet<>nil then
                begin
                  MainForm.LogThis('�������������� ������� �������� �������.', LogGroupGUID, lmtInfo);
                  i:=mysql_num_rows(ResultSet);
                  if (i>=0) then
                    begin
                      MainForm.ProgressBar1.Max:=i;
                      MainForm.LogThis('���������� ����� ������� ����� '+IntToStr(i)+'.', LogGroupGUID, lmtInfo);
                      // ������� ������ ���������
                      lvPhones.Items.BeginUpdate;
                      lvPhones.Clear;
                      // ���������� ������ ������������ �������
                      for j:=0 to (i-1) do
                        begin
                          if not bError then
                            begin
                              MainForm.LogThis('������� ��������� ��������� ������ ������� (#'+IntToStr(j)+').', LogGroupGUID, lmtInfo);
                              ResultRow:=mysql_fetch_row(ResultSet);
                              if ResultRow<>nil then
                                begin
                                  ListItem:=lvPhones.Items.Add;
                                  ListItem.StateIndex:=-1;
                                  ListItem.Caption:=string(ResultRow[1]);
                                  ListItem.SubItems.Add(string(ResultRow[0]));
                                  ListItem.SubItems.Add(string(ResultRow[2]));
                                  if string(ResultRow[5])='01.01.1900' then
                                    ListItem.SubItems.Add('-')
                                  else
                                    ListItem.SubItems.Add(string(ResultRow[5]));
                                  ListItem.SubItems.Add(string(ResultRow[3])); // ��������
                                  ListItem.SubItems.Add(string(ResultRow[4])); // ��� �������
                                  ListItem.SubItems.Add(string(ResultRow[8])); // ���������
                                  ListItem.SubItems.Add(string(ResultRow[6])); // id
                                  ListItem.SubItems.Add(string(ResultRow[7])); // _phn_phone
                                  if string(ResultRow[0])='������������' then
                                    begin
                                      ListItem.ImageIndex:=0;
                                      ListItem.StateIndex:=-1;
                                    end
                                  else
                                    if string(ResultRow[0])='���������' then
                                      begin
                                        ListItem.ImageIndex:=1;
                                        ListItem.StateIndex:=2;
                                      end
                                    else
                                      if string(ResultRow[0])='��������� (Velcom/���)' then
                                        begin
                                          ListItem.ImageIndex:=1;
                                          ListItem.StateIndex:=4;
                                        end
                                      else
                                        if string(ResultRow[0])='��������� (���)' then
                                          begin
                                            ListItem.ImageIndex:=1;
                                            ListItem.StateIndex:=3;
                                          end
                                        else
                                          if string(ResultRow[0])='��������� (Diallog/������)' then
                                            begin
                                              ListItem.ImageIndex:=1;
                                              ListItem.StateIndex:=6;
                                            end
                                          else
                                            if string(ResultRow[0])='��������� (life:)/����)' then
                                              begin
                                                ListItem.ImageIndex:=1;
                                                ListItem.StateIndex:=5;
                                              end
                                            else
                                              begin
                                                ListItem.ImageIndex:=2;
                                                ListItem.StateIndex:=-1;
                                              end;
                                end
                              else
                                begin
                                  s:='�������� ������ ��� �������� ������ ������ �������!';
                                  bError:=True;
                                end;
                              MainForm.ProgressBar1.StepIt;
                            end;
                        end;
                      lvPhones.Items.EndUpdate;
                    end
                  else
                    begin
                      s:='�������� ������������ ���������� ����� �������������� ������� ('+IntToStr(i)+')!';
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
              MainForm.LogThis('������������ ��������, ������� ����������� �������...', LogGroupGUID, lmtInfo);
              mysql_free_result(ResultSet);
            end;
          MainForm.ProgressBar1.Position:=MainForm.ProgressBar1.Min;
        end;
    end
  else
    begin
      s:='�������� ������ � �������� ����������� �����������/�����������-���������!';
      bError:=True;
    end;
  Screen.Cursor:=crDefault;
  if bError then
    begin
      MainForm.LogThis(s, LogGroupGUID, lmtError);
      lvPhones.Items.BeginUpdate;
      lvPhones.Clear;
      lvPhones.Items.EndUpdate;
      MessageBox(Handle, PChar(s), PChar('OA4 - ������!'), MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
    end;
  UpdateWithScrollBars;

  MainForm.ProcedureFooter(LogGroupGUID, True, True);
end;

end.
