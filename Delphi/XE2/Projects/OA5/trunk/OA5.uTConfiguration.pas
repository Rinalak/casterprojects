﻿unit OA5.uTConfiguration;

interface

uses
  System.Types,
  System.IniFiles,
  CastersPackage.uLogKeeperData,
  CastersPackage.uMysql,
  CastersPackage.uTIniFileDataStorage,
  OA5.uTMySQLConnection;

type
  TReportFolders=(rfTempFolder, rfApplicationFolder, rfCustomFolder);

  TFormPosition=record
    bCenter: boolean;
    x, y: integer;
  end;

const
  // вкладка "настройки интерфейса"
  DefaultValue_ShowSplashAtStart=True;
  DefaultValue_ShowToolbar=True;
  DefaultValue_ShowStatusbar=True;
  DefaultValue_ShowEditboxHints=True;
  DefaultValue_ShowCommonSearchEditbox=True;
  DefaultValue_ShowID=False;
  DefaultValue_UseMultibuffer=True;
  DefaultValue_ShowConfirmationOnQuit=True;

  // вкладка "настройки ведения протокола работы"
  DefaultValue_EnableLog=True;
  DefaultValue_KeepLogTypes=[lmtError, lmtWarning, lmtInfo];
  DefaultValue_FlushLogOnExit=True;
  DefaultValue_FlushLogOnStringsQuantity=True;
  DefaultValue_FlushLogOnStringsQuantityValue=10000;
  DefaultValue_FlushLogOnClearingLog=True;
  DefaultValue_FlushLogOnApply=False;
  DefaultValue_CustomLogClientFile=False;
  DefaultValue_CustomLogClientFileValue='';

  // вкладка "настройки положения диалоговых окон"
  DefaultValue_FormPosition_Center=True;
  DefaultValue_FormPosition_x=0;
  DefaultValue_FormPosition_y=0;

  // вкладка "настройки процедуры логирования"
  DefaultValue_StoreLogin=False;
  DefaultValue_StorePassword=False;
  DefaultValue_Login='';
  DefaultValue_Password='';
  DefaultValue_AutoLogon=False;

  // вкладка "подключения к серверу базы данных услуги"
  DefaultValue_RNE4Server_Host='RNE4SERVER';
  DefaultValue_RNE4Server_Port=MYSQL_PORT;
  DefaultValue_RNE4Server_Timeout=30;
  DefaultValue_RNE4Server_Compression=True;
  DefaultValue_RNE4Server_Login='root';
  DefaultValue_RNE4Server_Password='sqladmin';
  DefaultValue_RNE4Server_Database='rne4';

  // вкладка "подключения к серверу системы обмена сообщениями"
  DefaultValue_MessagesServer_Host='RNE4MESSAGESSERVER';
  DefaultValue_MessagesServer_Port=MYSQL_PORT;
  DefaultValue_MessagesServer_Timeout=30;
  DefaultValue_MessagesServer_Compression=True;
  DefaultValue_MessagesServer_Login='root';
  DefaultValue_MessagesServer_Password='sqladmin';
  DefaultValue_MessagesServer_Database='rne4messages';

  // вкладка "настройки формирования отчётов"
  DefaultValue_ReportFolder=rfApplicationFolder;
  DefaultValue_CustomReportFolderValue='';
  DefaultValue_DontDemandOverwriteConfirmation=False;
  DefaultValue_AskForFileName=True;

  // вкладка "настройки прочие"
  DefaultValue_LaunchAtStartup=False;
  DefaultValue_PlaySoundOnComplete=True;
  DefaultValue_EnableAutoGetMessages=True;
  DefaultValue_AutoGetMessagesCycleDurationValue=5;
  DefaultValue_CustomHelpFile=False;
  DefaultValue_CustomHelpFileValue='';

  // вкладка "настройки главного окна"
  DefaultValue_MainFormLeft=0;
  DefaultValue_MainFormTop=0;
  DefaultValue_MainFormWidth=800;
  DefaultValue_MainFormHeight=600;
  DefaultValue_MainFormPositionByCenter=True;
  DefaultValue_FullScreenAtLaunch=False;

  // вкладка "настройки отображения информации"
  DefaultValue_OrganizationPanelHeightValue=100;
  DefaultValue_OrganizationPanelHalfHeight=True;
  DefaultValue_DataPanelWidthValue=340;
  DefaultValue_DataPanelHalfWidth=False;
  DefaultValue_ShowDataInOtherInfoPanel=True;
  DefaultValue_ShowMeasuresListAsRichEdit=True;
  DefaultValue_MarkSearchedStrings=True;
  DefaultValue_PutTownAtTheEnd=False;

