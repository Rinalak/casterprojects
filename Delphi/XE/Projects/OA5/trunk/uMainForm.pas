unit uMainForm;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  Menus,
  ComCtrls,
  PlatformDefaultStyleActnCtrls,
  ActnList,
  ActnMan,
  ImgList,
  OA5Types,
  uUserClass,
  uConfigurationClass,
  ExtCtrls,
  CodeSiteLogging,
  uLogProvider,
  StdCtrls,
  Sockets,
  IdTCPConnection,
  IdTCPClient,
  IdBaseComponent,
  IdComponent,
  IdUDPBase,
  IdUDPClient,
  xmldom,
  XMLIntf,
  msxmldom,
  XMLDoc;

type
  THackControl=class(TControl);

  TMainForm=class(TForm)
    MainMenu1: TMainMenu;
    StatusBar1: TStatusBar;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ActionManager1: TActionManager;
    Action_Quit: TAction;
    Action_About: TAction;
    Action_Help: TAction;
    Action_Configuration: TAction;
    Action_Accounts: TAction;
    Action_Report: TAction;
    Action_Logon: TAction;
    Action_Logout: TAction;
    N5: TMenuItem;
    N6: TMenuItem;
    O1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    miStatusBar: TMenuItem;
    ilMainFormSmallImages: TImageList;
    ilMainFormBigImages: TImageList;
    pbMain: TProgressBar;
    imState: TImage;
    ilMainFormStateIcons: TImageList;
    Log: TLogProvider;
    procedure Action_QuitExecute(Sender: TObject);
    procedure Action_AboutExecute(Sender: TObject);
    procedure Action_HelpExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_ConfigurationExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Action_ReportExecute(Sender: TObject);
  strict private
    bFirstRun: boolean;
    bAboutWindowExist: boolean;
    procedure ProcedureHeader(aTitle, aLogGroupGUID: string);
    procedure ProcedureFooter;
    procedure PreShowModal(const aWindowName: string; var aOldBusyState: integer);
    procedure PostShowModal(const aWindowName: string; var aOldBusyState: integer);
    procedure PreFooter(aHandle: HWND; const aError: boolean; const aErrorMessage: string);

    procedure Do_UpdateActions;
    procedure Do_About(const aButtonVisible: boolean);
    procedure Do_Help;
    procedure Do_Configuration;
    procedure Do_Report;
    procedure Do_LoadConfiguration;
    procedure Do_ApplyConfiguration;
    procedure Do_SaveConfiguration;
  public
    Configuration: TConfiguration;
    CurrentUser: TUser;
    iBusyCounter: integer;
    procedure ShowErrorBox(const aHandle: HWND; const aErrorMessage: string);
    procedure Inc_BusyState;
    procedure Dec_BusyState;
    procedure Refresh_BusyState;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  CommCtrl,
  uAboutForm,
  uConfigurationForm,
  uReportForm,
  uAddMassMsrForm,
  uLoginForm,
  OA5Consts,
  uRoutines;

procedure TMainForm.ProcedureHeader(aTitle, aLogGroupGUID: string);
begin
  Log.EnterMethod(aTitle, aLogGroupGUID);
  MainForm.Inc_BusyState;
  Application.ProcessMessages;
end;

procedure TMainForm.ProcedureFooter;
begin
  MainForm.Dec_BusyState;
  Log.ExitMethod;
  Application.ProcessMessages;
end;

procedure TMainForm.PreShowModal(const aWindowName: string; var aOldBusyState: integer);
begin
  Log.SendDebug('������������ ������� ����������� ���������� ���� '+aWindowName+'.');
  with MainForm do
    begin
      aOldBusyState:=iBusyCounter; // ���������� �������� �������� ��������, ��������� ��������� "������"
      iBusyCounter:=0; // ��������� �������� ����� ��������� ���������� ����
      Refresh_BusyState; // ���������� ��������� ����������
    end;
end;

procedure TMainForm.PostShowModal(const aWindowName: string; var aOldBusyState: integer);
begin
  with MainForm do
    begin
      iBusyCounter:=aOldBusyState; // ����������� ������� �������� ��������
      Refresh_BusyState; // ���������� ��������� ����������
    end;
  Log.SendDebug('���� '+aWindowName+' ������.');
end;

