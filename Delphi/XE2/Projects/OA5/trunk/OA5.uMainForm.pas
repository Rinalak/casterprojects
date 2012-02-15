﻿unit OA5.uMainForm;

interface

uses
  OA5.uTypes,
  Windows,
  Messages,
  SysUtils,
  Variants,
  System.Classes,
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
  OA5.uAccountClass,
  OA5.uConfigurationClass,
  ExtCtrls,
  CodeSiteLogging,
  CastersPackage.uLogProvider,
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
  XMLDoc,
  Vcl.AppEvnts,
  System.IniFiles,
  OA5.uMultiBufferClass;

type
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
    Action_Multibuffer: TAction;
    N16: TMenuItem;
    N17: TMenuItem;
    miToolBar: TMenuItem;
    Action_CreateMessage: TAction;
    Action_ViewMessages: TAction;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    Action_ViewMessage: TAction;
    N22: TMenuItem;
    Action_AddPhone: TAction;
    N23: TMenuItem;
    Action_EditPhone: TAction;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    procedure Action_QuitExecute(Sender: TObject);
    procedure Action_AboutExecute(Sender: TObject);
    procedure Action_HelpExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_ConfigurationExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Action_ReportExecute(Sender: TObject);
    procedure miStatusBarClick(Sender: TObject);
    procedure Action_MultibufferExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Action_CreateMessageExecute(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure Action_ViewMessageExecute(Sender: TObject);
    procedure miToolBarClick(Sender: TObject);
    procedure Action_AddPhoneExecute(Sender: TObject);
    procedure Action_EditPhoneExecute(Sender: TObject);
  strict private
    bFirstRun: boolean;
    procedure ProcedureHeader(const aTitle, aLogGroupGUID: string);
    procedure ProcedureFooter;
    procedure PreShowModal(const aWindowName: string; var aOldBusyState: integer);
    procedure PostShowModal(const aWindowName: string; var aOldBusyState: integer);
    procedure PreFooter(const aHandle: HWND; const aError: boolean; const aErrorMessage: string);
    procedure ApplicationOnHint(Sender: TObject);

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
    CurrentUser: IAccount;
    iBusyCounter: integer;
    MeasuresMultiBuffer: TMultiBufferClass;
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
  System.IOUtils,
  CommCtrl,
  OA5.uAboutForm,
  OA5.uConfigurationForm,
  OA5.uReportForm,
  OA5.uMultiBufferForm,
  OA5.uMeasureDataClass,
  OA5.uAddMassMsrForm,
  OA5.uLoginForm,
  OA5.uConsts,
  OA5.uCreateMessageForm,
  OA5.uViewMessageForm,
  OA5.uViewMessagesForm,
  OA5.uAddEditPhoneForm,
  CastersPackage.uRoutines;

type
  THackControl=class(TControl);

resourcestring
  sAboutFormSuffix='"О программе..."';
  sConfigurationFormSuffix='настроек программы';
  sReportFormSuffix='формирования статистических отчётов по работе пользователей';
  sMultiBufferFormSuffix='мультибуфера';
  sCreateMessageFormSuffix = 'создания нового сообщения';
  sViewMessageFormSuffix = 'просмотра полученного сообщения';
  sViewMessagesFormSuffix = 'просмотра полученных сообщений';
  sAddPhoneFormSuffix = 'добавления номера телефона';
  sEditPhoneFormSuffix = 'исправления номера телефона';


procedure TMainForm.ProcedureHeader(const aTitle, aLogGroupGUID: string);
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
  Log.SendDebug('Производится попытка отображения модального окна '+aWindowName+'.');
  with MainForm do
    begin
      aOldBusyState:=iBusyCounter; // сохранение значения счётчика действий, требующих состояния "занято"
      iBusyCounter:=0; // обнуление счётчика перед открытием модального окна
      Refresh_BusyState; // обновление состояния индикатора
    end;
end;

procedure TMainForm.PostShowModal(const aWindowName: string; var aOldBusyState: integer);
begin
  with MainForm do
    begin
      iBusyCounter:=aOldBusyState; // возвращение старого значения счётчика
      Refresh_BusyState; // обновление состояния индикатора
    end;
  Log.SendDebug('Окно '+aWindowName+' скрыто.');
end;

procedure TMainForm.PreFooter(const aHandle: HWND; const aError: boolean; const aErrorMessage: string);
begin
  if aError then
    MainForm.ShowErrorBox(aHandle, aErrorMessage)
  else
    Log.SendDebug('Процедура выполнена без ошибок.');
  MainForm.pbMain.Position:=MainForm.pbMain.Min;
end;

procedure TMainForm.ShowErrorBox(const aHandle: HWND; const aErrorMessage: string);
var
  iOldBusyCounter: integer;
begin
  Log.SendError(aErrorMessage);

  iOldBusyCounter:=iBusyCounter; // сохранение значения счётчика действий, требующих состояния "занято"
  iBusyCounter:=0; // обнуление счётчика перед открытием модального окна
  Refresh_BusyState; // обновление состояния индикатора

  MessageBox(aHandle, PWideChar(aErrorMessage), PWideChar(MainForm.Caption+' - Ошибка!'), MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
  Application.ProcessMessages;

  iBusyCounter:=iOldBusyCounter; // возвращение старого значения счётчика
  Refresh_BusyState; // обновление состояния индикатора
  Application.ProcessMessages;
end;

procedure TMainForm.Refresh_BusyState;
begin
  Log.SendDebug('Установлен режим "'+Routines.GetConditionalString(iBusyCounter>0, 'Занято', 'Готово')+'".');
  with MainForm do
    begin
      if iBusyCounter>0 then
        ilMainFormStateIcons.GetIcon(ICON_BUSY, imState.Picture.Icon)
      else
        ilMainFormStateIcons.GetIcon(ICON_READY, imState.Picture.Icon);
      if Configuration.ShowStatusbar then
        StatusBar1.Panels[STATUSBAR_HINT_PANEL_NUMBER].Text:=Routines.GetConditionalString(iBusyCounter>0, 'Пожалуйста, подождите...', 'Готово');
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

procedure TMainForm.miStatusBarClick(Sender: TObject);
begin
  ProcedureHeader('Процедура включения/отключения отображения панели статуса', '{3550143C-FACD-490F-A327-4E1496CDEC5E}');

  StatusBar1.Visible:=miStatusbar.Checked;
  Configuration.ShowStatusbar:=StatusBar1.Visible;
  Log.SendInfo('Панель статуса '+Routines.GetConditionalString(StatusBar1.Visible, 'в', 'от')+'ключена.');

  ProcedureFooter;
end;

procedure TMainForm.miToolBarClick(Sender: TObject);
begin
  ProcedureHeader('Процедура включения/отключения отображения панели кнопок', '{786D709B-0201-41AE-923C-BC307AE26A6B}');

//  StatusBar1.Visible:=miStatusbar.Checked;
//  Configuration.ShowToolbar:=StatusBar1.Visible;
//  Log.SendInfo('Панель кнопок '+Routines.GetConditionalString(StatusBar1.Visible, 'в', 'от')+'ключена.');

  ProcedureFooter;
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
  ProcedureHeader('Процедура-обработчик действия "'+Action_About.Caption+'"', '{90CC0AAB-ED7C-46FF-97FF-4431F18EBA1A}');
  Do_About(True);
  ProcedureFooter;
end;

procedure TMainForm.Do_About(const aButtonVisible: boolean);
var
  AboutForm: TAboutForm;
  iBusy: integer;
begin
  ProcedureHeader('Процедура отображения окна '+sAboutFormSuffix, '{754C2801-ED59-4595-AC3E-20DBF98F6779}');

  AboutForm:=TAboutForm.Create(Self);
  with AboutForm do
    try
      Action_Close.Visible:=aButtonVisible;
      PreShowModal(sAboutFormSuffix, iBusy);
      ShowModal;
    finally
      PostShowModal(sAboutFormSuffix, iBusy);
      Free;
    end;

  ProcedureFooter;
end;

procedure TMainForm.Action_HelpExecute(Sender: TObject);
begin
  ProcedureHeader('Процедура-обработчик действия "'+Action_Help.Caption+'"', '{D066E67D-C195-440D-94C2-6757C427DCF6}');
  Do_Help;
  ProcedureFooter;
end;

procedure TMainForm.Action_QuitExecute(Sender: TObject);
begin
  ProcedureHeader('Процедура-обработчик действия "'+Action_Quit.Caption+'"', '{5DB14721-5FC4-4B42-B0DB-4E7C323A2AA2}');
  Close;
  ProcedureFooter;
end;

procedure TMainForm.Action_ReportExecute(Sender: TObject);
begin
  ProcedureHeader('Процедура-обработчик действия "'+Action_Report.Caption+'"', '{90957E86-35D1-4C1B-9C1F-4C99CE5D2B56}');
  Do_Report;
  ProcedureFooter;
end;

procedure TMainForm.Do_Help;
var
  bError: boolean;
  sErrorMessage: string;
begin
  ProcedureHeader('Процедура открытия справочного файла программы', '{457E450C-4870-4B17-9594-EB7F91B4578E}');
  bError:=False;

  Log.SendInfo('Производится попытка открытия справочного файла программы...');
  if (FileExists(ExpandFileName(Application.HelpFile))) then
    Application.HelpContext(0)
  else
    Routines.GenerateError('Извините, справочный файл к данной программе не найден.', sErrorMessage, bError);

  PreFooter(Handle, bError, sErrorMessage);
  ProcedureFooter;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  MeasuresMultiBuffer.Free;
  Configuration.Free;
  CurrentUser:=nil;
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
  // переменная правдива с момента запуска программы до момента отображения главного окна
  bFirstRun:=True;
  // создание и инициализщация объекта текущего пользователя
  CurrentUser:=TAccount.Create;
  // создание и инициализщация объекта конфигурации
  Configuration:=TConfiguration.Create;
  // создание и инициализщация объекта мультибуфера
  MeasuresMultiBuffer:=TMultiBufferClass.Create;

  // привязка прогрессбара к позиции на строке статуса
  BindMainProgressBarToStatusBar;
  // привязка иконки готовности к позиции на строке статуса
  BindStateImageToStatusBar;

  Application.OnHint:=ApplicationOnHint;

  // загрузка настроек из файла
  Do_LoadConfiguration;

  // применение настроек к интерфейсу
  Do_ApplyConfiguration;

  { TODO : добавить отображение окна "о программе" }

  Do_UpdateActions;
end;

procedure TMainForm.ApplicationOnHint(Sender: TObject);
begin
  if Configuration.ShowStatusbar then
    StatusBar1.Panels[STATUSBAR_HINT_PANEL_NUMBER].Text:=GetLongHint(Application.Hint);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  ProcedureHeader('Процедура-обработчик события отображения окна', '{9FD296B5-1A3D-4E90-85CA-492271D2B6A9}');

  if bFirstRun then
    begin
      iBusyCounter:=0;
      bFirstRun:=False;
      if Configuration.ShowSplashAtStart then
        Do_About(False);
    end;
  Refresh_BusyState;

  ProcedureFooter;
end;

procedure TMainForm.Do_UpdateActions;
begin
  ProcedureHeader('Процедура обновления состояния действий', '{03351462-40CF-47ED-AE96-3F9E0D9EA148}');

  { TODO : Убрать ремарки }
  (*
    Action_Logon.Enabled:=not CurrentUser.bLogged;
    Action_Logon.Visible:=Action_Logon.Enabled;
    Action_Logout.Enabled:=not Action_Logon.Enabled;
    Action_Logout.Visible:=Action_Logout.Enabled;
    LogThis(PWideChar('Действие "'+Action_Logon.Caption+'" '+Routines_GetConditionalMessage(Action_Logon.Enabled, 'включено', 'отключено')+', '+'действие "'+Action_Logout.Caption+'" '+Routines_GetConditionalMessage(Action_Logout.Enabled, 'включено',
    'отключено')+'.'), LogGroupGUID, lmtDebug);
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
  ProcedureHeader('Процедура-обработчик действия "'+Action_Configuration.Caption+'"', '{024B2718-8D00-49A1-9E1E-C02CB2696CE0}');
  Do_Configuration;
  ProcedureFooter;
end;

procedure TMainForm.Do_Configuration;
var
  ConfigurationForm: TConfigurationForm;
  iBusy: integer;
begin
  ProcedureHeader('Процедура отображения окна '+sConfigurationFormSuffix, '{886B460D-4C73-46BE-829E-E4421B7C4378}');

  ConfigurationForm:=TConfigurationForm.Create(Self);
  with ConfigurationForm do
    try
      PreShowModal(sConfigurationFormSuffix, iBusy);
      ShowModal;
    finally
      PostShowModal(sConfigurationFormSuffix, iBusy);
      if ModalResult=mrOk then
        Do_ApplyConfiguration;
      Free;
    end;

  ProcedureFooter;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ProcedureHeader('Процедура-обработчик события закрытия окна', '{A430AB2D-F069-4FFF-A5CA-883D7B3E1985}');

  // применение текущих настроек главного окна к конфигурации
  Configuration.MainFormLeft:=Left;
  Configuration.MainFormTop:=Top;
  Configuration.MainFormWidth:=Width;
  Configuration.MainFormHeight:=Height;
  Configuration.MainFormPositionByCenter:=False;
  Configuration.FullScreenAtLaunch:=WindowState=wsMaximized;

  // запись конфигурации
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
      ProcedureHeader('Процедура чтения настроек программы из файла', '{650B9486-2600-4038-B711-3281F7252336}');
      bError:=False;
      Log.SendInfo('Производится попытка чтения настроек программы из файла...');
    end;
  try
    try
      Screen.Cursor:=crHourGlass;
      Configuration.Load;
      if not bFirstRun then
        Log.SendInfo('Чтение настроек программы из файла прошло успешно.');
    finally
      Screen.Cursor:=crDefault;
    end;
  except
    if not bFirstRun then
      Routines.GenerateError('Произошла ошибка при попытке чтения настроек программы из файла!', sErrorMessage, bError);
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
  ProcedureHeader('Процедура записи настроек программы в файл', '{2BD55804-9631-45C8-9484-42F4DDC45C29}');
  bError:=False;

  Log.SendInfo('Производится попытка записи настроек программы в файл...');
  try
    try
      Screen.Cursor:=crHourGlass;
      Configuration.Save;
      Log.SendInfo('Запись настроек программы в файл прошла успешно.');
    finally
      Screen.Cursor:=crDefault;
    end;
  except
    on E: EIniFileException do
      begin
        Routines.GenerateError(E.Message, sErrorMessage, bError);
        if MessageBox(Handle, PWideChar('Вы желаете повторить попытку записи настроек программы в файл?'), PWideChar(MainForm.Caption+' - Предупреждение'), MB_OKCANCEL+MB_ICONWARNING+MB_DEFBUTTON1)=IDOK then
          try
            Screen.Cursor:=crHourGlass;
            try
              Configuration.Save;
              Log.SendInfo('Запись настроек программы в файл прошла успешно.');
            except
              on E: EIniFileException do
                Routines.GenerateError(E.Message, sErrorMessage, bError);
            end;
          finally
            Screen.Cursor:=crDefault;
          end;
      end;
    else
      Application.HandleException(Self);
  end;

  PreFooter(Handle, bError, sErrorMessage);
  ProcedureFooter;
end;

procedure TMainForm.Do_ApplyConfiguration;
begin
  ProcedureHeader('Процедура применения изменений к интерфейсу программы', '{67A9E9BC-62AC-4848-B20D-C8B5095DEB6C}');

  // установка параметров протоколирования в соответствии с настройками программы
  Log.UserName:=CurrentUser.Login;
  Log.AllowedTypes:=Configuration.KeepLogTypes;
  Log.Enabled:=Configuration.EnableLog;

  // установка видимости панели статуса в соответствии с настройками программы
  miStatusbar.Checked:=Configuration.ShowStatusbar;
  StatusBar1.Visible:=Configuration.ShowStatusbar;

  // установка позиции и размеров главного окна в соответсвии с параметрами конфигурации
  WindowState:=wsNormal;
  Position:=poDesigned;
  Left:=Configuration.MainFormLeft;
  Top:=Configuration.MainFormTop;
  Width:=Configuration.MainFormWidth;
  Height:=Configuration.MainFormHeight;
  if Configuration.FullScreenAtLaunch then
    WindowState:=wsMaximized
  else
    if Configuration.MainFormPositionByCenter then
      begin
        Position:=poScreenCenter;
        Configuration.MainFormPositionByCenter:=False;
      end;

  ProcedureFooter;
end;

procedure TMainForm.Do_Report;
var
  ReportForm: TReportForm;
  iBusy: integer;
begin
  ProcedureHeader('Процедура отображения окна '+sReportFormSuffix, '{0B2728D4-5577-4D1E-9F51-3F40A61BA774}');

  ReportForm:=TReportForm.Create(Self);
  with ReportForm do
    try
      PreShowModal(sReportFormSuffix, iBusy);
      ShowModal;
    finally
      PostShowModal(sReportFormSuffix, iBusy);
      { TODO : дописать! }
      // if ModalResult=mrOk then
      // Do_ApplyConfiguration;
      Free;
    end;

  ProcedureFooter;
end;

procedure TMainForm.Action_MultibufferExecute(Sender: TObject);
var
  MultiBufferForm: TMultiBufferForm;
  iBusy: integer;
  i: integer;
  aListItem: TListItem;
begin
  ProcedureHeader('Процедура отображения окна '+sMultiBufferFormSuffix, '{0B2728D4-5577-4D1E-9F51-3F40A61BA774}');

  MultiBufferForm:=TMultiBufferForm.Create(Self);
  with MultiBufferForm do
    try
      for i:=0 to MeasuresMultiBuffer.Count-1 do
        begin
          aListItem:=lvBuffer.Items.Add;
          aListItem.Caption:=IntToStr(i);
          aListItem.SubItems.Add(MeasuresMultiBuffer[i]._Type+'|'+MeasuresMultiBuffer[i]._Name+'|'+MeasuresMultiBuffer[i]._Author+'|'+MeasuresMultiBuffer[i]._Producer+'|'+MeasuresMultiBuffer[i]._Performer+'|'+MeasuresMultiBuffer[i]._Organizer+'|'+
            MeasuresMultiBuffer[i]._TicketPrice+'|'+string(MeasuresMultiBuffer[i]._OtherInfoPlane));
        end;
      PreShowModal(sMultiBufferFormSuffix, iBusy);
      ShowModal;
    finally
      PostShowModal(sMultiBufferFormSuffix, iBusy);
      { TODO : дописать! }
      // if ModalResult=mrOk then
      // Do_ApplyConfiguration;
      Free;
    end;

  ProcedureFooter;
end;

procedure TMainForm.Action_ViewMessageExecute(Sender: TObject);
var
  ViewMessageForm: TViewMessageForm;
  iBusy: integer;
begin
  ProcedureHeader('Процедура отображения окна '+sViewMessageFormSuffix, '{347244A6-22DF-44DF-873B-2B55FC5112B9}');

  ViewMessageForm:=TViewMessageForm.Create(Self);
  with ViewMessageForm do
    try
      PreShowModal(sViewMessageFormSuffix, iBusy);
      ShowModal;
    finally
      PostShowModal(sViewMessageFormSuffix, iBusy);
      { TODO : дописать! }
      // if ModalResult=mrOk then
      // Do_ApplyConfiguration;
      Free;
    end;

  ProcedureFooter;
end;

procedure TMainForm.Action_CreateMessageExecute(Sender: TObject);
var
  CreateMessageForm: TCreateMessageForm;
  iBusy: integer;
begin
  ProcedureHeader('Процедура отображения окна '+sCreateMessageFormSuffix, '{F356F5DA-5FF7-4F78-A80E-1C563B96AF6D}');

  CreateMessageForm:=TCreateMessageForm.Create(Self);
  with CreateMessageForm do
    try
      PreShowModal(sCreateMessageFormSuffix, iBusy);
      ShowModal;
    finally
      PostShowModal(sCreateMessageFormSuffix, iBusy);
      { TODO : дописать! }
      // if ModalResult=mrOk then
      // Do_ApplyConfiguration;
      Free;
    end;

  ProcedureFooter;
end;

procedure TMainForm.Button1Click(Sender: TObject);
var
  c: TMeasureDataClass;
begin
  c:=TMeasureDataClass.Create;
  c._OrganizationID:=1;
  c._Type:='1';
  c._Name:='2';
  c.Normalize;
  MeasuresMultiBuffer.Append(c);
end;

procedure TMainForm.N21Click(Sender: TObject);
var
  c: TMeasureDataClass;
begin
  c:=TMeasureDataClass.Create;
  c._OrganizationID:=1;
  c._Type:='1';
  c._Name:='2';
  c.Normalize;
  MeasuresMultiBuffer.Append(c);
end;

procedure TMainForm.Action_AddPhoneExecute(Sender: TObject);
var
  AddPhoneForm: TAddEditPhoneForm;
  iBusy: integer;
begin
  ProcedureHeader('Процедура отображения окна '+sAddPhoneFormSuffix, '{83D61BCA-0CB5-4542-9D0A-9137AE9C733C}');

  AddPhoneForm:=TAddEditPhoneForm.Create(Self);
  with AddPhoneForm do
    try
      Caption:='Добавление номера телефона';
      PreShowModal(sAddPhoneFormSuffix, iBusy);
      ShowModal;
    finally
      PostShowModal(sAddPhoneFormSuffix, iBusy);
      { TODO : дописать! }
      // if ModalResult=mrOk then
      // Do_ApplyConfiguration;
      Free;
    end;

  ProcedureFooter;
end;

procedure TMainForm.Action_EditPhoneExecute(Sender: TObject);
var
  EditPhoneForm: TAddEditPhoneForm;
  iBusy: integer;
begin
  ProcedureHeader('Процедура отображения окна '+sEditPhoneFormSuffix, '{36EA36F5-EDE2-4A3A-A7DE-BB9790D3F50F}');

  EditPhoneForm:=TAddEditPhoneForm.Create(Self);
  with EditPhoneForm do
    try
      Caption:='Исправление номера телефона';
      PreShowModal(sEditPhoneFormSuffix, iBusy);
      ShowModal;
    finally
      PostShowModal(sEditPhoneFormSuffix, iBusy);
      { TODO : дописать! }
      // if ModalResult=mrOk then
      // Do_ApplyConfiguration;
      Free;
    end;

  ProcedureFooter;
end;

end.