type
  TConfiguration=class(TIniFileDataStorage)
  strict private
    FFileName: string;
    FConfigurationFormPage: integer;
    FLogin: string;
    FPassword: string;

    // вкладка "настройки интерфейса"
    FShowSplashAtStart: boolean; // Отображать окно "О программе..." при запуске
    FShowToolbar: boolean; // Отображать панель кнопок
    FShowStatusbar: boolean; // Отображать панель статуса
    FShowEditboxHints: boolean; // Отображать всплывающие подсказки для полей ввода
    FShowCommonSearchEditbox: boolean; // Отображать единое поле ввода для поиска данных
    FShowID: boolean; // Отображать поле ID записей базы данных при работе программы
    FUseMultibuffer: boolean; // Использовать мультибуфер для операций копирования мероприятий
    FShowConfirmationOnQuit: boolean; // Требовать подтверждение при выходе из программы

    // вкладка "настройки ведения протокола работы"
    FEnableLog: boolean; // Вести лог работы программы
    FKeepLogTypes: TLogMessagesTypes; // выводить сообщения перечисленных типов
    FFlushLogOnExit: boolean; // Сбрасывать протокол работы в текстовый файл при завершении работы программы
    FFlushLogOnStringsQuantity: boolean; // Сбрасывать протокол работы в текстовый файл при достижении количества строк
    FFlushLogOnStringsQuantityValue: integer; // Сбрасывать протокол работы в текстовый файл при достижении количества строк (непосредственно количество)
    FFlushLogOnClearingLog: boolean; // Сбрасывать протокол работы в текстовый файл при операции очистки протокола
    FFlushLogOnApply: boolean; // Сбрасывать протокол работы в текстовый файл при нажатии кнопки "Применить"
    FCustomLogClientFile: boolean; // Использовать внешний клиент протоколирования
    FCustomLogClientFileValue: string; // имя файла внешнего клиента протоколирования

    // вкладка "настройки положения диалоговых окон"
    FLoginFormPosition: TFormPosition;
    FConfigurationFormPosition: TFormPosition;
    FUsersFormPosition: TFormPosition;
    FSetPasswordFormPosition: TFormPosition;
    FReportFormPosition: TFormPosition;
    FMaintenanceFormPosition: TFormPosition;
    FClearingFormPosition: TFormPosition;
    FViewMessagesFormPosition: TFormPosition;
    FCreateMessageFormPosition: TFormPosition;
    FViewMessageFormPosition: TFormPosition;
    FPhonesFormPosition: TFormPosition;
    FAddEditPhoneFormPosition: TFormPosition;
    FAddMassMsrFormPosition: TFormPosition;
    FPermissionsFormPosition: TFormPosition;
    FMultibufferFormPosition: TFormPosition;

    // вкладка "настройки процедуры логирования"
    FStoreLogin: boolean; // Сохранять логин последнего пользователя
    FStorePassword: boolean; // Сохранять пароль последнего пользователя
    FAutoLogon: boolean; // Выполнять автоматический вход, используя сохранённые логин и пароль пользователя

    // вкладка "настройки подключения к серверу базы данных услуги"
    FRNE4Server: TMySQLConnection;

    // вкладка "настройки подключения к серверу системы обмена сообщениями"
    FMessagesServer: TMySQLConnection;

    // вкладка "настройки формирования отчётов"
    FReportFolder: TReportFolders; //
    FCustomReportFolderValue: string; //
    FDontDemandOverwriteConfirmation: boolean; //
    FAskForFileName: boolean; //

    // вкладка "настройки списка автозамены"

    // вкладка "настройки прочие"
    FLaunchAtStartup: boolean;
    FPlaySoundOnComplete: boolean;
    FEnableAutoGetMessages: boolean;
    FAutoGetMessagesCycleDurationValue: integer;
    FCustomHelpFile: boolean;
    FCustomHelpFileValue: string;

    // вкладка "настройки главного окна"
    FMainFormLeft: integer;
    FMainFormTop: integer;
    FMainFormWidth: integer;
    FMainFormHeight: integer;
    FMainFormPositionByCenter: boolean;
    FFullScreenAtLaunch: boolean;

    // вкладка "настройки отображения информации"
    FOrganizationPanelHeightValue: integer; // Высота панели организаций
    FOrganizationPanelHalfHeight: boolean; // половина высоты окна
    FDataPanelWidthValue: integer; // Ширина панели данных
    FDataPanelHalfWidth: boolean; // половина ширины окна
    FShowDataInOtherInfoPanel: boolean; // В режиме просмотра показывать данные в окне прочей информации
    FShowMeasuresListAsRichEdit: boolean; // В режиме просмотра объединять меропрятия в общий спиcок
    FMarkSearchedStrings: boolean; // В режиме просмотра выделять искомые фрагменты строк
    FPutTownAtTheEnd: boolean; // Поместить название города в конец строки адреса

    procedure SetUseLog(const Value: boolean);
    procedure SetStoreLogin(const Value: boolean);
    procedure SetStorePassword(const Value: boolean);
    procedure SetAutoLogon(const Value: boolean);
    procedure SetKeepLogTypes(const Value: TLogMessagesTypes);
    function GetTempFolder: string;
    function GetApplicationFolder: string;
    function GetReportFolderValue: string;
    procedure SetFileName(const Value: string);
    procedure SetAddEditPhoneFormPosition(const Value: TFormPosition);
    procedure SetAddMassMsrFormPosition(const Value: TFormPosition);
    procedure SetPermissionsFormPosition(const Value: TFormPosition);
    procedure SetMultibufferFormPosition(const Value: TFormPosition);
    procedure SetAskForFileName(const Value: boolean);
    procedure SetAutoGetMessagesCycleDurationValue(const Value: integer);
    procedure SetClearingFormPosition(const Value: TFormPosition);
    procedure SetCustomHelpFile(const Value: boolean);
    procedure SetCustomHelpFileValue(const Value: string);
    procedure SetCustomLogClientFile(const Value: boolean);
    procedure SetCustomLogClientFileValue(const Value: string);
    procedure SetDataPanelHalfWidth(const Value: boolean);
    procedure SetDataPanelWidthValue(const Value: integer);
    procedure SetDontDemandOverwriteConfirmation(const Value: boolean);
    procedure SetEnableAutoGetMessages(const Value: boolean);
    procedure SetFlushLogOnApply(const Value: boolean);
    procedure SetFlushLogOnClearingLog(const Value: boolean);
    procedure SetFlushLogOnExit(const Value: boolean);
    procedure SetFlushLogOnStringsQuantity(const Value: boolean);
    procedure SetFlushLogOnStringsQuantityValue(const Value: integer);
    procedure SetFullScreenAtLaunch(const Value: boolean);
    procedure SetLaunchAtStartup(const Value: boolean);
    procedure SetLoginFormPosition(const Value: TFormPosition);
    procedure SetMainFormPositionByCenter(const Value: boolean);
    procedure SetMaintenanceFormPosition(const Value: TFormPosition);
    procedure SetMarkSearchedStrings(const Value: boolean);
    procedure SetMessagesServer(const Value: TMySQLConnection);
    procedure SetConfigurationFormPosition(const Value: TFormPosition);
    procedure SetOrganizationPanelHalfHeight(const Value: boolean);
    procedure SetOrganizationPanelHeightValue(const Value: integer);
    procedure SetPhonesFormPosition(const Value: TFormPosition);
    procedure SetPlaySoundOnComplete(const Value: boolean);
    procedure SetPutTownAtTheEnd(const Value: boolean);
    procedure SetReportFolder(const Value: TReportFolders);
    procedure SetRNE4Server(const Value: TMySQLConnection);
    procedure SetCustomReportFolderValue(const Value: string);
    procedure SetSetPasswordFormPosition(const Value: TFormPosition);
    procedure SetShowSplashAtStart(const Value: boolean);
    procedure SetShowCommonSearchEditbox(const Value: boolean);
    procedure SetShowConfirmationOnQuit(const Value: boolean);
    procedure SetShowDataInOtherInfoPanel(const Value: boolean);
    procedure SetShowEditboxHints(const Value: boolean);
    procedure SetShowID(const Value: boolean);
    procedure SetShowMeasuresListAsRichEdit(const Value: boolean);
    procedure SetShowStatusbar(const Value: boolean);
    procedure SetShowToolbar(const Value: boolean);
    procedure SetReportFormPosition(const Value: TFormPosition);
    procedure SetUseMultibuffer(const Value: boolean);
    procedure SetUsersFormPosition(const Value: TFormPosition);
    procedure SetViewMessagesFormPosition(const Value: TFormPosition);
    procedure SetMainFormHeight(const Value: integer);
    procedure SetMainFormLeft(const Value: integer);
    procedure SetMainFormTop(const Value: integer);
    procedure SetMainFormWidth(const Value: integer);
    procedure SetCreateMessageFormPosition(const Value: TFormPosition);
    procedure SetViewMessageFormPosition(const Value: TFormPosition);
    procedure SetLogin(const Value: string);
    procedure SetPassword(const Value: string);
  protected
    procedure Loading(const IniFile: TIniFile); override;
    procedure Saving(const IniFile: TIniFile); override;
    procedure AfterLoad; override;
    procedure BeforeSave; override;
  public
    // sDefaultAction: string;
    // bImmediatelyQuit: boolean;
    // iOrgSortColumn: integer;
    // iMsrSortColumn: integer;

    constructor Create(const IniFileName: string=''); override;
    destructor Destroy; override;

    property FileName: string read FFileName write SetFileName stored False;
    property ConfigurationFormPage: integer read FConfigurationFormPage write FConfigurationFormPage default 0;

    // вкладка "настройки интерфейса"
    property ShowSplashAtStart: boolean read FShowSplashAtStart write SetShowSplashAtStart default DefaultValue_ShowSplashAtStart;
    property ShowToolbar: boolean read FShowToolbar write SetShowToolbar default DefaultValue_ShowToolbar;
    property ShowStatusbar: boolean read FShowStatusbar write SetShowStatusbar default DefaultValue_ShowStatusbar;
    property ShowEditboxHints: boolean read FShowEditboxHints write SetShowEditboxHints default DefaultValue_ShowEditboxHints;
    property ShowCommonSearchEditbox: boolean read FShowCommonSearchEditbox write SetShowCommonSearchEditbox default DefaultValue_ShowCommonSearchEditbox;
    property ShowID: boolean read FShowID write SetShowID default DefaultValue_ShowID;
    property UseMultibuffer: boolean read FUseMultibuffer write SetUseMultibuffer default DefaultValue_UseMultibuffer;
    property ShowConfirmationOnQuit: boolean read FShowConfirmationOnQuit write SetShowConfirmationOnQuit default DefaultValue_ShowConfirmationOnQuit;

    // вкладка "настройки ведения протокола работы"
    property EnableLog: boolean read FEnableLog write SetUseLog default DefaultValue_EnableLog;
    property KeepLogTypes: TLogMessagesTypes read FKeepLogTypes write SetKeepLogTypes default DefaultValue_KeepLogTypes;
    property FlushLogOnExit: boolean read FFlushLogOnExit write SetFlushLogOnExit default DefaultValue_FlushLogOnExit;
    property FlushLogOnStringsQuantity: boolean read FFlushLogOnStringsQuantity write SetFlushLogOnStringsQuantity default DefaultValue_FlushLogOnStringsQuantity;
    property FlushLogOnStringsQuantityValue: integer read FFlushLogOnStringsQuantityValue write SetFlushLogOnStringsQuantityValue default DefaultValue_FlushLogOnStringsQuantityValue;
    property FlushLogOnClearingLog: boolean read FFlushLogOnClearingLog write SetFlushLogOnClearingLog default DefaultValue_FlushLogOnClearingLog;
    property FlushLogOnApply: boolean read FFlushLogOnApply write SetFlushLogOnApply default DefaultValue_FlushLogOnApply;
    property CustomLogClientFile: boolean read FCustomLogClientFile write SetCustomLogClientFile default DefaultValue_CustomLogClientFile;
    property CustomLogClientFileValue: string read FCustomLogClientFileValue write SetCustomLogClientFileValue stored False;

    // вкладка "настройки положения диалоговых окон"
    property LoginFormPosition: TFormPosition read FLoginFormPosition write SetLoginFormPosition stored False;
    property ConfigurationFormPosition: TFormPosition read FConfigurationFormPosition write SetConfigurationFormPosition stored False;
    property UsersFormPosition: TFormPosition read FUsersFormPosition write SetUsersFormPosition stored False;
    property SetPasswordFormPosition: TFormPosition read FSetPasswordFormPosition write SetSetPasswordFormPosition stored False;
    property ReportFormPosition: TFormPosition read FReportFormPosition write SetReportFormPosition stored False;
    property MaintenanceFormPosition: TFormPosition read FMaintenanceFormPosition write SetMaintenanceFormPosition stored False;
    property ClearingFormPosition: TFormPosition read FClearingFormPosition write SetClearingFormPosition stored False;
    property ViewMessagesFormPosition: TFormPosition read FViewMessagesFormPosition write SetViewMessagesFormPosition stored False;
    property CreateMessageFormPosition: TFormPosition read FCreateMessageFormPosition write SetCreateMessageFormPosition stored False;
    property ViewMessageFormPosition: TFormPosition read FViewMessageFormPosition write SetViewMessageFormPosition stored False;
    property PhonesFormPosition: TFormPosition read FPhonesFormPosition write SetPhonesFormPosition stored False;
    property AddEditPhoneFormPosition: TFormPosition read FAddEditPhoneFormPosition write SetAddEditPhoneFormPosition stored False;
    property AddMassMsrFormPosition: TFormPosition read FAddMassMsrFormPosition write SetAddMassMsrFormPosition stored False;
    property PermissionsFormPosition: TFormPosition read FPermissionsFormPosition write SetPermissionsFormPosition stored False;
    property MultibufferFormPosition: TFormPosition read FMultibufferFormPosition write SetMultibufferFormPosition stored False;

    // вкладка "настройки процедуры логирования"
    property StoreLogin: boolean read FStoreLogin write SetStoreLogin default DefaultValue_StoreLogin; // нужно ли хранить последний введённый логин
    property Login: string read FLogin write SetLogin stored False;
    property StorePassword: boolean read FStorePassword write SetStorePassword default DefaultValue_StorePassword; // нужно ли хранить последний введённый пароль
    property Password: string read FPassword write SetPassword stored False;
    property AutoLogon: boolean read FAutoLogon write SetAutoLogon default DefaultValue_AutoLogon; // нужно ли выполнять автологирование

    // вкладка "настройки подключения к серверу базы данных услуги"
    property RNE4Server: TMySQLConnection read FRNE4Server write SetRNE4Server stored False;

    // вкладка "настройки подключения к серверу системы обмена сообщениями"
    property MessagesServer: TMySQLConnection read FMessagesServer write SetMessagesServer stored False;

    // вкладка "настройки формирования отчётов"
    property ReportFolder: TReportFolders read FReportFolder write SetReportFolder default DefaultValue_ReportFolder;
    property ReportFolderValue: string read GetReportFolderValue stored False;
    property CustomReportFolderValue: string read FCustomReportFolderValue write SetCustomReportFolderValue stored False;
    property DontDemandOverwriteConfirmation: boolean read FDontDemandOverwriteConfirmation write SetDontDemandOverwriteConfirmation default DefaultValue_DontDemandOverwriteConfirmation;
    property AskForFileName: boolean read FAskForFileName write SetAskForFileName default DefaultValue_AskForFileName;

    // вкладка "настройки прочие"
    property LaunchAtStartup: boolean read FLaunchAtStartup write SetLaunchAtStartup default DefaultValue_LaunchAtStartup;
    property PlaySoundOnComplete: boolean read FPlaySoundOnComplete write SetPlaySoundOnComplete default DefaultValue_PlaySoundOnComplete;
    property EnableAutoGetMessages: boolean read FEnableAutoGetMessages write SetEnableAutoGetMessages default DefaultValue_EnableAutoGetMessages;
    property AutoGetMessagesCycleDurationValue: integer read FAutoGetMessagesCycleDurationValue write SetAutoGetMessagesCycleDurationValue default DefaultValue_AutoGetMessagesCycleDurationValue;
    property CustomHelpFile: boolean read FCustomHelpFile write SetCustomHelpFile default DefaultValue_CustomHelpFile;
    property CustomHelpFileValue: string read FCustomHelpFileValue write SetCustomHelpFileValue stored False;

    // вкладка "настройки главного окна"
    property MainFormLeft: integer read FMainFormLeft write SetMainFormLeft default DefaultValue_MainFormLeft;
    property MainFormTop: integer read FMainFormTop write SetMainFormTop default DefaultValue_MainFormTop;
    property MainFormWidth: integer read FMainFormWidth write SetMainFormWidth default DefaultValue_MainFormWidth;
    property MainFormHeight: integer read FMainFormHeight write SetMainFormHeight default DefaultValue_MainFormHeight;
    property MainFormPositionByCenter: boolean read FMainFormPositionByCenter write SetMainFormPositionByCenter default DefaultValue_MainFormPositionByCenter;
    property FullScreenAtLaunch: boolean read FFullScreenAtLaunch write SetFullScreenAtLaunch default DefaultValue_FullScreenAtLaunch;

    // вкладка "настройки отображения информации"
    property OrganizationPanelHeightValue: integer read FOrganizationPanelHeightValue write SetOrganizationPanelHeightValue default DefaultValue_OrganizationPanelHeightValue;
    property OrganizationPanelHalfHeight: boolean read FOrganizationPanelHalfHeight write SetOrganizationPanelHalfHeight default DefaultValue_OrganizationPanelHalfHeight;
    property DataPanelWidthValue: integer read FDataPanelWidthValue write SetDataPanelWidthValue default DefaultValue_DataPanelWidthValue;
    property DataPanelHalfWidth: boolean read FDataPanelHalfWidth write SetDataPanelHalfWidth default DefaultValue_DataPanelHalfWidth;
    property ShowDataInOtherInfoPanel: boolean read FShowDataInOtherInfoPanel write SetShowDataInOtherInfoPanel default DefaultValue_ShowDataInOtherInfoPanel;
    property ShowMeasuresListAsRichEdit: boolean read FShowMeasuresListAsRichEdit write SetShowMeasuresListAsRichEdit default DefaultValue_ShowMeasuresListAsRichEdit;
    property MarkSearchedStrings: boolean read FMarkSearchedStrings write SetMarkSearchedStrings default DefaultValue_MarkSearchedStrings;
    property PutTownAtTheEnd: boolean read FPutTownAtTheEnd write SetPutTownAtTheEnd default DefaultValue_PutTownAtTheEnd;
  end;