procedure TMainForm.PreFooter(aHandle: HWND; const aError: boolean; const aErrorMessage: string);
begin
  if aError then
    MainForm.ShowErrorBox(aHandle, aErrorMessage)
  else
    Log.SendDebug('��������� ��������� ��� ������.');
  MainForm.pbMain.Position:=MainForm.pbMain.Min;
end;

procedure TMainForm.ShowErrorBox(const aHandle: HWND; const aErrorMessage: string);
var
  iOldBusyCounter: integer;
begin
  Log.SendError(aErrorMessage);

  iOldBusyCounter:=iBusyCounter; // ���������� �������� �������� ��������, ��������� ��������� "������"
  iBusyCounter:=0; // ��������� �������� ����� ��������� ���������� ����
  Refresh_BusyState; // ���������� ��������� ����������

  MessageBox(aHandle, PWideChar(aErrorMessage), PWideChar(MainForm.Caption+' - ������!'), MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
  Application.ProcessMessages;

  iBusyCounter:=iOldBusyCounter; // ����������� ������� �������� ��������
  Refresh_BusyState; // ���������� ��������� ����������
  Application.ProcessMessages;
end;

procedure TMainForm.Refresh_BusyState;
begin
  Log.SendDebug('���������� ����� "'+Routines.GetConditionalString(iBusyCounter>0, '������', '������')+'".');
  with MainForm do
    begin
      if iBusyCounter>0 then
        begin
          ilMainFormStateIcons.GetIcon(ICON_BUSY, imState.Picture.Icon);
          // Screen.Cursor:=crHourGlass;
        end
      else
        begin
          ilMainFormStateIcons.GetIcon(ICON_READY, imState.Picture.Icon);
          // Screen.Cursor:=crDefault;
        end;
      { TODO : ������ ������� }
      // if not Configuration.bNoStatusBar then
      StatusBar1.Panels[STATUSBAR_HINT_PANEL_NUMBER].Text:=Routines.GetConditionalString(iBusyCounter>0, '����������, ���������...', '������');
    end;
  Application.ProcessMessages;
end;

procedure TMainForm.Inc_BusyState;
begin
  with MainForm do
    begin
      iBusyCounter:=iBusyCounter+1;
      if iBusyCounter<0 then
        iBusyCounter:=0;
      Refresh_BusyState;
    end;
end;

procedure TMainForm.Dec_BusyState;
begin
  with MainForm do
    begin
      iBusyCounter:=iBusyCounter-1;
      if iBusyCounter<0 then
        iBusyCounter:=0;
      Refresh_BusyState;
    end;
end;

procedure TMainForm.Action_AboutExecute(Sender: TObject);
begin
  ProcedureHeader('���������-���������� �������� "'+Action_About.Caption+'"', '{90CC0AAB-ED7C-46FF-97FF-4431F18EBA1A}');
  Do_About(True);
  ProcedureFooter;
end;

procedure TMainForm.Do_About(const aButtonVisible: boolean);
const
  sModalWinName: string='"� ���������..."';
var
  AboutForm: TAboutForm;
  iBusy: integer;
begin
  ProcedureHeader('��������� ����������� ���� '+sModalWinName, '{754C2801-ED59-4595-AC3E-20DBF98F6779}');

  if bAboutWindowExist then
    SetForegroundWindow(FindWindow('TAboutForm', 'About "OVERSEER"...'))
  else
    begin
      AboutForm:=TAboutForm.Create(Self);
      with AboutForm do
        try
          bAboutWindowExist:=True;
          Action_Close.Visible:=aButtonVisible;
          PreShowModal(sModalWinName, iBusy);
          ShowModal;
        finally
          PostShowModal(sModalWinName, iBusy);
          Free;
          bAboutWindowExist:=False;
        end;
    end;

  ProcedureFooter;
end;

procedure TMainForm.Action_HelpExecute(Sender: TObject);
begin
  ProcedureHeader('���������-���������� �������� "'+Action_Help.Caption+'"', '{D066E67D-C195-440D-94C2-6757C427DCF6}');
  Do_Help;
  ProcedureFooter;
end;

procedure TMainForm.Action_QuitExecute(Sender: TObject);
begin
  ProcedureHeader('���������-���������� �������� "'+Action_Quit.Caption+'"', '{5DB14721-5FC4-4B42-B0DB-4E7C323A2AA2}');
  Close;
  ProcedureFooter;
end;

procedure TMainForm.Action_ReportExecute(Sender: TObject);
begin
  ProcedureHeader('���������-���������� �������� "'+Action_Report.Caption+'"', '{90957E86-35D1-4C1B-9C1F-4C99CE5D2B56}');
  Do_Report;
  ProcedureFooter;
end;

procedure TMainForm.Do_Help;
var
  bError: boolean;
  sErrorMessage: string;
begin
  ProcedureHeader('��������� �������� ����������� ����� ���������', '{457E450C-4870-4B17-9594-EB7F91B4578E}');
  bError:=False;

  Log.SendInfo('������������ ������� �������� ����������� ����� ���������...');
  if (FileExists(ExpandFileName(Application.HelpFile))) then
    Application.HelpContext(0)
  else
    Routines.GenerateError('��������, ���������� ���� � ������ ��������� �� ������.', sErrorMessage, bError);

  PreFooter(Handle, bError, sErrorMessage);
  ProcedureFooter;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  Configuration.Free;
  CurrentUser.Free;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  PanelRect: TRect;

  procedure BindMainProgressBarToStatusBar;
  begin
    THackControl(pbMain).SetParent(StatusBar1);
    SendMessage(StatusBar1.Handle, SB_GETRECT, STATUSBAR_PROGRESS_PANEL_NUMBER, Integer(@PanelRect));
    pbMain.SetBounds(PanelRect.Left, PanelRect.Top, PanelRect.Right-PanelRect.Left, PanelRect.Bottom-PanelRect.Top-1);
  end;

  procedure BindStateImageToStatusBar;
  begin
    THackControl(imState).SetParent(StatusBar1);
    SendMessage(StatusBar1.Handle, SB_GETRECT, STATUSBAR_STATE_PANEL_NUMBER, Integer(@PanelRect));
    imState.SetBounds(PanelRect.Left+2, PanelRect.Top+1, PanelRect.Right-PanelRect.Left-4, PanelRect.Bottom-PanelRect.Top-4);
  end;

begin
  // ���������� �������� � ������� ������� ��������� �� ������� ����������� �������� ����
  bFirstRun:=True;
  // �������� � �������������� ������� �������� ������������
  CurrentUser:=TUser.Create;
  // �������� � �������������� ������� ������������
  Configuration:=TConfiguration.Create;

  // �������� ������������ � ������� �� ������ �������
  BindMainProgressBarToStatusBar;
  // �������� ������ ���������� � ������� �� ������ �������
  BindStateImageToStatusBar;

  // �������� �������� �� �����
  Do_LoadConfiguration;
  // ���������� �������� � ����������
  Do_ApplyConfiguration;

  Do_UpdateActions;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  ProcedureHeader('���������-���������� ������� ����������� ����', '{9FD296B5-1A3D-4E90-85CA-492271D2B6A9}');

  if bFirstRun then
    begin
      iBusyCounter:=0;
      bFirstRun:=False;
    end;
  Refresh_BusyState;

  ProcedureFooter;
end;

procedure TMainForm.Do_UpdateActions;
begin
  ProcedureHeader('��������� ���������� ��������� ��������', '{03351462-40CF-47ED-AE96-3F9E0D9EA148}');

  { TODO : ������ ������� }
  (*
    Action_Logon.Enabled:=not CurrentUser.bLogged;
    Action_Logon.Visible:=Action_Logon.Enabled;
    Action_Logout.Enabled:=not Action_Logon.Enabled;
    Action_Logout.Visible:=Action_Logout.Enabled;
    LogThis(PWideChar('�������� "'+Action_Logon.Caption+'" '+Routines_GetConditionalMessage(Action_Logon.Enabled, '��������', '���������')+', '+'�������� "'+Action_Logout.Caption+'" '+Routines_GetConditionalMessage(Action_Logout.Enabled, '��������',
    '���������')+'.'), LogGroupGUID, lmtDebug);
    Action_Accounts.Enabled:=CurrentUser.bLogged and CurrentUser.bIsAdmin;
    Action_Accounts.Visible:=Action_Accounts.Enabled;
    Action_Process.Enabled:=CurrentUser.bLogged;
    Action_Process.Visible:=Action_Process.Enabled;
    miActions.Visible:=Action_Process.Visible or Action_Process.Visible;
    Application.ProcessMessages;
  *)

  ProcedureFooter;
end;

procedure TMainForm.Action_ConfigurationExecute(Sender: TObject);
begin
  ProcedureHeader('���������-���������� �������� "'+Action_Configuration.Caption+'"', '{024B2718-8D00-49A1-9E1E-C02CB2696CE0}');
  Do_Configuration;
  ProcedureFooter;
end;

procedure TMainForm.Do_Configuration;
const
  sModalWinName: string='�������� ���������';
var
  ConfigurationForm: TConfigurationForm;
  iBusy: integer;
begin
  ProcedureHeader('��������� ����������� ���� '+sModalWinName, '{886B460D-4C73-46BE-829E-E4421B7C4378}');

  ConfigurationForm:=TConfigurationForm.Create(Self);
  with ConfigurationForm do
    try
      PreShowModal(sModalWinName, iBusy);
      ShowModal;
    finally
      PostShowModal(sModalWinName, iBusy);
      if ModalResult=mrOk then
        Do_ApplyConfiguration;
      Free;
    end;

  ProcedureFooter;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ProcedureHeader('���������-���������� ������� �������� ����', '{A430AB2D-F069-4FFF-A5CA-883D7B3E1985}');

  Do_SaveConfiguration;

  ProcedureFooter;
end;

procedure TMainForm.Do_LoadConfiguration;
var
  bError: boolean;
  sErrorMessage: string;
begin
  if not bFirstRun then
    begin
      ProcedureHeader('��������� ������ �������� ��������� �� �����', '{650B9486-2600-4038-B711-3281F7252336}');
      bError:=False;
      Log.SendInfo('������������ ������� ������ �������� ��������� �� �����...');
    end;
  try
    try
      Screen.Cursor:=crHandPoint;
      Configuration.Load;
      if not bFirstRun then
        Log.SendInfo('������ �������� ��������� � ���� ������ �������.');
    finally
      Screen.Cursor:=crDefault;
    end;
  except
    if not bFirstRun then
      Routines.GenerateError('��������� ������ ��� ������� ������ �������� ��������� �� �����!', sErrorMessage, bError);
    Application.HandleException(Self);
  end;
  if not bFirstRun then
    begin
      PreFooter(Handle, bError, sErrorMessage);
      ProcedureFooter;
    end;
end;

procedure TMainForm.Do_SaveConfiguration;
var
  bError: boolean;
  sErrorMessage: string;
begin
  ProcedureHeader('��������� ������ �������� ��������� � ����', '{2BD55804-9631-45C8-9484-42F4DDC45C29}');
  bError:=False;

  Log.SendInfo('������������ ������� ������ �������� ��������� � ����...');
  try
    try
      Screen.Cursor:=crHourGlass;
      Configuration.Save;
      Log.SendInfo('������ �������� ��������� � ���� ������ �������.');
    finally
      Screen.Cursor:=crDefault;
    end;
  except
    Routines.GenerateError('��������� ������ ��� ������� ������ �������� ��������� � ����!', sErrorMessage, bError);
    Application.HandleException(Self);
  end;

  PreFooter(Handle, bError, sErrorMessage);
  ProcedureFooter;
end;

procedure TMainForm.Do_ApplyConfiguration;
begin
  ProcedureHeader('��������� ���������� ��������� � ���������� ���������', '{67A9E9BC-62AC-4848-B20D-C8B5095DEB6C}');

  // ��������� ���������� ���������������� � ������������ � ����������� ���������
  Log.UserName:=MainForm.CurrentUser.Login;
  Log.AllowedTypes:=MainForm.Configuration.KeepLogTypes;
  Log.Enabled:=MainForm.Configuration.EnableLog;

  ProcedureFooter;
end;

procedure TMainForm.Do_Report;
const
  sModalWinName: string='������������ �������������� ������� �� ������ �������������';
var
  ReportForm: TReportForm;
  iBusy: integer;
begin
  ProcedureHeader('��������� ����������� ���� '+sModalWinName, '{0B2728D4-5577-4D1E-9F51-3F40A61BA774}');

  ReportForm:=TReportForm.Create(Self);
  with ReportForm do
    try
      PreShowModal(sModalWinName, iBusy);
      ShowModal;
    finally
      PostShowModal(sModalWinName, iBusy);
      { TODO : ��������! }
      // if ModalResult=mrOk then
      // Do_ApplyConfiguration;
      Free;
    end;

  ProcedureFooter;
end;

end.