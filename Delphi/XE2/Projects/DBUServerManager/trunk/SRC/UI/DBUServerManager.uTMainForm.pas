unit DBUServerManager.uTMainForm;

interface

uses
  DBUServerManager.uTConfiguration,
  Winapi.Messages,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.ComCtrls,
  AboutPackage.uTAboutWindow,
  Vcl.Menus,
  Vcl.ExtCtrls,
  CastersPackage.Actions.Classes,
  Vcl.ActnList,
  System.Actions,
  Vcl.ActnMan,
  Vcl.ActnCtrls,
  Vcl.StdActns,
  System.Classes,
  Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ImgList,
  Vcl.ToolWin,
  AboutPackage.uTGSFileVersionInfo, IdContext, IdBaseComponent, IdComponent,
  IdCustomTCPServer, IdTCPServer, IdCmdTCPServer, IdCommandHandlers,
  IdTCPConnection, IdTCPClient, IdCmdTCPClient, Web.Win.Sockets;

type
  TMainForm = class(TForm)
    statMain: TStatusBar;
    AboutWindow: TAboutWindow;
    ilActions: TImageList;
    actmgrMain: TActionManager;
    actHelpMenuGroup: THelpMenuGroupAction;
    actFileMenuGroup: TFileMenuGroupAction;
    actHelpContents: THelpContentsAction;
    actAbout: TAction;
    actQuit: TQuitAction;
    actCreateProfile: TAction;
    actLoadProfile: TAction;
    actRecentProfiles: TAction;
    actSaveProfile: TAction;
    actSaveProfileAs: TAction;
    actConfiguration: TAction_Configuration;
    actRecentProfilesProperties: TAction;
    actProfileProperties: TAction;
    actViewMenuGroupAction: TViewMenuGroupAction;
    actStatusBar: TAction;
    actToolBar: TAction;
    TrayIcon: TTrayIcon;
    mmMain: TMainMenu;
    N7: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N5: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    N10: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    acttbToolBar: TActionToolBar;
    actRestore: TAction;
    pmTray: TPopupMenu;
    mniActionRestore: TMenuItem;
    mniN1: TMenuItem;
    mniN2: TMenuItem;
    mniO1: TMenuItem;
    mniN3: TMenuItem;
    mniQuit: TMenuItem;
    lvLog: TListView;
    gsfviMain: TGSFileVersionInfo;
    IdTCPClient: TIdTCPClient;
    actConnect: TAction;
    actDisconnect: TAction;
    actTestConnection: TAction;
    actActionMenuGroupAction: TActionMenuGroupAction;
    procedure actAboutExecute(Sender: TObject);
    procedure actQuitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure actToolBarExecute(Sender: TObject);
    procedure actStatusBarExecute(Sender: TObject);
    procedure actConfigurationExecute(Sender: TObject);
    procedure actRestoreExecute(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure actRestoreUpdate(Sender: TObject);
    procedure TrayIconClick(Sender: TObject);
    procedure CmdTCPServerCommandHandlers1Command(ASender: TIdCommand);
    procedure IdTCPClientDisconnected(Sender: TObject);
    procedure IdTCPClientConnected(Sender: TObject);
    procedure actTestConnectionExecute(Sender: TObject);
    procedure actConnectExecute(Sender: TObject);
    procedure actDisconnectExecute(Sender: TObject);
    procedure actTestConnectionUpdate(Sender: TObject);
    procedure actDisconnectUpdate(Sender: TObject);
    procedure actConnectUpdate(Sender: TObject);

  strict private
    FConfiguration: TConfiguration;
    function GetConfiguration: TConfiguration;
    property Configuration: TConfiguration read GetConfiguration nodefault;

  strict private
    FWindowMessage: Cardinal;
    procedure RegisterWindowMessages;
    procedure ApplyConfiguration;
    procedure OnHint(ASender: TObject);
    procedure WMGetSysCommand(var AMessage: TMessage); message WM_SYSCOMMAND;

  protected
    procedure WndProc(var AMessage: TMessage); override;

  public
    destructor Destroy; override;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  System.SysUtils,
  Vcl.Dialogs,
  Winapi.Windows,
  DBUServerManager.uConsts,
  DBUServerManager.Configuration.uTInterface,
  DBUServerManager.uTConfigurationForm;

resourcestring
  RsExitConfirmationMessage = '�� ������������� ������ ��������� ������ ���������?';
  RsExitConfirmationCaption = '%s - ������������� ������';
  RsWarningCaption = '%s - ��������������';
  RsErrorCaption = '%s - ������';
  RsErrorRegisterWindowMessage = '�� ������� ��������� �������� ����������� �������� ���������!';

procedure TMainForm.actAboutExecute(Sender: TObject);
begin
  AboutWindow.Show;
end;

procedure TMainForm.actConfigurationExecute(Sender: TObject);
var
  form: TForm;
begin
  form := TConfigurationForm.Create(Self, Configuration);
  if not Assigned(form) then
  begin
    Exit;
  end;

  try
    if not form.ShowModal = mrOk then
    begin
      Exit;
    end;
    ApplyConfiguration;
  finally
    form.Free;
  end;
end;

procedure TMainForm.actConnectExecute(Sender: TObject);
begin
  try
    IdTCPClient.Connect;
    if IdTCPClient.Connected then
    begin
      while IdTCPClient.IOHandler.InputBuffer.Size > 0 do
      begin
        ShowMessage(IdTCPClient.IOHandler.ReadLn);
      end;
    end;
  except
    ShowMessage('�� ������� ������������ � �������');
  end;
end;

procedure TMainForm.actConnectUpdate(Sender: TObject);
begin
  actConnect.Enabled := not IdTCPClient.Connected;
end;

procedure TMainForm.actDisconnectExecute(Sender: TObject);
begin
  IdTCPClient.IOHandler.InputBuffer.Clear;
  IdTCPClient.Disconnect;
  ShowMessage(BoolToStr(IdTCPClient.Connected, True));
end;

procedure TMainForm.actDisconnectUpdate(Sender: TObject);
begin
  actDisconnect.Enabled := IdTCPClient.Connected;
end;

procedure TMainForm.actQuitExecute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.actStatusBarExecute(Sender: TObject);
var
  b: Boolean;
begin
  b := actStatusBar.Checked;

  if statMain.Visible <> b then
  begin
    statMain.Visible := b;
  end;

  if Configuration.Section<TInterface>.EnableStatusbar <> b then
  begin
    Configuration.Section<TInterface>.EnableStatusbar := b;
  end;

  if actStatusBar.Checked then
  begin
    IdTCPClient.Connect;
  end
  else
  begin
    IdTCPClient.IOHandler.InputBuffer.Clear;
    IdTCPClient.Disconnect;
  end;
end;

procedure TMainForm.actTestConnectionExecute(Sender: TObject);
begin
  IdTCPClient.SendCmd('TCP_CONNECTION_TEST');
  ShowMessage(IdTCPClient.IOHandler.ReadLn);
end;

procedure TMainForm.actTestConnectionUpdate(Sender: TObject);
begin
  actTestConnection.Enabled := IdTCPClient.Connected;
end;

procedure TMainForm.actToolBarExecute(Sender: TObject);
var
  b: Boolean;
begin
  b := actToolBar.Checked;

  if acttbToolBar.Visible <> b then
  begin
    acttbToolBar.Visible := b;
  end;

  if Configuration.Section<TInterface>.EnableToolbar <> b then
  begin
    Configuration.Section<TInterface>.EnableToolbar := b;
  end;
end;

procedure TMainForm.ApplyConfiguration;
var
  b: Boolean;
begin
  b := Configuration.Section<TInterface>.EnableStatusbar;
  actStatusBar.Checked := b;
  statMain.Visible := b;

  b := Configuration.Section<TInterface>.EnableToolbar;
  actToolBar.Checked := b;
  acttbToolBar.Visible := b;

  TrayIcon.Visible := (not Visible) or Configuration.Section<TInterface>.EnableAlwaysShowTrayIcon;
end;

procedure TMainForm.CmdTCPServerCommandHandlers1Command(ASender: TIdCommand);
begin
  ASender.SendReply;
end;

destructor TMainForm.Destroy;
begin
  if IdTCPClient.Connected then
  begin
    IdTCPClient.IOHandler.InputBuffer.Clear;
    IdTCPClient.Disconnect;
  end;

  if Assigned(Configuration) then
  begin
    Configuration.Free;
  end;

  inherited;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;

  if Configuration.Section<TInterface>.EnableQuitConfirmation then
  begin
    CanClose := MessageBox(Handle, PWideChar(RsExitConfirmationMessage),
      PWideChar(Format(RsExitConfirmationCaption, [APPLICATION_NAME])), MESSAGE_TYPE_CONFIRMATION_QUESTION) = IDOK;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  b: Boolean;
begin
  Application.OnHint := OnHint;
  gsfviMain.Filename := Application.ExeName;
  Caption := gsfviMain.InternalName;
  RegisterWindowMessages;
  ApplyConfiguration;

  if Configuration.Section<TInterface>.EnableSplashAtStart then
  begin
    AboutWindow.Show(True);
  end;

  b := Configuration.Section<TInterface>.EnableStartAtTray;
  Application.ShowMainForm := not b;
  Visible := not b;
end;

function TMainForm.GetConfiguration: TConfiguration;
begin
  if not Assigned(FConfiguration) then
  begin
    FConfiguration := TConfiguration.Create;
  end;
  Result := FConfiguration;
end;

procedure TMainForm.OnHint(ASender: TObject);
begin
  statMain.SimpleText := GetLongHint(Application.Hint);
end;

procedure TMainForm.RegisterWindowMessages;
begin
  FWindowMessage := RegisterWindowMessage(PWideChar(APPLICATION_NAME));
  if FWindowMessage = 0 then
  begin
    MessageBox(Handle, PWideChar(RsErrorRegisterWindowMessage), PWideChar(Format(RsErrorCaption, [Application.Title])),
      MESSAGE_TYPE_ERROR);
  end;
end;

procedure TMainForm.TrayIconClick(Sender: TObject);
begin
  if Visible then
  begin
    SetForegroundWindow(Handle);
  end;
end;

procedure TMainForm.TrayIconDblClick(Sender: TObject);
begin
  AboutWindow.Hide;
  TrayIcon.Visible := Configuration.Section<TInterface>.EnableAlwaysShowTrayIcon;
  Visible := True;
  SetForegroundWindow(Handle);
  Application.Restore;
end;

procedure TMainForm.WMGetSysCommand(var AMessage: TMessage);
begin
  if AMessage.WParam = SC_MINIMIZE then
  begin
    AboutWindow.Hide;
    Visible := False;
    TrayIcon.Visible := True;
  end
  else
  begin
    inherited;
  end;
end;

procedure TMainForm.WndProc(var AMessage: TMessage);
var
  fwi: FLASHWINFO;
begin
  if AMessage.Msg = FWindowMessage then
  begin
    actRestore.Execute;

    fwi.cbSize := SizeOf(FLASHWINFO);
    fwi.HWND := Handle;
    fwi.dwFlags := FLASHW_TRAY or FLASHW_TIMERNOFG;
    fwi.uCount := 0;
    fwi.dwTimeout := 0;
    FlashWindowEx(fwi);
  end
  else
  begin
    inherited;
  end;
end;

procedure TMainForm.actRestoreExecute(Sender: TObject);
begin
  AboutWindow.Hide;
  Visible := True;
  TrayIcon.Visible := Configuration.Section<TInterface>.EnableAlwaysShowTrayIcon;
  SetForegroundWindow(Handle);
end;

procedure TMainForm.actRestoreUpdate(Sender: TObject);
begin
  actRestore.Enabled := not Visible;
end;

procedure TMainForm.IdTCPClientConnected(Sender: TObject);
begin
  ShowMessage('Connected');
end;

procedure TMainForm.IdTCPClientDisconnected(Sender: TObject);
begin
  ShowMessage('Disconnected');
end;

end.