implementation

uses
  Vcl.Controls,
  System.SysUtils,
  System.Classes,
  Winapi.Windows,
  Vcl.Forms;

resourcestring
  TEXT_INIFILESECTION_INTERFACE='Интерфейс';
  TEXT_INIFILESECTION_LOGS='Протоколирование';
  TEXT_INIFILESECTION_DIALOGS_POSITION='Положение диалоговых окон';
  TEXT_INIFILESECTION_IDENTIFICATION='Идентификация';
  TEXT_INIFILESECTION_SERVERS='Сервера и базы данных';
  TEXT_INIFILESECTION_REPORTS='Формирование отчётов';
  TEXT_INIFILESECTION_OTHER='Прочие';
  TEXT_INIFILESECTION_MAINFORM='Главное окно';
  TEXT_INIFILESECTION_INFO='Отображение информации';

procedure TConfiguration.Loading(const IniFile: TIniFile);
var
  FormPosition: TFormPosition;
begin
  inherited;
  with IniFile do
    begin
      // вкладка "настройки интерфейса"
      ShowSplashAtStart:=ReadBool(TEXT_INIFILESECTION_INTERFACE, 'bShowSplashAtStart', DefaultValue_ShowSplashAtStart);
      ShowToolbar:=ReadBool(TEXT_INIFILESECTION_INTERFACE, 'bShowToolbar', DefaultValue_ShowToolbar);
      ShowStatusbar:=ReadBool(TEXT_INIFILESECTION_INTERFACE, 'bShowStatusbar', DefaultValue_ShowStatusbar);
      ShowEditboxHints:=ReadBool(TEXT_INIFILESECTION_INTERFACE, 'bShowEditboxHints', DefaultValue_ShowEditboxHints);
      ShowCommonSearchEditbox:=ReadBool(TEXT_INIFILESECTION_INTERFACE, 'bShowCommonSearchEditbox', DefaultValue_ShowCommonSearchEditbox);
      ShowID:=ReadBool(TEXT_INIFILESECTION_INTERFACE, 'bShowID', DefaultValue_ShowID);
      UseMultibuffer:=ReadBool(TEXT_INIFILESECTION_INTERFACE, 'bUseMultibuffer', DefaultValue_UseMultibuffer);
      ShowConfirmationOnQuit:=ReadBool(TEXT_INIFILESECTION_INTERFACE, 'bShowConfirmationOnQuit', DefaultValue_ShowConfirmationOnQuit);

      // вкладка "настройки ведения протокола работы"
      EnableLog:=ReadBool(TEXT_INIFILESECTION_LOGS, 'bEnableLog', DefaultValue_EnableLog);
      FlushLogOnExit:=ReadBool(TEXT_INIFILESECTION_LOGS, 'bFlushLogOnExit', DefaultValue_FlushLogOnExit);
      FlushLogOnStringsQuantity:=ReadBool(TEXT_INIFILESECTION_LOGS, 'bFlushLogOnStringsQuantity', DefaultValue_FlushLogOnStringsQuantity);
      FlushLogOnStringsQuantityValue:=ReadInteger(TEXT_INIFILESECTION_LOGS, 'iFlushLogOnStringsQuantityValue', DefaultValue_FlushLogOnStringsQuantityValue);
      FlushLogOnClearingLog:=ReadBool(TEXT_INIFILESECTION_LOGS, 'bFlushLogOnClearingLog', DefaultValue_FlushLogOnClearingLog);
      FlushLogOnApply:=ReadBool(TEXT_INIFILESECTION_LOGS, 'bFlushLogOnApply', DefaultValue_FlushLogOnApply);
      CustomLogClientFile:=ReadBool(TEXT_INIFILESECTION_LOGS, 'bCustomLogClientFile', DefaultValue_CustomLogClientFile);
      CustomLogClientFileValue:=ReadString(TEXT_INIFILESECTION_LOGS, 'sCustomLogClientFileValue', DefaultValue_CustomLogClientFileValue);
      if ReadBool(TEXT_INIFILESECTION_LOGS, 'bKeepErrorLog', lmtError in DefaultValue_KeepLogTypes) then
        KeepLogTypes:=KeepLogTypes+[lmtError]
      else
        KeepLogTypes:=KeepLogTypes-[lmtError];
      if ReadBool(TEXT_INIFILESECTION_LOGS, 'bKeepWarningLog', lmtWarning in DefaultValue_KeepLogTypes) then
        KeepLogTypes:=KeepLogTypes+[lmtWarning]
      else
        KeepLogTypes:=KeepLogTypes-[lmtWarning];
      if ReadBool(TEXT_INIFILESECTION_LOGS, 'bKeepInfoLog', lmtInfo in DefaultValue_KeepLogTypes) then
        KeepLogTypes:=KeepLogTypes+[lmtInfo]
      else
        KeepLogTypes:=KeepLogTypes-[lmtInfo];
      if ReadBool(TEXT_INIFILESECTION_LOGS, 'bKeepSQLLog', lmtSQL in DefaultValue_KeepLogTypes) then
        KeepLogTypes:=KeepLogTypes+[lmtSQL]
      else
        KeepLogTypes:=KeepLogTypes-[lmtSQL];
      if ReadBool(TEXT_INIFILESECTION_LOGS, 'bKeepDebugLog', lmtDebug in DefaultValue_KeepLogTypes) then
        KeepLogTypes:=KeepLogTypes+[lmtDebug]
      else
        KeepLogTypes:=KeepLogTypes-[lmtDebug];

      // вкладка "настройки положения диалоговых окон"
      with FormPosition do
        begin
          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'LoginFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'LoginFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'LoginFormPosition.iy', DefaultValue_FormPosition_y);
          LoginFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ConfigurationFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ConfigurationFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ConfigurationFormPosition.iy', DefaultValue_FormPosition_y);
          ConfigurationFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'UsersFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'UsersFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'UsersFormPosition.iy', DefaultValue_FormPosition_y);
          UsersFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'SetPasswordFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'SetPasswordFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'SetPasswordFormPosition.iy', DefaultValue_FormPosition_y);
          SetPasswordFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ReportFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ReportFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ReportFormPosition.iy', DefaultValue_FormPosition_y);
          ReportFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'MaintenanceFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'MaintenanceFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'MaintenanceFormPosition.iy', DefaultValue_FormPosition_y);
          MaintenanceFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ClearingFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ClearingFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ClearingFormPosition.iy', DefaultValue_FormPosition_y);
          ClearingFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ViewMessagesFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ViewMessagesFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ViewMessagesFormPosition.iy', DefaultValue_FormPosition_y);
          ViewMessagesFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'CreateMessageFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'CreateMessageFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'CreateMessageFormPosition.iy', DefaultValue_FormPosition_y);
          CreateMessageFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ViewMessageFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ViewMessageFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'ViewMessageFormPosition.iy', DefaultValue_FormPosition_y);
          ViewMessageFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'PhonesFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'PhonesFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'PhonesFormPosition.iy', DefaultValue_FormPosition_y);
          PhonesFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'AddEditPhoneFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'AddEditPhoneFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'AddEditPhoneFormPosition.iy', DefaultValue_FormPosition_y);
          AddEditPhoneFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'AddMassMsrFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'AddMassMsrFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'AddMassMsrFormPosition.iy', DefaultValue_FormPosition_y);
          AddMassMsrFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'PermissionsFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'PermissionsFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'PermissionsFormPosition.iy', DefaultValue_FormPosition_y);
          PermissionsFormPosition:=FormPosition;

          bCenter:=ReadBool(TEXT_INIFILESECTION_DIALOGS_POSITION, 'MultibufferFormPosition.bCenter', DefaultValue_FormPosition_Center);
          x:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'MultibufferFormPosition.ix', DefaultValue_FormPosition_x);
          y:=ReadInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, 'MultibufferFormPosition.iy', DefaultValue_FormPosition_y);
          MultibufferFormPosition:=FormPosition;
        end;

      // вкладка "настройки процедуры логирования"
      StoreLogin:=ReadBool(TEXT_INIFILESECTION_IDENTIFICATION, 'bStoreLogin', DefaultValue_StoreLogin);
      if StoreLogin then
        Login:=ReadString(TEXT_INIFILESECTION_IDENTIFICATION, 'sLogin', '')
      else
        Login:='';
      StorePassword:=ReadBool(TEXT_INIFILESECTION_IDENTIFICATION, 'bStorePassword', DefaultValue_StorePassword);
      if StorePassword then
        Password:=ReadString(TEXT_INIFILESECTION_IDENTIFICATION, 'sPassword', '')
      else
        Password:='';
      AutoLogon:=ReadBool(TEXT_INIFILESECTION_IDENTIFICATION, 'bAutoLogon', DefaultValue_AutoLogon);

      // вкладка "подключения к серверу базы данных услуги"
      with RNE4Server do
        begin
          Host:=ReadString(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.sHost', DefaultValue_RNE4Server_Host);
          Port:=ReadInteger(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.iPort', DefaultValue_RNE4Server_Port);
          Timeout:=ReadInteger(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.iTimeout', DefaultValue_RNE4Server_Timeout);
          Compression:=ReadBool(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.bCompression', DefaultValue_RNE4Server_Compression);
          Login:=ReadString(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.sLogin', DefaultValue_RNE4Server_Login);
          Password:=ReadString(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.sPassword', DefaultValue_RNE4Server_Password);
          Database:=ReadString(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.sDatabase', DefaultValue_RNE4Server_Database);
        end;

      // вкладка "подключения к серверу системы обмена сообщениями"
      with MessagesServer do
        begin
          Host:=ReadString(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.sHost', DefaultValue_MessagesServer_Host);
          Port:=ReadInteger(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.iPort', DefaultValue_MessagesServer_Port);
          Timeout:=ReadInteger(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.iTimeout', DefaultValue_MessagesServer_Timeout);
          Compression:=ReadBool(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.bCompression', DefaultValue_MessagesServer_Compression);
          Login:=ReadString(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.sLogin', DefaultValue_MessagesServer_Login);
          Password:=ReadString(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.sPassword', DefaultValue_MessagesServer_Password);
          Database:=ReadString(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.sDatabase', DefaultValue_MessagesServer_Database);
        end;

      // вкладка "настройки формирования отчётов"
      ReportFolder:=TReportFolders(ReadInteger(TEXT_INIFILESECTION_REPORTS, 'iReportFolder', integer(rfApplicationFolder)));
      CustomReportFolderValue:=ReadString(TEXT_INIFILESECTION_REPORTS, 'sCustomReportFolderValue', '');
      DontDemandOverwriteConfirmation:=ReadBool(TEXT_INIFILESECTION_REPORTS, 'bDontDemandOverwriteConfirmation', False);
      AskForFileName:=ReadBool(TEXT_INIFILESECTION_REPORTS, 'bAskForFileName', True);

      // вкладка "настройки прочие"
      LaunchAtStartup:=ReadBool(TEXT_INIFILESECTION_OTHER, 'bLaunchAtStartup', DefaultValue_LaunchAtStartup);
      PlaySoundOnComplete:=ReadBool(TEXT_INIFILESECTION_OTHER, 'bPlaySoundOnComplete', DefaultValue_PlaySoundOnComplete);
      EnableAutoGetMessages:=ReadBool(TEXT_INIFILESECTION_OTHER, 'bEnableAutoGetMessages', DefaultValue_EnableAutoGetMessages);
      AutoGetMessagesCycleDurationValue:=ReadInteger(TEXT_INIFILESECTION_OTHER, 'iAutoGetMessagesCycleDurationValue', DefaultValue_AutoGetMessagesCycleDurationValue);
      CustomHelpFile:=ReadBool(TEXT_INIFILESECTION_OTHER, 'bCustomHelpFile', DefaultValue_CustomHelpFile);
      CustomHelpFileValue:=ReadString(TEXT_INIFILESECTION_OTHER, 'sCustomHelpFileValue', DefaultValue_CustomHelpFileValue);

      // вкладка "настройки главного окна"
      MainFormLeft:=ReadInteger(TEXT_INIFILESECTION_MAINFORM, 'iMainFormLeft', DefaultValue_MainFormLeft);
      MainFormTop:=ReadInteger(TEXT_INIFILESECTION_MAINFORM, 'iMainFormTop', DefaultValue_MainFormTop);
      MainFormWidth:=ReadInteger(TEXT_INIFILESECTION_MAINFORM, 'iMainFormWidth', DefaultValue_MainFormWidth);
      MainFormHeight:=ReadInteger(TEXT_INIFILESECTION_MAINFORM, 'iMainFormHeight', DefaultValue_MainFormHeight);
      MainFormPositionByCenter:=ReadBool(TEXT_INIFILESECTION_MAINFORM, 'bMainFormPositionByCenter', DefaultValue_MainFormPositionByCenter);
      FullScreenAtLaunch:=ReadBool(TEXT_INIFILESECTION_MAINFORM, 'bFullScreenAtLaunch', DefaultValue_FullScreenAtLaunch);

      // вкладка "настройки отображения информации"
      OrganizationPanelHeightValue:=ReadInteger(TEXT_INIFILESECTION_INFO, 'iOrganizationPanelHeightValue', DefaultValue_OrganizationPanelHeightValue);
      OrganizationPanelHalfHeight:=ReadBool(TEXT_INIFILESECTION_INFO, 'bOrganizationPanelHalfHeight', DefaultValue_OrganizationPanelHalfHeight);
      DataPanelWidthValue:=ReadInteger(TEXT_INIFILESECTION_INFO, 'iDataPanelWidthValue', DefaultValue_DataPanelWidthValue);
      DataPanelHalfWidth:=ReadBool(TEXT_INIFILESECTION_INFO, 'bOrganizationPanelHalfHeight', DefaultValue_DataPanelHalfWidth);
      ShowDataInOtherInfoPanel:=ReadBool(TEXT_INIFILESECTION_INFO, 'bShowDataInOtherInfoPanel', DefaultValue_ShowDataInOtherInfoPanel);
      ShowMeasuresListAsRichEdit:=ReadBool(TEXT_INIFILESECTION_INFO, 'bShowMeasuresListAsRichEdit', DefaultValue_ShowMeasuresListAsRichEdit);
      MarkSearchedStrings:=ReadBool(TEXT_INIFILESECTION_INFO, 'bMarkSearchedStrings', DefaultValue_MarkSearchedStrings);
      PutTownAtTheEnd:=ReadBool(TEXT_INIFILESECTION_INFO, 'bPutTownAtTheEnd', DefaultValue_PutTownAtTheEnd);
    end;
end;

procedure TConfiguration.Saving(const IniFile: TIniFile);

  procedure WriteFormPosition(IniFile: TIniFile; FormPosition: TFormPosition; const FormPositionName: string);
  begin
    with IniFile do
      begin
        WriteBool(TEXT_INIFILESECTION_DIALOGS_POSITION, FormPositionName+'.bCenter', FormPosition.bCenter);
        WriteInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, FormPositionName+'.ix', FormPosition.x);
        WriteInteger(TEXT_INIFILESECTION_DIALOGS_POSITION, FormPositionName+'.iy', FormPosition.y);
      end;
  end;

begin
  inherited;
  with IniFile do
    try
      // вкладка "настройки интерфейса"
      WriteBool(TEXT_INIFILESECTION_INTERFACE, 'bShowSplashAtStart', ShowSplashAtStart);
      WriteBool(TEXT_INIFILESECTION_INTERFACE, 'bShowToolbar', ShowToolbar);
      WriteBool(TEXT_INIFILESECTION_INTERFACE, 'bShowStatusbar', ShowStatusbar);
      WriteBool(TEXT_INIFILESECTION_INTERFACE, 'bShowEditboxHints', ShowEditboxHints);
      WriteBool(TEXT_INIFILESECTION_INTERFACE, 'bShowCommonSearchEditbox', ShowCommonSearchEditbox);
      WriteBool(TEXT_INIFILESECTION_INTERFACE, 'bShowID', ShowID);
      WriteBool(TEXT_INIFILESECTION_INTERFACE, 'bUseMultibuffer', UseMultibuffer);
      WriteBool(TEXT_INIFILESECTION_INTERFACE, 'bShowConfirmationOnQuit', ShowConfirmationOnQuit);

      // вкладка "настройки ведения протокола работы"
      WriteBool(TEXT_INIFILESECTION_LOGS, 'bEnableLog', EnableLog);
      WriteBool(TEXT_INIFILESECTION_LOGS, 'bFlushLogOnExit', FlushLogOnExit);
      WriteBool(TEXT_INIFILESECTION_LOGS, 'bFlushLogOnStringsQuantity', FlushLogOnStringsQuantity);
      WriteInteger(TEXT_INIFILESECTION_LOGS, 'iFlushLogOnStringsQuantityValue', FlushLogOnStringsQuantityValue);
      WriteBool(TEXT_INIFILESECTION_LOGS, 'bFlushLogOnClearingLog', FlushLogOnClearingLog);
      WriteBool(TEXT_INIFILESECTION_LOGS, 'bFlushLogOnApply', FlushLogOnApply);
      WriteBool(TEXT_INIFILESECTION_LOGS, 'bCustomLogClientFile', CustomLogClientFile);
      WriteString(TEXT_INIFILESECTION_LOGS, 'sCustomLogClientFileValue', CustomLogClientFileValue);

      WriteBool(TEXT_INIFILESECTION_LOGS, 'bKeepErrorLog', lmtError in KeepLogTypes);
      WriteBool(TEXT_INIFILESECTION_LOGS, 'bKeepWarningLog', lmtWarning in KeepLogTypes);
      WriteBool(TEXT_INIFILESECTION_LOGS, 'bKeepInfoLog', lmtInfo in KeepLogTypes);
      WriteBool(TEXT_INIFILESECTION_LOGS, 'bKeepSQLLog', lmtSQL in KeepLogTypes);
      WriteBool(TEXT_INIFILESECTION_LOGS, 'bKeepDebugLog', lmtDebug in KeepLogTypes);

      // вкладка "настройки положения диалоговых окон"
      WriteFormPosition(IniFile, LoginFormPosition, 'LoginFormPosition');
      WriteFormPosition(IniFile, ConfigurationFormPosition, 'ConfigurationFormPosition');
      WriteFormPosition(IniFile, UsersFormPosition, 'UsersFormPosition');
      WriteFormPosition(IniFile, SetPasswordFormPosition, 'SetPasswordFormPosition');
      WriteFormPosition(IniFile, ReportFormPosition, 'ReportFormPosition');
      WriteFormPosition(IniFile, MaintenanceFormPosition, 'MaintenanceFormPosition');
      WriteFormPosition(IniFile, ClearingFormPosition, 'ClearingFormPosition');
      WriteFormPosition(IniFile, ViewMessagesFormPosition, 'ViewMessagesFormPosition');
      WriteFormPosition(IniFile, CreateMessageFormPosition, 'CreateMessageFormPosition');
      WriteFormPosition(IniFile, ViewMessageFormPosition, 'ViewMessageFormPosition');
      WriteFormPosition(IniFile, PhonesFormPosition, 'PhonesFormPosition');
      WriteFormPosition(IniFile, AddEditPhoneFormPosition, 'AddEditPhoneFormPosition');
      WriteFormPosition(IniFile, AddMassMsrFormPosition, 'AddMassMsrFormPosition');
      WriteFormPosition(IniFile, PermissionsFormPosition, 'PermissionsFormPosition');
      WriteFormPosition(IniFile, MultibufferFormPosition, 'MultibufferFormPosition');

      // вкладка "настройки процедуры логирования"
      WriteBool(TEXT_INIFILESECTION_IDENTIFICATION, 'bStoreLogin', StoreLogin);
      WriteBool(TEXT_INIFILESECTION_IDENTIFICATION, 'bStorePassword', StorePassword);
      if StoreLogin then
        WriteString(TEXT_INIFILESECTION_IDENTIFICATION, 'sLogin', Login)
      else
        DeleteKey(TEXT_INIFILESECTION_IDENTIFICATION, 'sLogin');
      if StorePassword then
        WriteString(TEXT_INIFILESECTION_IDENTIFICATION, 'sPassword', Password)
      else
        DeleteKey(TEXT_INIFILESECTION_IDENTIFICATION, 'sPassword');
      WriteBool(TEXT_INIFILESECTION_IDENTIFICATION, 'bAutoLogon', AutoLogon);

      // вкладка "подключения к серверу базы данных услуги"
      with RNE4Server do
        begin
          WriteString(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.sHost', Host);
          WriteInteger(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.iPort', Port);
          WriteInteger(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.iTimeout', Timeout);
          WriteBool(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.bCompression', Compression);
          // WriteString(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.sLogin', Login);
          // WriteString(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.sPassword', Password);
          WriteString(TEXT_INIFILESECTION_SERVERS, 'RNE4Server.sDatabase', Database);
        end;

      // вкладка "подключения к серверу системы обмена сообщениями"
      with MessagesServer do
        begin
          WriteString(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.sHost', Host);
          WriteInteger(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.iPort', Port);
          WriteInteger(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.iTimeout', Timeout);
          WriteBool(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.bCompression', Compression);
          // WriteString(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.sLogin', Login);
          // WriteString(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.sPassword', Password);
          WriteString(TEXT_INIFILESECTION_SERVERS, 'MessagesServer.sDatabase', Database);
        end;

      // вкладка "настройки формирования отчётов"
      WriteInteger(TEXT_INIFILESECTION_REPORTS, 'iReportFolder', integer(ReportFolder));
      WriteString(TEXT_INIFILESECTION_REPORTS, 'sCustomReportFolderValue', CustomReportFolderValue);
      WriteBool(TEXT_INIFILESECTION_REPORTS, 'bDontDemandOverwriteConfirmation', DontDemandOverwriteConfirmation);
      WriteBool(TEXT_INIFILESECTION_REPORTS, 'bAskForFileName', AskForFileName);

      // вкладка "настройки прочие"
      WriteBool(TEXT_INIFILESECTION_OTHER, 'bLaunchAtStartup', LaunchAtStartup);
      WriteBool(TEXT_INIFILESECTION_OTHER, 'bPlaySoundOnComplete', PlaySoundOnComplete);
      WriteBool(TEXT_INIFILESECTION_OTHER, 'bEnableAutoGetMessages', EnableAutoGetMessages);
      WriteInteger(TEXT_INIFILESECTION_OTHER, 'iAutoGetMessagesCycleDurationValue', AutoGetMessagesCycleDurationValue);
      WriteBool(TEXT_INIFILESECTION_OTHER, 'bCustomHelpFile', CustomHelpFile);
      WriteString(TEXT_INIFILESECTION_OTHER, 'bCustomHelpFileValue', CustomHelpFileValue);

      // вкладка "настройки главного окна"
      WriteInteger(TEXT_INIFILESECTION_MAINFORM, 'iMainFormLeft', MainFormLeft);
      WriteInteger(TEXT_INIFILESECTION_MAINFORM, 'iMainFormTop', MainFormTop);
      WriteInteger(TEXT_INIFILESECTION_MAINFORM, 'iMainFormWidth', MainFormWidth);
      WriteInteger(TEXT_INIFILESECTION_MAINFORM, 'iMainFormHeight', MainFormHeight);
      WriteBool(TEXT_INIFILESECTION_MAINFORM, 'bMainFormPositionByCenter', MainFormPositionByCenter);
      WriteBool(TEXT_INIFILESECTION_MAINFORM, 'bFullScreenAtLaunch', FullScreenAtLaunch);

      // вкладка "настройки отображения информации"
      WriteInteger(TEXT_INIFILESECTION_INFO, 'iOrganizationPanelHeightValue', OrganizationPanelHeightValue);
      WriteBool(TEXT_INIFILESECTION_INFO, 'bOrganizationPanelHalfHeight', OrganizationPanelHalfHeight);
      WriteInteger(TEXT_INIFILESECTION_INFO, 'iDataPanelWidthValue', DataPanelWidthValue);
      WriteBool(TEXT_INIFILESECTION_INFO, 'bOrganizationPanelHalfHeight', OrganizationPanelHalfHeight);
      WriteBool(TEXT_INIFILESECTION_INFO, 'bShowDataInOtherInfoPanel', ShowDataInOtherInfoPanel);
      WriteBool(TEXT_INIFILESECTION_INFO, 'bShowMeasuresListAsRichEdit', ShowMeasuresListAsRichEdit);
      WriteBool(TEXT_INIFILESECTION_INFO, 'bMarkSearchedStrings', MarkSearchedStrings);
      WriteBool(TEXT_INIFILESECTION_INFO, 'bPutTownAtTheEnd', PutTownAtTheEnd);
    except
      on EIniFileException do
        raise EIniFileException.Create('Произошла ошибка при попытке записи настроек программы в файл конфигурации!');
    end;
end;

procedure TConfiguration.SetKeepLogTypes(const Value: TLogMessagesTypes);
begin
  if FKeepLogTypes<>Value then
    FKeepLogTypes:=Value;
end;

procedure TConfiguration.SetLaunchAtStartup(const Value: boolean);
begin
  if FLaunchAtStartup<>Value then
    FLaunchAtStartup:=Value;
end;

procedure TConfiguration.SetLoginFormPosition(const Value: TFormPosition);
begin
  if ((FLoginFormPosition.bCenter<>Value.bCenter)or(FLoginFormPosition.x<>Value.x)or(FLoginFormPosition.y<>Value.y)) then
    FLoginFormPosition:=Value;
end;

procedure TConfiguration.SetMainFormHeight(const Value: integer);
begin
  if FMainFormHeight<>Value then
    FMainFormHeight:=Value;
end;

procedure TConfiguration.SetMainFormLeft(const Value: integer);
begin
  if FMainFormLeft<>Value then
    FMainFormLeft:=Value;
end;

procedure TConfiguration.SetMainFormPositionByCenter(const Value: boolean);
begin
  if FMainFormPositionByCenter<>Value then
    FMainFormPositionByCenter:=Value;
end;

procedure TConfiguration.SetMainFormTop(const Value: integer);
begin
  if FMainFormTop<>Value then
    FMainFormTop:=Value;
end;

procedure TConfiguration.SetMainFormWidth(const Value: integer);
begin
  if FMainFormWidth<>Value then
    FMainFormWidth:=Value;
end;

procedure TConfiguration.SetMaintenanceFormPosition(const Value: TFormPosition);
begin
  if ((FMaintenanceFormPosition.bCenter<>Value.bCenter)or(FMaintenanceFormPosition.x<>Value.x)or(FMaintenanceFormPosition.y<>Value.y)) then
    FMaintenanceFormPosition:=Value;
end;

procedure TConfiguration.SetMarkSearchedStrings(const Value: boolean);
begin
  if FMarkSearchedStrings<>Value then
    FMarkSearchedStrings:=Value;
end;

procedure TConfiguration.SetMessagesServer(const Value: TMySQLConnection);
begin
  if FMessagesServer<>Value then
    FMessagesServer:=Value;
end;

procedure TConfiguration.SetConfigurationFormPosition(const Value: TFormPosition);
begin
  if ((FConfigurationFormPosition.bCenter<>Value.bCenter)or(FConfigurationFormPosition.x<>Value.x)or(FConfigurationFormPosition.y<>Value.y)) then
    FConfigurationFormPosition:=Value;
end;

procedure TConfiguration.SetOrganizationPanelHalfHeight(const Value: boolean);
begin
  if FOrganizationPanelHalfHeight<>Value then
    FOrganizationPanelHalfHeight:=Value;
end;

procedure TConfiguration.SetOrganizationPanelHeightValue(const Value: integer);
begin
  if FOrganizationPanelHeightValue<>Value then
    FOrganizationPanelHeightValue:=Value;
end;

procedure TConfiguration.SetPhonesFormPosition(const Value: TFormPosition);
begin
  if ((FPhonesFormPosition.bCenter<>Value.bCenter)or(FPhonesFormPosition.x<>Value.x)or(FPhonesFormPosition.y<>Value.y)) then
    FPhonesFormPosition:=Value;
end;

procedure TConfiguration.SetPlaySoundOnComplete(const Value: boolean);
begin
  if FPlaySoundOnComplete<>Value then
    FPlaySoundOnComplete:=Value;
end;

procedure TConfiguration.SetPutTownAtTheEnd(const Value: boolean);
begin
  if FPutTownAtTheEnd<>Value then
    FPutTownAtTheEnd:=Value;
end;

procedure TConfiguration.SetReportFolder(const Value: TReportFolders);
begin
  if FReportFolder<>Value then
    FReportFolder:=Value;
end;

procedure TConfiguration.SetRNE4Server(const Value: TMySQLConnection);
begin
  if FRNE4Server<>Value then
    FRNE4Server:=Value;
end;

procedure TConfiguration.SetUseLog(const Value: boolean);
begin
  if FEnableLog<>Value then
    FEnableLog:=Value;
end;

procedure TConfiguration.SetCustomReportFolderValue(const Value: string);
begin
  if FCustomReportFolderValue<>Value then
    FCustomReportFolderValue:=Value;
end;

procedure TConfiguration.SetSetPasswordFormPosition(const Value: TFormPosition);
begin
  if ((FSetPasswordFormPosition.bCenter<>Value.bCenter)or(FSetPasswordFormPosition.x<>Value.x)or(FSetPasswordFormPosition.y<>Value.y)) then
    FSetPasswordFormPosition:=Value;
end;

procedure TConfiguration.SetShowSplashAtStart(const Value: boolean);
begin
  if FShowSplashAtStart<>Value then
    FShowSplashAtStart:=Value;
end;

procedure TConfiguration.SetShowCommonSearchEditbox(const Value: boolean);
begin
  if FShowCommonSearchEditbox<>Value then
    FShowCommonSearchEditbox:=Value;
end;

procedure TConfiguration.SetShowConfirmationOnQuit(const Value: boolean);
begin
  if FShowConfirmationOnQuit<>Value then
    FShowConfirmationOnQuit:=Value;
end;

procedure TConfiguration.SetShowDataInOtherInfoPanel(const Value: boolean);
begin
  if FShowDataInOtherInfoPanel<>Value then
    FShowDataInOtherInfoPanel:=Value;
end;

procedure TConfiguration.SetShowEditboxHints(const Value: boolean);
begin
  if FShowEditboxHints<>Value then
    FShowEditboxHints:=Value;
end;

procedure TConfiguration.SetShowID(const Value: boolean);
begin
  if FShowID<>Value then
    FShowID:=Value;
end;

procedure TConfiguration.SetShowMeasuresListAsRichEdit(const Value: boolean);
begin
  if FShowMeasuresListAsRichEdit<>Value then
    FShowMeasuresListAsRichEdit:=Value;
end;

procedure TConfiguration.SetShowStatusbar(const Value: boolean);
begin
  if FShowStatusbar<>Value then
    FShowStatusbar:=Value;
end;

procedure TConfiguration.SetShowToolbar(const Value: boolean);
begin
  if FShowToolbar<>Value then
    FShowToolbar:=Value;
end;

procedure TConfiguration.SetReportFormPosition(const Value: TFormPosition);
begin
  if ((FReportFormPosition.bCenter<>Value.bCenter)or(FReportFormPosition.x<>Value.x)or(FReportFormPosition.y<>Value.y)) then
    FReportFormPosition:=Value;
end;

procedure TConfiguration.SetUseMultibuffer(const Value: boolean);
begin
  if FUseMultibuffer<>Value then
    FUseMultibuffer:=Value;
end;

procedure TConfiguration.SetUsersFormPosition(const Value: TFormPosition);
begin
  if ((FUsersFormPosition.bCenter<>Value.bCenter)or(FUsersFormPosition.x<>Value.x)or(FUsersFormPosition.y<>Value.y)) then
    FUsersFormPosition:=Value;
end;

procedure TConfiguration.SetViewMessageFormPosition(const Value: TFormPosition);
begin
  if ((FViewMessageFormPosition.bCenter<>Value.bCenter)or(FViewMessageFormPosition.x<>Value.x)or(FViewMessageFormPosition.y<>Value.y)) then
    FViewMessageFormPosition:=Value;
end;

procedure TConfiguration.SetViewMessagesFormPosition(const Value: TFormPosition);
begin
  if ((FViewMessagesFormPosition.bCenter<>Value.bCenter)or(FViewMessagesFormPosition.x<>Value.x)or(FViewMessagesFormPosition.y<>Value.y)) then
    FViewMessagesFormPosition:=Value;
end;

function TConfiguration.GetReportFolderValue: string;
begin
  case FReportFolder of
    rfTempFolder:
      Result:=GetTempFolder;
    rfApplicationFolder:
      Result:=GetApplicationFolder;
    rfCustomFolder:
      Result:=CustomReportFolderValue;
  end;
end;

destructor TConfiguration.Destroy;
begin
  FreeAndNil(FMessagesServer);
  FreeAndNil(FRNE4Server);
  inherited;
end;

function TConfiguration.GetApplicationFolder: string;
var
  s: string;
begin
  GetApplicationFolder:='';

  s:=ExtractFilePath(ExpandFileName(Application.ExeName));
  if DirectoryExists(s) then
    GetApplicationFolder:=s
  else
    raise Exception.Create('Возникла ошибка при попытке получения пути рабочей папки программы!')
end;

function TConfiguration.GetTempFolder: string;
var
  r: cardinal;
  TempPathNameBuffer: PWideChar;
begin
  TempPathNameBuffer:=nil;
  GetTempFolder:='';

  try
    GetMem(TempPathNameBuffer, 1024+1);
    r:=GetTempPath(1024, TempPathNameBuffer);
    if r>0 then
      begin
        if r>1024 then
          begin
            FreeMem(TempPathNameBuffer);
            GetMem(TempPathNameBuffer, r+1);
          end;
        if DirectoryExists(TempPathNameBuffer) then
          GetTempFolder:=TempPathNameBuffer
        else
          raise Exception.Create('Возникла ошибка при попытке получения пути временной папки!')
      end;
  finally
    if TempPathNameBuffer<>nil then
      FreeMem(TempPathNameBuffer);
  end;
end;

procedure TConfiguration.SetAddEditPhoneFormPosition(const Value: TFormPosition);
begin
  if ((FAddEditPhoneFormPosition.bCenter<>Value.bCenter)or(FAddEditPhoneFormPosition.x<>Value.x)or(FAddEditPhoneFormPosition.y<>Value.y)) then
    FAddEditPhoneFormPosition:=Value;
end;

procedure TConfiguration.SetAddMassMsrFormPosition(const Value: TFormPosition);
begin
  if ((FAddMassMsrFormPosition.bCenter<>Value.bCenter)or(FAddMassMsrFormPosition.x<>Value.x)or(FAddMassMsrFormPosition.y<>Value.y)) then
    FAddMassMsrFormPosition:=Value;
end;

procedure TConfiguration.SetPermissionsFormPosition(const Value: TFormPosition);
begin
  if ((FPermissionsFormPosition.bCenter<>Value.bCenter)or(FPermissionsFormPosition.x<>Value.x)or(FPermissionsFormPosition.y<>Value.y)) then
    FPermissionsFormPosition:=Value;
end;

procedure TConfiguration.SetMultibufferFormPosition(const Value: TFormPosition);
begin
  if ((FMultibufferFormPosition.bCenter<>Value.bCenter)or(FMultibufferFormPosition.x<>Value.x)or(FMultibufferFormPosition.y<>Value.y)) then
    FMultibufferFormPosition:=Value;
end;

procedure TConfiguration.SetAskForFileName(const Value: boolean);
begin
  if FAskForFileName<>Value then
    FAskForFileName:=Value;
end;

procedure TConfiguration.SetAutoGetMessagesCycleDurationValue(const Value: integer);
begin
  if FAutoGetMessagesCycleDurationValue<>Value then
    FAutoGetMessagesCycleDurationValue:=Value;
end;

procedure TConfiguration.SetAutoLogon(const Value: boolean);
begin
  if Value then
    begin
      if not(StoreLogin and StorePassword) then
        raise Exception.Create('Для включения настройки автологирования необходимо сначала включить слхранение логина и пароля последнего пользователя!')
      else
        if FAutoLogon<>Value then
          FAutoLogon:=Value;
    end
  else
    if FAutoLogon<>Value then
      FAutoLogon:=Value;
end;

procedure TConfiguration.SetClearingFormPosition(const Value: TFormPosition);
begin
  if ((FClearingFormPosition.bCenter<>Value.bCenter)or(FClearingFormPosition.x<>Value.x)or(FClearingFormPosition.y<>Value.y)) then
    FClearingFormPosition:=Value;
end;

procedure TConfiguration.SetCreateMessageFormPosition(const Value: TFormPosition);
begin
  if ((FCreateMessageFormPosition.bCenter<>Value.bCenter)or(FCreateMessageFormPosition.x<>Value.x)or(FCreateMessageFormPosition.y<>Value.y)) then
    FCreateMessageFormPosition:=Value;
end;

procedure TConfiguration.SetCustomHelpFileValue(const Value: string);
begin
  if FCustomHelpFileValue<>Value then
    FCustomHelpFileValue:=Value;
end;

procedure TConfiguration.SetCustomLogClientFile(const Value: boolean);
begin
  if FCustomLogClientFile<>Value then
    FCustomLogClientFile:=Value;
end;

procedure TConfiguration.SetCustomLogClientFileValue(const Value: string);
begin
  if FCustomLogClientFileValue<>Value then
    FCustomLogClientFileValue:=Value;
end;

procedure TConfiguration.SetDataPanelHalfWidth(const Value: boolean);
begin
  if FDataPanelHalfWidth<>Value then
    FDataPanelHalfWidth:=Value;
end;

procedure TConfiguration.SetDataPanelWidthValue(const Value: integer);
begin
  if FDataPanelWidthValue<>Value then
    FDataPanelWidthValue:=Value;
end;

procedure TConfiguration.SetDontDemandOverwriteConfirmation(const Value: boolean);
begin
  if FDontDemandOverwriteConfirmation<>Value then
    FDontDemandOverwriteConfirmation:=Value;
end;

procedure TConfiguration.SetEnableAutoGetMessages(const Value: boolean);
begin
  if FEnableAutoGetMessages<>Value then
    FEnableAutoGetMessages:=Value;
end;

procedure TConfiguration.SetCustomHelpFile(const Value: boolean);
begin
  if FCustomHelpFile<>Value then
    FCustomHelpFile:=Value;
end;

procedure TConfiguration.SetFileName(const Value: string);
begin
  if FFileName<>Value then
    if Trim(Value)<>'' then
      FFileName:=Trim(Value)
    else
      raise Exception.Create('Имя файла конфигурации не должно быть пустым!');
end;

procedure TConfiguration.SetFlushLogOnApply(const Value: boolean);
begin
  if FFlushLogOnApply<>Value then
    FFlushLogOnApply:=Value;
end;

procedure TConfiguration.SetFlushLogOnClearingLog(const Value: boolean);
begin
  if FFlushLogOnClearingLog<>Value then
    FFlushLogOnClearingLog:=Value;
end;

procedure TConfiguration.SetFlushLogOnExit(const Value: boolean);
begin
  if FFlushLogOnExit<>Value then
    FFlushLogOnExit:=Value;
end;

procedure TConfiguration.SetFlushLogOnStringsQuantity(const Value: boolean);
begin
  if FFlushLogOnStringsQuantity<>Value then
    FFlushLogOnStringsQuantity:=Value;
end;

procedure TConfiguration.SetFlushLogOnStringsQuantityValue(const Value: integer);
begin
  if FFlushLogOnStringsQuantityValue<>Value then
    FFlushLogOnStringsQuantityValue:=Value;
end;

procedure TConfiguration.SetFullScreenAtLaunch(const Value: boolean);
begin
  if FFullScreenAtLaunch<>Value then
    FFullScreenAtLaunch:=Value;
end;

procedure TConfiguration.AfterLoad;
begin
  inherited;

end;

procedure TConfiguration.BeforeSave;
begin
  inherited;

end;

constructor TConfiguration.Create(const IniFileName: string='');
begin
  inherited;

  // инициализация динамических членов класса
  FRNE4Server:=TMySQLConnection.Create;
  FMessagesServer:=TMySQLConnection.Create;

  // инициализация пеерменных класса
  FFileName:=ChangeFileExt(ExpandFileName(Application.ExeName), '.ini');
  FConfigurationFormPage:=0;
  FLogin:='';
  FPassword:='';

  // вкладка "настройки интерфейса"
  FShowSplashAtStart:=DefaultValue_ShowSplashAtStart;
  FShowToolbar:=DefaultValue_ShowToolbar;
  FShowStatusbar:=DefaultValue_ShowStatusbar;
  FShowEditboxHints:=DefaultValue_ShowEditboxHints;
  FShowCommonSearchEditbox:=DefaultValue_ShowCommonSearchEditbox;
  FShowID:=DefaultValue_ShowID;
  FUseMultibuffer:=DefaultValue_UseMultibuffer;
  FShowConfirmationOnQuit:=DefaultValue_ShowConfirmationOnQuit;

  // вкладка "настройки ведения протокола работы"
  FEnableLog:=DefaultValue_EnableLog;
  FKeepLogTypes:=DefaultValue_KeepLogTypes;
  FFlushLogOnExit:=DefaultValue_FlushLogOnExit;
  FFlushLogOnStringsQuantity:=DefaultValue_FlushLogOnStringsQuantity;
  FFlushLogOnStringsQuantityValue:=DefaultValue_FlushLogOnStringsQuantityValue;
  FFlushLogOnClearingLog:=DefaultValue_FlushLogOnClearingLog;
  FFlushLogOnApply:=DefaultValue_FlushLogOnApply;
  FCustomLogClientFile:=DefaultValue_CustomLogClientFile;
  FCustomLogClientFileValue:=DefaultValue_CustomLogClientFileValue;

  // вкладка "настройки положения диалоговых окон"
  with FLoginFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FConfigurationFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FUsersFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FSetPasswordFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FReportFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FMaintenanceFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FClearingFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FViewMessagesFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FCreateMessageFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FViewMessageFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FPhonesFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FAddEditPhoneFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FAddMassMsrFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FPermissionsFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  with FMultibufferFormPosition do
    begin
      bCenter:=DefaultValue_FormPosition_Center;
      x:=DefaultValue_FormPosition_x;
      y:=DefaultValue_FormPosition_y;
    end;

  // вкладка "настройки процедуры логирования"
  FStoreLogin:=DefaultValue_StoreLogin;
  FStorePassword:=DefaultValue_StorePassword;
  FLogin:=DefaultValue_Login;
  FPassword:=DefaultValue_Password;
  FAutoLogon:=DefaultValue_AutoLogon;

  // вкладка "настройки подключения к серверу базы данных услуги"
  with FRNE4Server do
    begin
      Connected:=False;
      LogProvider:=nil;
      Host:=DefaultValue_RNE4Server_Host;
      Port:=DefaultValue_RNE4Server_Port;
      Timeout:=DefaultValue_RNE4Server_Timeout;
      Compression:=DefaultValue_RNE4Server_Compression;
      Login:=DefaultValue_RNE4Server_Login;
      Password:=DefaultValue_RNE4Server_Password;
      Database:=DefaultValue_RNE4Server_Database;
    end;

  // вкладка "настройки подключения к серверу системы обмена сообщениями"
  with FMessagesServer do
    begin
      Connected:=False;
      LogProvider:=nil;
      Host:=DefaultValue_MessagesServer_Host;
      Port:=DefaultValue_MessagesServer_Port;
      Timeout:=DefaultValue_MessagesServer_Timeout;
      Compression:=DefaultValue_MessagesServer_Compression;
      Login:=DefaultValue_MessagesServer_Login;
      Password:=DefaultValue_MessagesServer_Password;
      Database:=DefaultValue_MessagesServer_Database;
    end;

  // вкладка "настройки формирования отчётов"
  FReportFolder:=DefaultValue_ReportFolder;
  FCustomReportFolderValue:=DefaultValue_CustomReportFolderValue;
  FDontDemandOverwriteConfirmation:=DefaultValue_DontDemandOverwriteConfirmation;
  AskForFileName:=DefaultValue_AskForFileName;

  // вкладка "настройки прочие"
  FLaunchAtStartup:=DefaultValue_LaunchAtStartup;
  FPlaySoundOnComplete:=DefaultValue_PlaySoundOnComplete;
  FEnableAutoGetMessages:=DefaultValue_EnableAutoGetMessages;
  FAutoGetMessagesCycleDurationValue:=DefaultValue_AutoGetMessagesCycleDurationValue;
  FCustomHelpFile:=DefaultValue_CustomHelpFile;
  FCustomHelpFileValue:=DefaultValue_CustomHelpFileValue;

  // вкладка "настройки главного окна"
  MainFormLeft:=DefaultValue_MainFormLeft;
  MainFormTop:=DefaultValue_MainFormTop;
  MainFormWidth:=DefaultValue_MainFormWidth;
  MainFormHeight:=DefaultValue_MainFormHeight;
  FMainFormPositionByCenter:=DefaultValue_MainFormPositionByCenter;
  FFullScreenAtLaunch:=DefaultValue_FullScreenAtLaunch;

  // вкладка "настройки отображения информации"
  FOrganizationPanelHeightValue:=DefaultValue_OrganizationPanelHeightValue;
  FOrganizationPanelHalfHeight:=DefaultValue_OrganizationPanelHalfHeight;
  FDataPanelWidthValue:=DefaultValue_DataPanelWidthValue;
  FDataPanelHalfWidth:=DefaultValue_DataPanelHalfWidth;
  FShowDataInOtherInfoPanel:=DefaultValue_ShowDataInOtherInfoPanel;
  FShowMeasuresListAsRichEdit:=DefaultValue_ShowMeasuresListAsRichEdit;
  FMarkSearchedStrings:=DefaultValue_MarkSearchedStrings;
  FPutTownAtTheEnd:=DefaultValue_PutTownAtTheEnd;
end;

procedure TConfiguration.SetStoreLogin(const Value: boolean);
begin
  if FStoreLogin<>Value then
    begin
      FStoreLogin:=Value;
      if not FStoreLogin then
        begin
          FLogin:='';
          FPassword:='';
          FStorePassword:=False;
          FAutoLogon:=False;
        end;
    end
end;

procedure TConfiguration.SetStorePassword(const Value: boolean);
begin
  if FStorePassword<>Value then
    begin
      FStorePassword:=Value;
      if not FStorePassword then
        begin
          FPassword:='';
          FAutoLogon:=False;
        end;
    end;
end;

procedure TConfiguration.SetLogin(const Value: string);
begin
  if StoreLogin then
    begin
      if FLogin<>Value then
        FLogin:=Value
    end
  else
    FLogin:='';
end;

procedure TConfiguration.SetPassword(const Value: string);
begin
  if StorePassword then
    begin
      if FPassword<>Value then
        FPassword:=Value
    end
  else
    FPassword:='';
end;

initialization

System.Classes.RegisterClass(TConfiguration);

end.