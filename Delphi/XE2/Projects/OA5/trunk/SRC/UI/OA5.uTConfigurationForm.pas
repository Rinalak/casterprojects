{$WARN UNIT_PLATFORM OFF}
unit OA5.uTConfigurationForm;

interface

uses
  CastersPackage.uTLogMessagesType,
  Winapi.Windows,
  System.Types,
  Vcl.ComCtrls,
  OA5.uTOA5PositionedLogForm,
  System.Classes,
  Vcl.ActnList,
  Vcl.ImgList,
  Vcl.Controls,
  Vcl.Grids,
  Vcl.StdCtrls,
  Vcl.ValEdit,
  Vcl.Forms,
  Vcl.ExtCtrls,
  System.Actions;

type
  TConfigurationForm = class(TOA5PositionedLogForm)
    actHelp: TAction;
    actDefaults: TAction;
    actClose: TAction;
    actApply: TAction;
    actPreviousPage: TAction;
    actNextPage: TAction;
    actChooseCustomLogClientFile: TAction;
    ImageListSmall: TImageList;
    pnlButtons: TPanel;
    btnApply: TButton;
    btnClose: TButton;
    btnHelp: TButton;
    btnDefaults: TButton;
    Panel3: TPanel;
    gbHeader: TGroupBox;
    cbPage: TComboBox;
    btnNextPage: TButton;
    btnPreviousPage: TButton;
    Panel1: TPanel;
    gbPage: TGroupBox;
    PageControl1: TPageControl;
    ts1: TTabSheet;
    ts4: TTabSheet;
    lblFlushLog: TLabel;
    Bevel1: TBevel;
    lblShowData: TLabel;
    Bevel2: TBevel;
    chkbxKeepInfoLog: TCheckBox;
    chkbxKeepWarningLog: TCheckBox;
    chkbxKeepErrorLog: TCheckBox;
    chkbxKeepSQLLog: TCheckBox;
    chkbxFlushLogOnStringsQuantity: TCheckBox;
    chkbxFlushLogOnExit: TCheckBox;
    edbxFlushLogOnStringsQuantityValue: TEdit;
    chkbxFlushLogOnClearingLog: TCheckBox;
    chkbxFlushLogOnApply: TCheckBox;
    chkbxKeepDebugLog: TCheckBox;
    ts5: TTabSheet;
    Bevel3: TBevel;
    rbSaveIntoTheTempFolder: TRadioButton;
    rbSaveIntoTheCustomFolder: TRadioButton;
    rbSaveIntoTheApplicationFolder: TRadioButton;
    chkbxAskForFileName: TCheckBox;
    edbxCustomReportFolderValue: TEdit;
    btnSelectFolder: TButton;
    chkbxDemandOverwriteConfirmation: TCheckBox;
    ts2: TTabSheet;
    vleRNE4SERVER: TValueListEditor;
    ts3: TTabSheet;
    vleRNE4MESSAGESSERVER: TValueListEditor;
    chkbxCustomLogClientFile: TCheckBox;
    edbxCustomLogClientFileValue: TEdit;
    btnChooseCustomLogClientFile: TButton;
    actChooseReportFolder: TAction;
    chkbxEnableLog: TCheckBox;
    Bevel4: TBevel;
    Bevel5: TBevel;
    ts6: TTabSheet;
    sgAutoReplaceList: TStringGrid;
    btnLineUp: TButton;
    btnLineDown: TButton;
    actLineUp: TAction;
    actLineDown: TAction;
    lblAutoReplaceSorry: TLabel;
    ts9: TTabSheet;
    ts7: TTabSheet;
    chkbxStoreLastLogin: TCheckBox;
    chkbxStoreLastPassword: TCheckBox;
    chkbxAutoLogon: TCheckBox;
    chkbxEnableAutoGetMessages: TCheckBox;
    edbxAutoGetMessagesCycleDurationValue: TEdit;
    lblAutoGetMessagesCycleDuration: TLabel;
    ts8: TTabSheet;
    ScrollBox1: TScrollBox;
    lblLoginFormPosition: TLabel;
    lblLoginFormPositionX: TLabel;
    edbxLoginFormPositionX: TEdit;
    lblLoginFormPositionY: TLabel;
    edbxLoginFormPositionY: TEdit;
    chkbxLoginFormPositionByCenter: TCheckBox;
    lblConfigurationFormPosition: TLabel;
    lblConfigurationFormPositionX: TLabel;
    edbxConfigurationFormPositionX: TEdit;
    lblConfigurationFormPositionY: TLabel;
    edbxConfigurationFormPositionY: TEdit;
    chkbxConfigurationFormPositionByCenter: TCheckBox;
    lblUsersFormPosition: TLabel;
    lblUsersFormPositionX: TLabel;
    edbxUsersFormPositionX: TEdit;
    lblUsersFormPositionY: TLabel;
    edbxUsersFormPositionY: TEdit;
    chkbxUsersFormPositionByCenter: TCheckBox;
    lblSetPasswordFormPosition: TLabel;
    lblSetPasswordFormPositionX: TLabel;
    edbxSetPasswordFormPositionX: TEdit;
    lblSetPasswordFormPositionY: TLabel;
    edbxSetPasswordFormPositionY: TEdit;
    chkbxSetPasswordFormPositionByCenter: TCheckBox;
    lblReportFormPosition: TLabel;
    lblReportFormPositionX: TLabel;
    edbxReportFormPositionX: TEdit;
    lblReportFormPositionY: TLabel;
    edbxReportFormPositionY: TEdit;
    chkbxReportFormPositionByCenter: TCheckBox;
    lblMaintenanceFormPosition: TLabel;
    lblMaintenanceFormPositionX: TLabel;
    edbxMaintenanceFormPositionX: TEdit;
    lblMaintenanceFormPositionY: TLabel;
    edbxMaintenanceFormPositionY: TEdit;
    chkbxMaintenanceFormPositionByCenter: TCheckBox;
    lblClearingFormPosition: TLabel;
    lblClearingFormPositionX: TLabel;
    edbxClearingFormPositionX: TEdit;
    lblClearingFormPositionY: TLabel;
    edbxClearingFormPositionY: TEdit;
    chkbxClearingFormPositionByCenter: TCheckBox;
    lblViewMessagesFormPosition: TLabel;
    lblViewMessagesFormPositionX: TLabel;
    lblViewMessagesFormPositionY: TLabel;
    edbxViewMessagesFormPositionX: TEdit;
    edbxViewMessagesFormPositionY: TEdit;
    chkbxViewMessagesFormPositionByCenter: TCheckBox;
    lblViewMessageFormPosition: TLabel;
    lblViewMessageFormPositionX: TLabel;
    lblViewMessageFormPositionY: TLabel;
    edbxViewMessageFormPositionX: TEdit;
    edbxViewMessageFormPositionY: TEdit;
    chkbxViewMessageFormPositionByCenter: TCheckBox;
    lblPhonesFormPosition: TLabel;
    lblPhonesFormPositionX: TLabel;
    lblPhonesFormPositionY: TLabel;
    edbxPhoneListFormPositionX: TEdit;
    edbxPhoneListFormPositionY: TEdit;
    chkbxPhoneListFormPositionByCenter: TCheckBox;
    lblAddEditPhoneFormPosition: TLabel;
    lblAddEditPhoneFormPositionX: TLabel;
    edbxAddEditPhoneFormPositionX: TEdit;
    lblAddEditPhoneFormPositionY: TLabel;
    edbxAddEditPhoneFormPositionY: TEdit;
    chkbxAddEditPhoneFormPositionByCenter: TCheckBox;
    lblAddMassMsrFormPosition: TLabel;
    lblAddMassMsrFormPositionX: TLabel;
    lblAddMassMsrFormPositionY: TLabel;
    edbxAddMassMsrFormPositionX: TEdit;
    edbxAddMassMsrFormPositionY: TEdit;
    chkbxAddMassMsrFormPositionByCenter: TCheckBox;
    ts10: TTabSheet;
    lblMainFormPosition: TLabel;
    lblMainFormSize: TLabel;
    lblMainFormPositionX: TLabel;
    edbxMainFormPositionX: TEdit;
    lblMainFormPositionY: TLabel;
    edbxMainFormPositionY: TEdit;
    chkbxMainFormPositionByCenter: TCheckBox;
    lblMainFormWidth: TLabel;
    edbxMainFormWidth: TEdit;
    lblMainFormHeight: TLabel;
    edbxMainFormHeight: TEdit;
    chkbxFullScreenAtLaunch: TCheckBox;
    ts11: TTabSheet;
    lbOrganizationPanelHeight: TLabel;
    lbDataPanelWidth: TLabel;
    edbxOrganizationPanelHeightValue: TEdit;
    edbxDataPanelWidthValue: TEdit;
    chkbxOrganizationPanelHalfHeight: TCheckBox;
    chkbxDataPanelHalfWidth: TCheckBox;
    chkbxShowDataInOtherInfoPanel: TCheckBox;
    chkbxShowMeasuresListAsRichEdit: TCheckBox;
    chkbxMarkSearchedStrings: TCheckBox;
    chkbxPutTownAtTheEnd: TCheckBox;
    chkbxCustomHelpFile: TCheckBox;
    edbxCustomHelpFileValue: TEdit;
    btnChooseCustomHelpFile: TButton;
    chkbxLaunchAtStartup: TCheckBox;
    chkbxShowSplashAtStart: TCheckBox;
    chkbxShowToolbar: TCheckBox;
    chkbxShowStatusbar: TCheckBox;
    chkbxShowEditboxHints: TCheckBox;
    chkbxShowCommonSearchEditbox: TCheckBox;
    chkbxShowID: TCheckBox;
    chkbxUseMultibuffer: TCheckBox;
    chkbxShowConfirmationOnQuit: TCheckBox;
    chkbxPlaySoundOnComplete: TCheckBox;
    actChooseCustomHelpFile: TAction;
    lblPermissionsFormPosition: TLabel;
    lblPermissionsFormPositionX: TLabel;
    edbxPermissionsFormPositionX: TEdit;
    lblPermissionsFormPositionY: TLabel;
    edbxPermissionsFormPositionY: TEdit;
    chkbxPermissionsFormPositionByCenter: TCheckBox;
    lblCreateMessageFormPosition: TLabel;
    lblCreateMessageFormPositionX: TLabel;
    lblCreateMessageFormPositionY: TLabel;
    edbxCreateMessageFormPositionX: TEdit;
    edbxCreateMessageFormPositionY: TEdit;
    chkbxCreateMessageFormPositionByCenter: TCheckBox;
    ActionList: TActionList;
    procedure FormCreate(Sender: TObject);
    procedure actApplyExecute(Sender: TObject);
    procedure actDefaultsExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actHelpExecute(Sender: TObject);
    procedure actPreviousPageExecute(Sender: TObject);
    procedure actNextPageExecute(Sender: TObject);
    procedure actChooseReportFolderExecute(Sender: TObject);
    procedure actChooseCustomLogClientFileExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cbPageSelect(Sender: TObject);
    procedure chkbxCustomLogClientFileClick(Sender: TObject);
    procedure chkbxEnableLogClick(Sender: TObject);
    procedure chkbxFlushLogOnStringsQuantityClick(Sender: TObject);
    procedure rbSaveIntoTheCustomFolderClick(Sender: TObject);
    procedure chkbxStoreLastLoginClick(Sender: TObject);
    procedure chkbxStoreLastPasswordClick(Sender: TObject);
    procedure chkbxEnableAutoGetMessagesClick(Sender: TObject);
    procedure edbxAutoGetMessagesCycleDurationValueChange(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint;
      var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint;
      var Handled: Boolean);
    procedure chkbxMainFormPositionByCenterClick(Sender: TObject);
    procedure chkbxFullScreenAtLaunchClick(Sender: TObject);
    procedure actChooseCustomHelpFileExecute(Sender: TObject);
    procedure chkbxOrganizationPanelHalfHeightClick(Sender: TObject);
    procedure chkbxDataPanelHalfWidthClick(Sender: TObject);
    procedure chkbxLoginFormPositionByCenterClick(Sender: TObject);
    procedure chkbxConfigurationFormPositionByCenterClick(Sender: TObject);
    procedure chkbxUsersFormPositionByCenterClick(Sender: TObject);
    procedure chkbxSetPasswordFormPositionByCenterClick(Sender: TObject);
    procedure chkbxReportFormPositionByCenterClick(Sender: TObject);
    procedure chkbxMaintenanceFormPositionByCenterClick(Sender: TObject);
    procedure chkbxClearingFormPositionByCenterClick(Sender: TObject);
    procedure chkbxViewMessagesFormPositionByCenterClick(Sender: TObject);
    procedure chkbxCreateMessageFormPositionByCenterClick(Sender: TObject);
    procedure chkbxPhoneListFormPositionByCenterClick(Sender: TObject);
    procedure chkbxAddEditPhoneFormPositionByCenterClick(Sender: TObject);
    procedure chkbxAddMassMsrFormPositionByCenterClick(Sender: TObject);
    procedure chkbxPermissionsFormPositionByCenterClick(Sender: TObject);
    procedure edbxNumericFieldKeyPress(Sender: TObject; var Key: Char);
    procedure chkbxViewMessageFormPositionByCenterClick(Sender: TObject);
    procedure actHelpUpdate(Sender: TObject);
    procedure actChooseCustomHelpFileUpdate(Sender: TObject);
    procedure actChooseReportFolderUpdate(Sender: TObject);
  strict private
    FBooleanValuesList: TStringList;
    procedure _Defaults;
    procedure _NextPage;
    procedure _PreviousPage;
    procedure _ChooseCustomReportFolder;
    procedure _ChooseLogClientFile;
    procedure _ChooseCustomHelpFile;
    procedure _PageSelect;
    procedure _CreateBooleanValuesList;
  end;

implementation

{$R *.dfm}

uses
  StrUtils,
  CastersPackage.uResourceStrings,
  System.SysUtils,
  Winapi.Messages,
  Vcl.Dialogs,
  Vcl.FileCtrl,
  CastersPackage.uTReportFolder,
  CastersPackage.uLogKeeperData,
  CastersPackage.uTDialogPosition,
  OA5.uDefaultConsts,
  OA5.uTMainForm,
  OA5.uTLoginForm,
  OA5.uTAboutForm,
  OA5.uTAddMassMsrForm,
  OA5.uTSetPasswordForm,
  OA5.uTPermissionsForm,
  OA5.uTReportForm,
  OA5.uTConfiguration,
  OA5.uTCreateMessageForm,
  OA5.uTViewMessageForm,
  OA5.uTViewMessagesForm,
  OA5.uTPhoneListForm,
  OA5.uTAddEditPhoneForm;

const
  ICON_CONFIGURATION = 5;

resourcestring
  RsConfigurationForm = '�������� ���������';

procedure TConfigurationForm.actCloseExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actClose.Caption]),
    '{609A88EE-6BC8-4F0F-9C3D-EC1D6FD1A50F}');
  Log.SendInfo('������� ��������� �������� ��������� ���� �������� �������������.');
  CloseModalWindowWithCancelResult(RsConfigurationForm, '{F09181C1-4B0D-4B59-B502-C336492D417E}');
  ProcedureFooter;
end;

procedure TConfigurationForm.actHelpExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actHelp.Caption]),
    '{0CB39D36-EC59-4C76-AFE5-1718B99DA0CA}');
  Help(HelpContext, '{FAD97362-B803-468D-BD54-F5903DFFE819}');
  ProcedureFooter;
end;

procedure TConfigurationForm.actHelpUpdate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  b := Application.HelpFile <> EmptyStr;
  if actHelp.Enabled <> b then
  begin
    ProcedureHeader(Format(RsEventHandlerOfActionUpdate, [actHelp.Caption]),
      '{CEE5E3DF-C04C-4125-AFDE-D6FE85947558}');
    actHelp.Enabled := b;
    Log.SendDebug(GetActionUpdateLogMessage(actHelp));
    ProcedureFooter;
  end;
end;

procedure TConfigurationForm.actPreviousPageExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actPreviousPage.Caption]),
    '{50728BC6-7E7C-4D0D-9C17-E7919DE4A4C3}');
  _PreviousPage;
  ProcedureFooter;
end;

procedure TConfigurationForm.actNextPageExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actNextPage.Caption]),
    '{0D4FC270-5B1E-4E59-8EBF-89ADBAC0E89F}');
  _NextPage;
  ProcedureFooter;
end;

procedure TConfigurationForm.actChooseReportFolderExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actChooseReportFolder.Caption]),
    '{0F2D97AB-C59D-456A-ABCA-C390806F896C}');
  _ChooseCustomReportFolder;
  ProcedureFooter;
end;

procedure TConfigurationForm.actChooseReportFolderUpdate(Sender: TObject);
begin
  inherited;
  //
end;

procedure TConfigurationForm.actChooseCustomHelpFileExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actChooseCustomHelpFile.Caption]),
    '{708E3642-722E-4556-9774-2F813BD540ED}');
  _ChooseCustomHelpFile;
  ProcedureFooter;
end;

procedure TConfigurationForm.actChooseCustomLogClientFileExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actChooseCustomLogClientFile.Caption]),
    '{24E77954-BFEB-4128-B764-C31ED26D068C}');
  _ChooseLogClientFile;
  ProcedureFooter;
end;

procedure TConfigurationForm.actDefaultsExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actDefaults.Caption]),
    '{9B790597-F8F3-47A8-96FE-472EFFB6020E}');
  _Defaults;
  ProcedureFooter;
end;

procedure TConfigurationForm.actApplyExecute(Sender: TObject);
var
  dialog_position: TDialogPosition;
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actApply.Caption]),
    '{84DDCA84-3467-43EB-9005-E35C20FD98D0}');
  Log.SendInfo('������� ��������� �������� ��������� ���� ������������ �������������.');

  if Assigned(Configuration) then
  begin
    // ������� "��������� ����������"
    Configuration.EnableSplashAtStart := chkbxShowSplashAtStart.Enabled and
      chkbxShowSplashAtStart.Checked;
    Configuration.EnableToolbar := chkbxShowToolbar.Enabled and chkbxShowToolbar.Checked;
    Configuration.EnableStatusbar := chkbxShowStatusbar.Enabled and chkbxShowStatusbar.Checked;
    Configuration.EnableEditboxHints := chkbxShowEditboxHints.Enabled and
      chkbxShowEditboxHints.Checked;
    Configuration.EnableCommonSearchEditbox := chkbxShowCommonSearchEditbox.Enabled and
      chkbxShowCommonSearchEditbox.Checked;
    Configuration.EnableID := chkbxShowID.Enabled and chkbxShowID.Checked;
    Configuration.EnableMultibuffer := chkbxUseMultibuffer.Enabled and chkbxUseMultibuffer.Checked;
    Configuration.EnableQuitConfirmation := chkbxShowConfirmationOnQuit.Enabled and
      chkbxShowConfirmationOnQuit.Checked;

    // ������� "��������� ������� ��������� ������"
    Configuration.EnableLog := chkbxEnableLog.Enabled and chkbxEnableLog.Checked;

    if Configuration.EnableLog and chkbxKeepErrorLog.Enabled and chkbxKeepErrorLog.Checked then
    begin
      Configuration.KeepLogTypes := Configuration.KeepLogTypes + [lmtError];
    end
    else
    begin
      Configuration.KeepLogTypes := Configuration.KeepLogTypes - [lmtError];
    end;

    if Configuration.EnableLog and chkbxKeepWarningLog.Enabled and chkbxKeepWarningLog.Checked then
    begin
      Configuration.KeepLogTypes := Configuration.KeepLogTypes + [lmtWarning];
    end
    else
    begin
      Configuration.KeepLogTypes := Configuration.KeepLogTypes - [lmtWarning];
    end;

    if Configuration.EnableLog and chkbxKeepInfoLog.Enabled and chkbxKeepInfoLog.Checked then
    begin
      Configuration.KeepLogTypes := Configuration.KeepLogTypes + [lmtInfo];
    end
    else
    begin
      Configuration.KeepLogTypes := Configuration.KeepLogTypes - [lmtInfo];
    end;

    if Configuration.EnableLog and chkbxKeepSQLLog.Enabled and chkbxKeepSQLLog.Checked then
    begin
      Configuration.KeepLogTypes := Configuration.KeepLogTypes + [lmtSQL];
    end
    else
    begin
      Configuration.KeepLogTypes := Configuration.KeepLogTypes - [lmtSQL];
    end;

    if Configuration.EnableLog and chkbxKeepDebugLog.Enabled and chkbxKeepDebugLog.Checked then
    begin
      Configuration.KeepLogTypes := Configuration.KeepLogTypes + [lmtDebug];
    end
    else
    begin
      Configuration.KeepLogTypes := Configuration.KeepLogTypes - [lmtDebug];
    end;

    Configuration.EnableFlushLogOnExit := chkbxFlushLogOnExit.Enabled and
      chkbxFlushLogOnExit.Checked;
    Configuration.EnableFlushLogOnStringsQuantity := chkbxFlushLogOnStringsQuantity.Enabled and
      chkbxFlushLogOnStringsQuantity.Checked;
    Configuration.EnableFlushLogOnStringsQuantityValue :=
      StrToIntDef(IfThen(chkbxFlushLogOnStringsQuantity.Enabled and
      chkbxFlushLogOnStringsQuantity.Checked and edbxFlushLogOnStringsQuantityValue.Enabled,
      Trim(edbxFlushLogOnStringsQuantityValue.Text), EmptyStr),
      DEFAULT_CONFIGURATION_FLUSH_LOG_ON_STRINGS_QUANTITY_VALUE);
    Configuration.EnableFlushLogOnClearingLog := chkbxFlushLogOnClearingLog.Enabled and
      chkbxFlushLogOnClearingLog.Checked;
    Configuration.EnableFlushLogOnApply := chkbxFlushLogOnApply.Enabled and
      chkbxFlushLogOnApply.Checked;
    Configuration.EnableCustomLogClient := chkbxCustomLogClientFile.Enabled and
      chkbxCustomLogClientFile.Checked;
    Configuration.CustomLogClientValue := IfThen(chkbxCustomLogClientFile.Enabled and
      chkbxCustomLogClientFile.Checked and chkbxEnableLog.Enabled and chkbxEnableLog.Checked and
      edbxCustomLogClientFileValue.Enabled, Trim(edbxCustomLogClientFileValue.Text),
      DEFAULT_CONFIGURATION_CUSTOM_LOG_CLIENT_VALUE);

    // ������� "��������� ��������� ���������� ����"
    dialog_position.Centered := chkbxLoginFormPositionByCenter.Enabled and
      chkbxLoginFormPositionByCenter.Checked;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxLoginFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxLoginFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.LoginFormPosition := dialog_position;

    dialog_position.Centered := chkbxConfigurationFormPositionByCenter.Checked and
      chkbxConfigurationFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxConfigurationFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxConfigurationFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.ConfigurationFormPosition.Assign(dialog_position);

    dialog_position.Centered := chkbxUsersFormPositionByCenter.Checked and
      chkbxUsersFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxUsersFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxUsersFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.UsersFormPosition.Assign(dialog_position);

    dialog_position.Centered := chkbxSetPasswordFormPositionByCenter.Checked and
      chkbxSetPasswordFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxSetPasswordFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxSetPasswordFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.SetPasswordFormPosition.Assign(dialog_position);

    dialog_position.Centered := chkbxReportFormPositionByCenter.Checked and
      chkbxReportFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxReportFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxReportFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.ReportFormPosition.Assign(dialog_position);

    dialog_position.Centered := chkbxMaintenanceFormPositionByCenter.Checked and
      chkbxMaintenanceFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxMaintenanceFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxMaintenanceFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.MaintenanceFormPosition.Assign(dialog_position);

    dialog_position.Centered := chkbxClearingFormPositionByCenter.Checked and
      chkbxClearingFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxClearingFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxClearingFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.ClearingFormPosition.Assign(dialog_position);

    dialog_position.Centered := chkbxViewMessagesFormPositionByCenter.Checked and
      chkbxViewMessagesFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxViewMessagesFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxViewMessagesFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.ViewMessagesFormPosition.Assign(dialog_position);

    dialog_position.Centered := chkbxCreateMessageFormPositionByCenter.Checked and
      chkbxCreateMessageFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxCreateMessageFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxCreateMessageFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.CreateMessageFormPosition.Assign(dialog_position);

    dialog_position.Centered := chkbxViewMessageFormPositionByCenter.Checked and
      chkbxViewMessageFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxViewMessageFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxViewMessageFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.ViewMessageFormPosition.Assign(dialog_position);

    dialog_position.Centered := chkbxPhoneListFormPositionByCenter.Checked and
      chkbxPhoneListFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxPhoneListFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxPhoneListFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.PhoneListFormPosition.Assign(dialog_position);

    dialog_position.Centered := chkbxAddEditPhoneFormPositionByCenter.Checked and
      chkbxAddEditPhoneFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxAddEditPhoneFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxAddEditPhoneFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.AddEditPhoneFormPosition.Assign(dialog_position);

    dialog_position.Centered := chkbxAddMassMsrFormPositionByCenter.Checked and
      chkbxAddMassMsrFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxAddMassMsrFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxAddMassMsrFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.AddMassMsrFormPosition.Assign(dialog_position);

    dialog_position.Centered := chkbxPermissionsFormPositionByCenter.Checked and
      chkbxPermissionsFormPositionByCenter.Enabled;
    dialog_position.Left := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxPermissionsFormPositionX.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_LEFT);
    dialog_position.Top := StrToIntDef(IfThen(not dialog_position.Centered,
      Trim(edbxPermissionsFormPositionY.Text), EmptyStr), DEFAULT_CONFIGURATION_DIALOG_TOP);
    Configuration.PermissionsFormPosition.Assign(dialog_position);

    // ������� "��������� ��������� �����������"
    Configuration.EnableStoreLogin := chkbxStoreLastLogin.Enabled and chkbxStoreLastLogin.Checked;
    Configuration.EnableStorePassword := chkbxStoreLastPassword.Enabled and
      chkbxStoreLastPassword.Checked;
    Configuration.EnableAutoLogon := chkbxStoreLastLogin.Enabled and chkbxStoreLastLogin.Checked and
      chkbxStoreLastPassword.Enabled and chkbxStoreLastPassword.Checked and
      chkbxAutoLogon.Enabled and chkbxAutoLogon.Checked;

    // ������� "����������� � ������� ���� ������ ������"
    if vleRNE4SERVER.Enabled then
    begin
      Configuration.DBServer.Host := Trim(vleRNE4SERVER.Cells[1, 1]);
      Configuration.DBServer.Port := StrToIntDef(Trim(vleRNE4SERVER.Cells[1, 2]),
        DEFAULT_CONFIGURATION_DBSERVER_PORT);
      Configuration.DBServer.Timeout := StrToIntDef(Trim(vleRNE4SERVER.Cells[1, 3]),
        DEFAULT_CONFIGURATION_DBSERVER_TIMEOUT);
      Configuration.DBServer.Compression := Trim(vleRNE4SERVER.Cells[1, 4]) = '��';
      Configuration.DBServer.Database := Trim(vleRNE4SERVER.Cells[1, 5]);
    end;

    // ������� "����������� � ������� ������� ������ �����������"
    if vleRNE4MESSAGESSERVER.Enabled then
    begin
      Configuration.MessageServer.Host := Trim(vleRNE4MESSAGESSERVER.Cells[1, 1]);
      Configuration.MessageServer.Port := StrToIntDef(Trim(vleRNE4MESSAGESSERVER.Cells[1, 2]),
        DEFAULT_CONFIGURATION_MESSAGESERVER_PORT);
      Configuration.MessageServer.Timeout := StrToIntDef(Trim(vleRNE4MESSAGESSERVER.Cells[1, 3]),
        DEFAULT_CONFIGURATION_MESSAGESERVER_TIMEOUT);
      Configuration.MessageServer.Compression := Trim(vleRNE4MESSAGESSERVER.Cells[1, 4]) = '��';
      Configuration.MessageServer.Database := Trim(vleRNE4MESSAGESSERVER.Cells[1, 5]);
    end;

    // ������� "��������� ������������ �������"
    if rbSaveIntoTheTempFolder.Enabled and rbSaveIntoTheTempFolder.Checked then
    begin
      Configuration.ReportFolderType := rfTempFolder;
    end;
    if rbSaveIntoTheApplicationFolder.Enabled and rbSaveIntoTheApplicationFolder.Checked then
    begin
      Configuration.ReportFolderType := rfApplicationFolder;
    end;
    if rbSaveIntoTheCustomFolder.Enabled and rbSaveIntoTheCustomFolder.Checked then
    begin
      Configuration.ReportFolderType := rfCustomFolder;
    end;

    Configuration.CustomReportFolderValue := IfThen(rbSaveIntoTheCustomFolder.Enabled and
      rbSaveIntoTheCustomFolder.Checked, Trim(edbxCustomReportFolderValue.Text),
      DEFAULT_CONFIGURATION_CUSTOM_REPORT_FOLDER_VALUE);
    Configuration.EnableOverwriteConfirmation := chkbxDemandOverwriteConfirmation.Enabled and
      chkbxDemandOverwriteConfirmation.Checked;
    Configuration.EnableAskForFileName := chkbxAskForFileName.Enabled and
      chkbxAskForFileName.Checked;

    // ������� "��������� ������ ����������"

    // ������� "��������� ������"
    Configuration.EnableLaunchAtStartup := chkbxLaunchAtStartup.Enabled and
      chkbxLaunchAtStartup.Checked;
    Configuration.EnablePlaySoundOnComplete := chkbxPlaySoundOnComplete.Enabled and
      chkbxPlaySoundOnComplete.Checked;
    Configuration.EnableAutoGetMessages := chkbxEnableAutoGetMessages.Enabled and
      chkbxEnableAutoGetMessages.Checked;
    Configuration.AutoGetMessagesCycleDurationValue :=
      StrToIntDef(IfThen(chkbxEnableAutoGetMessages.Enabled and
      chkbxEnableAutoGetMessages.Checked and edbxAutoGetMessagesCycleDurationValue.Enabled,
      Trim(edbxAutoGetMessagesCycleDurationValue.Text),
      IntToStr(DEFAULT_CONFIGURATION_AUTO_GET_MESSAGES_CYCLE_DURATION_VALUE)),
      DEFAULT_CONFIGURATION_AUTO_GET_MESSAGES_CYCLE_DURATION_VALUE);
    Configuration.EnableCustomHelpFile := chkbxCustomHelpFile.Enabled and
      chkbxCustomHelpFile.Checked;
    Configuration.CustomHelpFileValue :=
      IfThen(chkbxCustomHelpFile.Enabled and chkbxCustomHelpFile.Checked and
      edbxCustomHelpFileValue.Enabled, Trim(edbxCustomHelpFileValue.Text),
      DEFAULT_CONFIGURATION_CUSTOM_HELP_FILE_VALUE);

    // ������� "��������� �������� ����"
    Configuration.MainFormEnableCentered := chkbxMainFormPositionByCenter.Enabled and
      chkbxMainFormPositionByCenter.Checked and
      (not(chkbxFullScreenAtLaunch.Enabled and chkbxFullScreenAtLaunch.Checked));
    Configuration.MainFormEnableFullScreenAtLaunch := chkbxFullScreenAtLaunch.Enabled and
      chkbxFullScreenAtLaunch.Checked;
    if chkbxFullScreenAtLaunch.Enabled and chkbxFullScreenAtLaunch.Checked then
    begin
      Configuration.MainFormLeft := Screen.WorkAreaLeft;
      Configuration.MainFormTop := Screen.WorkAreaTop;
      Configuration.MainFormWidth := Screen.WorkAreaWidth;
      Configuration.MainFormHeight := Screen.WorkAreaHeight;
    end
    else
      if chkbxMainFormPositionByCenter.Enabled and chkbxMainFormPositionByCenter.Checked then
      begin
        if edbxMainFormWidth.Enabled then
        begin
          Configuration.MainFormWidth := StrToIntDef(Trim(edbxMainFormWidth.Text),
            DEFAULT_CONFIGURATION_MAIN_FORM_WIDTH);
        end
        else
        begin
          Configuration.MainFormWidth := DEFAULT_CONFIGURATION_MAIN_FORM_WIDTH;
        end;

        if edbxMainFormHeight.Enabled then
        begin
          Configuration.MainFormHeight := StrToIntDef(Trim(edbxMainFormHeight.Text),
            DEFAULT_CONFIGURATION_MAIN_FORM_HEIGHT);
        end
        else
        begin
          Configuration.MainFormHeight := DEFAULT_CONFIGURATION_MAIN_FORM_HEIGHT;
        end;
        Configuration.MainFormLeft := (Screen.WorkAreaWidth - Configuration.MainFormWidth) div 2;
        Configuration.MainFormTop := (Screen.WorkAreaHeight - Configuration.MainFormHeight) div 2;
      end
      else
      begin
        if edbxMainFormPositionX.Enabled then
        begin
          Configuration.MainFormLeft := StrToIntDef(Trim(edbxMainFormPositionX.Text),
            DEFAULT_CONFIGURATION_MAIN_FORM_LEFT);
        end
        else
        begin
          Configuration.MainFormLeft := DEFAULT_CONFIGURATION_MAIN_FORM_LEFT;
        end;

        if edbxMainFormPositionY.Enabled then
        begin
          Configuration.MainFormTop := StrToIntDef(Trim(edbxMainFormPositionY.Text),
            DEFAULT_CONFIGURATION_MAIN_FORM_TOP);
        end
        else
        begin
          Configuration.MainFormTop := DEFAULT_CONFIGURATION_MAIN_FORM_TOP;
        end;

        if edbxMainFormWidth.Enabled then
        begin
          Configuration.MainFormWidth := StrToIntDef(Trim(edbxMainFormWidth.Text),
            DEFAULT_CONFIGURATION_MAIN_FORM_WIDTH);
        end
        else
        begin
          Configuration.MainFormWidth := DEFAULT_CONFIGURATION_MAIN_FORM_WIDTH;
        end;

        if edbxMainFormHeight.Enabled then
        begin
          Configuration.MainFormHeight := StrToIntDef(Trim(edbxMainFormHeight.Text),
            DEFAULT_CONFIGURATION_MAIN_FORM_HEIGHT);
        end
        else
        begin
          Configuration.MainFormHeight := DEFAULT_CONFIGURATION_MAIN_FORM_HEIGHT;
        end;
      end;

    // ������� "��������� ����������� ����������"
    Configuration.OrganizationPanelHeightValue :=
      StrToIntDef(IfThen(chkbxOrganizationPanelHalfHeight.Enabled and
      chkbxOrganizationPanelHalfHeight.Checked, EmptyStr,
      Trim(edbxOrganizationPanelHeightValue.Text)),
      DEFAULT_CONFIGURATION_ORGANIZATION_PANEL_HEIGHT_VALUE);
    Configuration.OrganizationPanelEnableHalfHeight := chkbxOrganizationPanelHalfHeight.Enabled and
      chkbxOrganizationPanelHalfHeight.Checked;
    Configuration.DataPanelWidthValue :=
      StrToIntDef(IfThen(chkbxDataPanelHalfWidth.Enabled and chkbxDataPanelHalfWidth.Checked,
      EmptyStr, Trim(edbxDataPanelWidthValue.Text)), DEFAULT_CONFIGURATION_DATA_PANEL_WIDTH_VALUE);
    Configuration.DataPanelEnableHalfWidth := chkbxDataPanelHalfWidth.Enabled and
      chkbxDataPanelHalfWidth.Checked;
    Configuration.EnableDataInOtherInfoPanel := chkbxShowDataInOtherInfoPanel.Enabled and
      chkbxShowDataInOtherInfoPanel.Checked;
    Configuration.EnableMeasuresListAsRichEdit := chkbxShowMeasuresListAsRichEdit.Enabled and
      chkbxShowMeasuresListAsRichEdit.Checked;
    Configuration.EnableMarkSearchedStrings := chkbxMarkSearchedStrings.Enabled and
      chkbxMarkSearchedStrings.Checked;
    Configuration.EnablePutTownAtTheEnd := chkbxPutTownAtTheEnd.Enabled and
      chkbxPutTownAtTheEnd.Checked;
  end;

  CloseModalWindowWithOkResult(RsConfigurationForm, '{92ABA070-CF8C-44CD-B913-A2FF0094ECB5}');
  ProcedureFooter;
end;

procedure TConfigurationForm._PreviousPage;
var
  i: Integer;
begin
  ProcedureHeader('��������� ����������� ���������� �������� �������� ���������',
    '{8CC5AFC0-A130-40F8-A13E-441914AFE036}');

  i := cbPage.ItemIndex - 1;
  if i < 0 then
  begin
    i := cbPage.Items.Count - 1;
  end;
  cbPage.ItemIndex := i;
  _PageSelect;

  ProcedureFooter;
end;

procedure TConfigurationForm._NextPage;
var
  i: Integer;
begin
  ProcedureHeader('��������� ����������� ��������� �������� �������� ���������',
    '{0408CB52-5F42-4BE4-8BB5-09EBA649B868}');

  i := cbPage.ItemIndex + 1;
  if i > cbPage.Items.Count - 1 then
  begin
    i := 0;
  end;
  cbPage.ItemIndex := i;
  _PageSelect;

  ProcedureFooter;
end;

procedure TConfigurationForm._ChooseCustomHelpFile;
var
  sPath: string;
begin
  ProcedureHeader('��������� ������ ���������� ����������� ����� � ���������',
    '{DBF9ACD7-9F70-4D0A-9D90-CA893744CBBB}');

  SaveBusyCounter;

  with TOpenDialog.Create(Self) do
    try
      Filter := '���� ������� � ���������|' + StringReplace(ExtractFileName(Application.ExeName),
        '.exe', '.chm', [rfReplaceAll, rfIgnoreCase]) +
        '|���������� ����� ������� .CHM|*.chm|���������� ����� ������� .HLP|*.hlp';
      DefaultExt := 'chm';
      Title := '�������� ���� �������...';
      FilterIndex := 1;
      Options := [ofReadOnly, ofFileMustExist];
      if Execute then
        if FileName = EmptyStr then
        begin
          GenerateError('�������� ������ ��� ������ ����� ������� - ���� �� ��� ������!');
        end
        else
          if not FileExists(FileName) then
          begin
            GenerateError
              ('�������� ������ ��� ������ ����� ������� - ��������� ���� �� ����������!');
          end
          else
          begin
            edbxCustomHelpFileValue.Text := FileName;
            Log.SendDebug('� �������� ���������� ����������� ����� ������� ���� "' + sPath + '".');
          end;
    finally
      Free;
    end;
  RestoreBusyCounter;

  ProcedureFooter;
end;

procedure TConfigurationForm._ChooseCustomReportFolder;
var
  s, sPath: string;
begin
  ProcedureHeader('��������� ������ ����� ��� ���������� �������',
    '{58DA7933-E4BD-4402-9E83-2446DB94BE14}');

  SaveBusyCounter;

  s := edbxCustomReportFolderValue.Text;

  if SelectDirectory('�������� �����', EmptyStr, s, [sdNewFolder, sdNewUI], Self) then
    if (s <> EmptyStr) then
    begin
      sPath := IncludeTrailingPathDelimiter(sPath);
      if System.SysUtils.DirectoryExists(sPath) then
      begin
        edbxCustomReportFolderValue.Text := sPath;
        Log.SendDebug('� �������� ����� ��� ���������� ������� ������� ����� "' + sPath + '".');
      end
      else
      begin
        edbxCustomReportFolderValue.Text := EmptyStr;
        GenerateError('�������� ������ ��� ������ ����� - ��������� ����� �� ����������!');
      end;
    end;

  RestoreBusyCounter;

  ProcedureFooter;
end;

procedure TConfigurationForm._ChooseLogClientFile;
var
  sPath: string;
begin
  ProcedureHeader('��������� ������ �������� ������� ����������������',
    '{DCD63D88-72D9-42E5-91EC-35906B335D27}');

  SaveBusyCounter;

  with TOpenDialog.Create(Self) do
    try
      Filter := '���� ������ ���-�������|LogKeeper.exe|����������� �����|*.exe';
      DefaultExt := 'exe';
      Title := '�������� ���� �������� ������� ����������������...';
      FilterIndex := 1;
      Options := [ofReadOnly, ofFileMustExist];
      if Execute then
        if FileName = EmptyStr then
          GenerateError
            ('�������� ������ ��� ������ ����� �������� ������� ���������������� - ���� �� ��� ������!')
        else
          if not FileExists(FileName) then
            GenerateError
              ('�������� ������ ��� ������ ����� �������� ������� ���������������� - ��������� ���� �� ����������!')
          else
          begin
            edbxCustomLogClientFileValue.Text := FileName;
            Log.SendDebug('� �������� ����� �������� ������� ���������������� ������ ���� "' +
              sPath + '".');
          end;
    finally
      Free;
    end;
  RestoreBusyCounter;

  ProcedureFooter;
end;

procedure TConfigurationForm._PageSelect;
var
  i: Integer;
begin
  ProcedureHeader
    ('��������� ���������� ��������� ��������� ���������� � ����������� �� ���������� ������ ����������� ������ ��������',
    '{396B4482-5CD9-4C26-8AE4-B5CC0F52CF20}');

  // ����� � �������� ������ �������� � ����������
  for i := 0 to PageControl1.PageCount - 1 do
  begin
    if PageControl1.Pages[i].Caption = cbPage.Items[cbPage.ItemIndex] then
    begin
      PageControl1.ActivePageIndex := i;
      Break;
    end;
  end;

  // ����������� �������� ������ �������� � �������� �� ���������
  if (PageControl1.ActivePage.Caption = ' ����������� � ������� ���� ������ ������') or
    (PageControl1.ActivePage.Caption = ' ����������� � ������� ������� ������ �����������') then
  begin
    if PageControl1.ActivePage.Caption = ' ����������� � ������� ���� ������ ������' then
    begin
      actDefaults.Enabled := vleRNE4SERVER.Enabled;
    end;
    if PageControl1.ActivePage.Caption = ' ����������� � ������� ������� ������ �����������' then
    begin
      actDefaults.Enabled := vleRNE4MESSAGESSERVER.Enabled;
    end;
  end
  else
  begin
    actDefaults.Enabled := not(PageControl1.ActivePage.Caption = ' ������ ����������');
  end;
  Log.SendDebug('�������� "' + actDefaults.Caption + '" ' + IfThen(actDefaults.Enabled, '�', '��') +
    '�������.');

  // ����������� �������� �������� � ��������� ������ � ������ �����������
  actLineUp.Visible := (PageControl1.ActivePage.Caption = ' ������ ����������') and
    sgAutoReplaceList.Visible and sgAutoReplaceList.Enabled;
  actLineDown.Visible := actLineUp.Visible;

  ProcedureFooter;
end;

procedure TConfigurationForm._CreateBooleanValuesList;
begin
  FBooleanValuesList := TStringList.Create;
  FBooleanValuesList.Add('���');
  FBooleanValuesList.Add('��');
end;

procedure TConfigurationForm._Defaults;
begin
  ProcedureHeader('��������� ������ �������� � ��������� �� ���������',
    '{EDC577E6-6D47-4DC2-973E-AD820C7AC588}');

  // ������� "��������� ����������"
  if PageControl1.ActivePage.Caption = ' ����������' then
  begin
    // ����������� �������� �� ��������� ��� ���������
    chkbxShowSplashAtStart.Checked := DEFAULT_CONFIGURATION_ENABLE_SPLASH_AT_START;
    chkbxShowToolbar.Checked := DEFAULT_CONFIGURATION_ENABLE_TOOLBAR;
    chkbxShowStatusbar.Checked := DEFAULT_CONFIGURATION_ENABLE_STATUSBAR;
    chkbxShowEditboxHints.Checked := DEFAULT_CONFIGURATION_ENABLE_EDITBOX_HINTS;
    chkbxShowCommonSearchEditbox.Checked := DEFAULT_CONFIGURATION_ENABLE_COMMON_SEARCH_EDITBOX;
    chkbxShowID.Checked := DEFAULT_CONFIGURATION_ENABLE_ID;
    chkbxUseMultibuffer.Checked := DEFAULT_CONFIGURATION_ENABLE_MULTIBUFFER;
    chkbxShowConfirmationOnQuit.Checked := DEFAULT_CONFIGURATION_ENABLE_QUIT_CONFIRMATION;
  end;

  // ������� "��������� ������� ��������� ������"
  if PageControl1.ActivePage.Caption = ' ������� ��������� ������' then
  begin
    // ����������� �������� �� ��������� ��� ��������� ����������
    chkbxEnableLog.Checked := DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxKeepErrorLog.Checked := (lmtError in DEFAULT_CONFIGURATION_KEEP_LOG_TYPES) and
      DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxKeepWarningLog.Checked := (lmtWarning in DEFAULT_CONFIGURATION_KEEP_LOG_TYPES) and
      DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxKeepInfoLog.Checked := (lmtInfo in DEFAULT_CONFIGURATION_KEEP_LOG_TYPES) and
      DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxKeepSQLLog.Checked := (lmtSQL in DEFAULT_CONFIGURATION_KEEP_LOG_TYPES) and
      DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxKeepDebugLog.Checked := (lmtDebug in DEFAULT_CONFIGURATION_KEEP_LOG_TYPES) and
      DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxFlushLogOnExit.Checked := DEFAULT_CONFIGURATION_ENABLE_FLUSH_LOG_ON_EXIT and
      DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxFlushLogOnStringsQuantity.Checked :=
      DEFAULT_CONFIGURATION_ENABLE_FLUSH_LOG_ON_STRINGS_QUANTITY and
      DEFAULT_CONFIGURATION_ENABLE_LOG;
    edbxFlushLogOnStringsQuantityValue.Text :=
      IfThen(DEFAULT_CONFIGURATION_ENABLE_FLUSH_LOG_ON_STRINGS_QUANTITY and
      DEFAULT_CONFIGURATION_ENABLE_LOG,
      IntToStr(DEFAULT_CONFIGURATION_FLUSH_LOG_ON_STRINGS_QUANTITY_VALUE), EmptyStr);
    chkbxFlushLogOnClearingLog.Checked := DEFAULT_CONFIGURATION_ENABLE_FLUSH_LOG_ON_CLEARING_LOG and
      DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxFlushLogOnApply.Checked := DEFAULT_CONFIGURATION_ENABLE_FLUSH_LOG_ON_APPLY and
      DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxCustomLogClientFile.Checked := DEFAULT_CONFIGURATION_ENABLE_CUSTOM_LOG_CLIENT and
      DEFAULT_CONFIGURATION_ENABLE_LOG;
    edbxCustomLogClientFileValue.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_CUSTOM_LOG_CLIENT and
      DEFAULT_CONFIGURATION_ENABLE_LOG, DEFAULT_CONFIGURATION_CUSTOM_LOG_CLIENT_VALUE, EmptyStr);
    // ����������� ������� � ��������� ����������
    lblShowData.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxKeepErrorLog.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxKeepWarningLog.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxKeepInfoLog.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxKeepSQLLog.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxKeepDebugLog.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    lblFlushLog.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxFlushLogOnExit.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxFlushLogOnStringsQuantity.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    edbxFlushLogOnStringsQuantityValue.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxFlushLogOnClearingLog.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxFlushLogOnApply.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    chkbxCustomLogClientFile.Enabled := DEFAULT_CONFIGURATION_ENABLE_LOG;
    edbxCustomLogClientFileValue.Enabled := DEFAULT_CONFIGURATION_ENABLE_CUSTOM_LOG_CLIENT and
      DEFAULT_CONFIGURATION_ENABLE_LOG;
    actChooseCustomLogClientFile.Enabled := DEFAULT_CONFIGURATION_ENABLE_CUSTOM_LOG_CLIENT and
      DEFAULT_CONFIGURATION_ENABLE_LOG;
    Log.SendDebug('�������� "' + actChooseCustomLogClientFile.Caption + '" ' +
      IfThen(actChooseCustomLogClientFile.Enabled, '�', '��') + '�������.');
  end;

  // ������� "��������� ��������� ���������� ����"
  if PageControl1.ActivePage.Caption = ' ��������� ���������� ����' then
  begin
    chkbxLoginFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxLoginFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED, EmptyStr,
      IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxLoginFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED, EmptyStr,
      IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxLoginFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxLoginFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxConfigurationFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxConfigurationFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxConfigurationFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxConfigurationFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxConfigurationFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxUsersFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxUsersFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED, EmptyStr,
      IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxUsersFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED, EmptyStr,
      IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxUsersFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxUsersFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxSetPasswordFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxSetPasswordFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxSetPasswordFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxSetPasswordFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxSetPasswordFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxReportFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxReportFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED, EmptyStr,
      IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxReportFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED, EmptyStr,
      IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxReportFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxReportFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxMaintenanceFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxMaintenanceFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxMaintenanceFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxMaintenanceFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxMaintenanceFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxClearingFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxClearingFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED, EmptyStr,
      IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxClearingFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED, EmptyStr,
      IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxClearingFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxClearingFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxViewMessagesFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxViewMessagesFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxViewMessagesFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxViewMessagesFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxViewMessagesFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxCreateMessageFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxCreateMessageFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxCreateMessageFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxCreateMessageFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxCreateMessageFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxViewMessageFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxViewMessageFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxViewMessageFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxViewMessageFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxViewMessageFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxPhoneListFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxPhoneListFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxPhoneListFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxPhoneListFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxPhoneListFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxAddEditPhoneFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxAddEditPhoneFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxAddEditPhoneFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxAddEditPhoneFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxAddEditPhoneFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxAddMassMsrFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxAddMassMsrFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxAddMassMsrFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxAddMassMsrFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxAddMassMsrFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;

    chkbxPermissionsFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxPermissionsFormPositionX.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_LEFT));
    edbxPermissionsFormPositionY.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DIALOG_TOP));
    edbxPermissionsFormPositionX.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
    edbxPermissionsFormPositionY.Enabled := not DEFAULT_CONFIGURATION_ENABLE_DIALOG_CENTERED;
  end;

  // ������� "��������� ��������� �����������"
  if PageControl1.ActivePage.Caption = ' ��������� �����������' then
  begin
    // ����������� �������� �� ��������� ��� ��������� ����������
    chkbxStoreLastLogin.Checked := DEFAULT_CONFIGURATION_ENABLE_STORE_LOGIN;
    chkbxStoreLastPassword.Checked := DEFAULT_CONFIGURATION_ENABLE_STORE_PASSWORD;
    chkbxAutoLogon.Checked := DEFAULT_CONFIGURATION_ENABLE_AUTO_LOGON and
      DEFAULT_CONFIGURATION_ENABLE_STORE_LOGIN and DEFAULT_CONFIGURATION_ENABLE_STORE_PASSWORD;
    // ����������� ������� � ��������� ����������
    chkbxAutoLogon.Enabled := DEFAULT_CONFIGURATION_ENABLE_STORE_LOGIN and
      DEFAULT_CONFIGURATION_ENABLE_STORE_PASSWORD;
  end;

  // ������� "����������� � ������� ���� ������ ������"
  if PageControl1.ActivePage.Caption = ' ����������� � ������� ���� ������ ������' then
  begin
    // ����������� �������� �� ��������� ��� ��������� ����������
    vleRNE4SERVER.Cells[1, 1] := DEFAULT_CONFIGURATION_DBSERVER_HOST;
    vleRNE4SERVER.Cells[1, 2] := IntToStr(DEFAULT_CONFIGURATION_DBSERVER_PORT);
    vleRNE4SERVER.Cells[1, 3] := IntToStr(DEFAULT_CONFIGURATION_DBSERVER_TIMEOUT);
    vleRNE4SERVER.Cells[1, 4] := vleRNE4SERVER.ItemProps[3].PickList.Strings
      [Integer(DEFAULT_CONFIGURATION_DBSERVER_COMPRESSION)];
    vleRNE4SERVER.Cells[1, 5] := DEFAULT_CONFIGURATION_DBSERVER_DATABESE;
  end;

  // ������� "����������� � ������� ������� ������ �����������"
  if PageControl1.ActivePage.Caption = ' ����������� � ������� ������� ������ �����������' then
  begin
    // ����������� �������� �� ��������� ��� ��������� ����������
    vleRNE4MESSAGESSERVER.Cells[1, 1] := DEFAULT_CONFIGURATION_MESSAGESERVER_HOST;
    vleRNE4MESSAGESSERVER.Cells[1, 2] := IntToStr(DEFAULT_CONFIGURATION_MESSAGESERVER_PORT);
    vleRNE4MESSAGESSERVER.Cells[1, 3] := IntToStr(DEFAULT_CONFIGURATION_MESSAGESERVER_TIMEOUT);
    vleRNE4MESSAGESSERVER.Cells[1, 4] := vleRNE4MESSAGESSERVER.ItemProps[3].PickList.Strings
      [Integer(DEFAULT_CONFIGURATION_MESSAGESERVER_COMPRESSION)];
    vleRNE4MESSAGESSERVER.Cells[1, 5] := DEFAULT_CONFIGURATION_MESSAGESERVER_DATABASE;
  end;

  // ������� "��������� ������������ �������"
  if PageControl1.ActivePage.Caption = ' ������������ �������' then
  begin
    // ����������� �������� �� ��������� ��� ��������� ����������
    rbSaveIntoTheTempFolder.Checked := DEFAULT_CONFIGURATION_REPORT_FOLDER_TYPE = rfTempFolder;
    rbSaveIntoTheApplicationFolder.Checked :=
      DEFAULT_CONFIGURATION_REPORT_FOLDER_TYPE = rfApplicationFolder;
    rbSaveIntoTheCustomFolder.Checked := DEFAULT_CONFIGURATION_REPORT_FOLDER_TYPE = rfCustomFolder;
    edbxCustomReportFolderValue.Text := DEFAULT_CONFIGURATION_CUSTOM_REPORT_FOLDER_VALUE;
    chkbxDemandOverwriteConfirmation.Checked := DEFAULT_CONFIGURATION_ENABLE_OVERWRITE_CONFIRMATION;
    chkbxAskForFileName.Checked := DEFAULT_CONFIGURATION_ENABLE_ASK_FOR_FILE_NAME;
    // ����������� ������� � ��������� ����������
    edbxCustomReportFolderValue.Enabled := DEFAULT_CONFIGURATION_REPORT_FOLDER_TYPE =
      rfCustomFolder;
    actChooseReportFolder.Enabled := DEFAULT_CONFIGURATION_REPORT_FOLDER_TYPE = rfCustomFolder;
    Log.SendDebug('�������� "' + actChooseReportFolder.Caption + '" ' +
      IfThen(actChooseReportFolder.Enabled, '�', '��') + '�������.');
  end;

  // ������� "��������� ������"
  if PageControl1.ActivePage.Caption = ' ������' then
  begin
    // ����������� �������� �� ��������� ��� ��������� ����������
    chkbxLaunchAtStartup.Checked := DEFAULT_CONFIGURATION_ENABLE_LAUNCH_AT_STARTUP;
    chkbxPlaySoundOnComplete.Checked := DEFAULT_CONFIGURATION_ENABLE_PLAY_SOUND_ON_COMPLETE;
    chkbxEnableAutoGetMessages.Checked := DEFAULT_CONFIGURATION_ENABLE_AUTO_GET_MESSAGES;
    edbxAutoGetMessagesCycleDurationValue.Text :=
      IfThen(DEFAULT_CONFIGURATION_ENABLE_AUTO_GET_MESSAGES,
      IntToStr(DEFAULT_CONFIGURATION_AUTO_GET_MESSAGES_CYCLE_DURATION_VALUE), EmptyStr);
    chkbxCustomHelpFile.Checked := DEFAULT_CONFIGURATION_ENABLE_CUSTOM_HELP_FILE;
    edbxCustomHelpFileValue.Text := IfThen(DEFAULT_CONFIGURATION_ENABLE_CUSTOM_HELP_FILE,
      DEFAULT_CONFIGURATION_CUSTOM_HELP_FILE_VALUE, EmptyStr);
    // ����������� ������� � ��������� ����������
    edbxAutoGetMessagesCycleDurationValue.Enabled := DEFAULT_CONFIGURATION_ENABLE_AUTO_GET_MESSAGES;
    edbxCustomHelpFileValue.Enabled := DEFAULT_CONFIGURATION_ENABLE_CUSTOM_HELP_FILE;
    actChooseCustomHelpFile.Enabled := DEFAULT_CONFIGURATION_ENABLE_CUSTOM_HELP_FILE;
    Log.SendDebug('�������� "' + actChooseCustomHelpFile.Caption + '" ' +
      IfThen(actChooseCustomHelpFile.Enabled, '�', '��') + '�������.');
  end;

  // ������� "��������� �������� ����"
  if PageControl1.ActivePage.Caption = ' �������� ����' then
  begin
    // ����������� �������� �� ��������� ��� ��������� ����������
    chkbxFullScreenAtLaunch.Checked := DEFAULT_CONFIGURATION_MAIN_FORM_ENABLE_FULL_SCREEN_AT_LAUNCH;
    chkbxMainFormPositionByCenter.Checked := DEFAULT_CONFIGURATION_MAIN_FORM_ENABLE_CENTERED and
      (not DEFAULT_CONFIGURATION_MAIN_FORM_ENABLE_FULL_SCREEN_AT_LAUNCH);
    edbxMainFormPositionX.Text :=
      IfThen(not(DEFAULT_CONFIGURATION_MAIN_FORM_ENABLE_CENTERED or
      DEFAULT_CONFIGURATION_MAIN_FORM_ENABLE_FULL_SCREEN_AT_LAUNCH),
      IntToStr(DEFAULT_CONFIGURATION_MAIN_FORM_LEFT), EmptyStr);
    edbxMainFormPositionY.Text :=
      IfThen(not(DEFAULT_CONFIGURATION_MAIN_FORM_ENABLE_CENTERED or
      DEFAULT_CONFIGURATION_MAIN_FORM_ENABLE_FULL_SCREEN_AT_LAUNCH),
      IntToStr(DEFAULT_CONFIGURATION_MAIN_FORM_TOP), EmptyStr);
    edbxMainFormWidth.Text := IfThen(DEFAULT_CONFIGURATION_MAIN_FORM_ENABLE_FULL_SCREEN_AT_LAUNCH,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_MAIN_FORM_WIDTH));
    edbxMainFormHeight.Text := IfThen(DEFAULT_CONFIGURATION_MAIN_FORM_ENABLE_FULL_SCREEN_AT_LAUNCH,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_MAIN_FORM_HEIGHT));
  end;

  // ������� "��������� ����������� ����������"
  if PageControl1.ActivePage.Caption = ' ����������� ����������' then
  begin
    // ����������� �������� �� ��������� ��� ��������� ����������
    edbxOrganizationPanelHeightValue.Text :=
      IfThen(DEFAULT_CONFIGURATION_ORGANIZATION_PANEL_ENABLE_HALF_HEIGHT, EmptyStr,
      IntToStr(DEFAULT_CONFIGURATION_ORGANIZATION_PANEL_HEIGHT_VALUE));
    chkbxOrganizationPanelHalfHeight.Checked :=
      DEFAULT_CONFIGURATION_ORGANIZATION_PANEL_ENABLE_HALF_HEIGHT;
    edbxDataPanelWidthValue.Text := IfThen(DEFAULT_CONFIGURATION_DATA_PANEL_ENABLE_HALF_WIDTH,
      EmptyStr, IntToStr(DEFAULT_CONFIGURATION_DATA_PANEL_WIDTH_VALUE));
    chkbxDataPanelHalfWidth.Checked := DEFAULT_CONFIGURATION_DATA_PANEL_ENABLE_HALF_WIDTH;
    chkbxShowDataInOtherInfoPanel.Checked := DEFAULT_CONFIGURATION_ENABLE_DATA_IN_OTHER_INFO_PANEL;
    chkbxShowMeasuresListAsRichEdit.Checked :=
      DEFAULT_CONFIGURATION_ENABLE_MEASURE_LIST_AS_RICH_EDIT;
    chkbxMarkSearchedStrings.Checked := DEFAULT_CONFIGURATION_ENABLE_MARK_SEARCHED_STRINGS;
    chkbxPutTownAtTheEnd.Checked := DEFAULT_CONFIGURATION_ENABLE_PUT_TOWN_AT_THE_END;;
    // ����������� ������� � ��������� ����������
    edbxOrganizationPanelHeightValue.Enabled :=
      not DEFAULT_CONFIGURATION_ORGANIZATION_PANEL_ENABLE_HALF_HEIGHT;
    edbxDataPanelWidthValue.Enabled := not DEFAULT_CONFIGURATION_DATA_PANEL_ENABLE_HALF_WIDTH;
  end;

  Log.SendInfo('��������� ' + PageControl1.ActivePage.Caption +
    ' ���� �������� ������������� � �������� �� ���������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.FormShow(Sender: TObject);
begin
  ProcedureHeader('���������-���������� ������� ����������� ����',
    '{3D3256A6-E8E3-4709-A3B3-B7A6E90A75BF}');
  Log.SendInfo('���������� ���� �������� ���������.');
  ProcedureFooter;
end;

procedure TConfigurationForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Assigned(Configuration) then
  begin
    Configuration.CurrentPage := cbPage.ItemIndex;
  end;
  FreeAndNil(FBooleanValuesList);
end;

procedure TConfigurationForm.chkbxEnableLogClick(Sender: TObject);
var
  bUseLog: Boolean;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' + chkbxEnableLog.Caption + '"',
    '{20AFAF3C-D977-4A28-8779-C5F59EB39B45}');

  bUseLog := chkbxEnableLog.Enabled and chkbxEnableLog.Checked;

  lblShowData.Enabled := bUseLog;

  chkbxKeepInfoLog.Enabled := bUseLog;
  chkbxKeepInfoLog.Checked := chkbxKeepInfoLog.Checked and chkbxKeepInfoLog.Enabled;

  chkbxKeepWarningLog.Enabled := bUseLog;
  chkbxKeepWarningLog.Checked := chkbxKeepWarningLog.Checked and chkbxKeepWarningLog.Enabled;

  chkbxKeepErrorLog.Enabled := bUseLog;
  chkbxKeepErrorLog.Checked := chkbxKeepErrorLog.Checked and chkbxKeepErrorLog.Enabled;

  chkbxKeepSQLLog.Enabled := bUseLog;
  chkbxKeepSQLLog.Checked := chkbxKeepSQLLog.Checked and chkbxKeepSQLLog.Enabled;

  chkbxKeepDebugLog.Enabled := bUseLog;
  chkbxKeepDebugLog.Checked := chkbxKeepDebugLog.Checked and chkbxKeepDebugLog.Enabled;

  lblFlushLog.Enabled := bUseLog;

  chkbxFlushLogOnExit.Enabled := bUseLog;
  chkbxFlushLogOnExit.Checked := chkbxFlushLogOnExit.Checked and chkbxFlushLogOnExit.Enabled;

  chkbxFlushLogOnStringsQuantity.Enabled := bUseLog;
  chkbxFlushLogOnStringsQuantity.Checked := chkbxFlushLogOnStringsQuantity.Checked and
    chkbxFlushLogOnStringsQuantity.Enabled;
  edbxFlushLogOnStringsQuantityValue.Enabled := bUseLog and
    chkbxFlushLogOnStringsQuantity.Checked and chkbxFlushLogOnStringsQuantity.Enabled;
  if Assigned(Configuration) then
  begin
    edbxFlushLogOnStringsQuantityValue.Text := IfThen(edbxFlushLogOnStringsQuantityValue.Enabled,
      IfThen(Configuration.EnableFlushLogOnStringsQuantityValue > 0,
      IntToStr(Configuration.EnableFlushLogOnStringsQuantityValue),
      IntToStr(DEFAULT_CONFIGURATION_FLUSH_LOG_ON_STRINGS_QUANTITY_VALUE)), EmptyStr);
  end;

  chkbxFlushLogOnClearingLog.Enabled := bUseLog;
  chkbxFlushLogOnClearingLog.Checked := chkbxFlushLogOnClearingLog.Checked and
    chkbxFlushLogOnClearingLog.Enabled;

  chkbxFlushLogOnApply.Enabled := bUseLog;
  chkbxFlushLogOnApply.Checked := chkbxFlushLogOnApply.Checked and chkbxFlushLogOnApply.Enabled;

  chkbxCustomLogClientFile.Enabled := bUseLog;
  chkbxCustomLogClientFile.Checked := chkbxCustomLogClientFile.Checked and
    chkbxCustomLogClientFile.Enabled;

  edbxCustomLogClientFileValue.Enabled := bUseLog and chkbxCustomLogClientFile.Checked and
    chkbxCustomLogClientFile.Enabled;
  if not bUseLog then
  begin
    edbxCustomLogClientFileValue.Text := EmptyStr;
  end;

  actChooseCustomLogClientFile.Enabled := chkbxCustomLogClientFile.Checked and
    chkbxCustomLogClientFile.Enabled;
  Log.SendDebug('�������� "' + actChooseCustomLogClientFile.Caption + '" ' +
    IfThen(actChooseCustomLogClientFile.Enabled, '�', '��') + '�������.');

  Log.SendDebug('������ "' + chkbxEnableLog.Caption + '"' + IfThen(bUseLog, '�', '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxFlushLogOnStringsQuantityClick(Sender: TObject);
var
  bFlushLogOnStringsQuantity: Boolean;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' + chkbxFlushLogOnStringsQuantity.Caption
    + '"', '{56071FBF-61AE-472E-B52B-BC239C45CD7C}');

  bFlushLogOnStringsQuantity := chkbxFlushLogOnStringsQuantity.Checked and
    chkbxFlushLogOnStringsQuantity.Enabled;
  edbxFlushLogOnStringsQuantityValue.Enabled := bFlushLogOnStringsQuantity;
  if Assigned(Configuration) then
  begin
    edbxFlushLogOnStringsQuantityValue.Text := IfThen(bFlushLogOnStringsQuantity,
      IfThen(Configuration.EnableFlushLogOnStringsQuantityValue > 0,
      IntToStr(Configuration.EnableFlushLogOnStringsQuantityValue),
      IntToStr(DEFAULT_CONFIGURATION_FLUSH_LOG_ON_STRINGS_QUANTITY_VALUE)), EmptyStr);
  end;

  Log.SendDebug('������ "' + chkbxFlushLogOnStringsQuantity.Caption + '"' +
    IfThen(bFlushLogOnStringsQuantity, '�', '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxCustomLogClientFileClick(Sender: TObject);
var
  bCustomLogClientFile: Boolean;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' + chkbxCustomLogClientFile.Caption +
    '"', '{4CBC38D1-3DB9-480E-BA9A-246708A0C0A2}');

  bCustomLogClientFile := chkbxCustomLogClientFile.Checked and chkbxCustomLogClientFile.Enabled;

  edbxCustomLogClientFileValue.Enabled := bCustomLogClientFile;
  actChooseCustomLogClientFile.Enabled := bCustomLogClientFile;
  Log.SendDebug('�������� "' + actChooseCustomLogClientFile.Caption + '" ' +
    IfThen(actChooseCustomLogClientFile.Enabled, '�', '��') + '�������.');
  if not bCustomLogClientFile then
  begin
    edbxCustomLogClientFileValue.Text := EmptyStr;
  end;

  Log.SendDebug('������ "' + chkbxCustomLogClientFile.Caption + '"' + IfThen(bCustomLogClientFile,
    '�', '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxDataPanelHalfWidthClick(Sender: TObject);
var
  bDataPanelHalfWidth: Boolean;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' + chkbxDataPanelHalfWidth.Caption + '"',
    '{E88569C6-BFE3-4AE7-B34B-6CA8179B0FEA}');

  bDataPanelHalfWidth := chkbxDataPanelHalfWidth.Checked and chkbxDataPanelHalfWidth.Enabled;
  edbxDataPanelWidthValue.Enabled := not bDataPanelHalfWidth;
  if Assigned(Configuration) then
  begin
    edbxDataPanelWidthValue.Text := IfThen(bDataPanelHalfWidth, EmptyStr,
      IntToStr(Configuration.DataPanelWidthValue));
  end;

  Log.SendDebug('������ "' + chkbxDataPanelHalfWidth.Caption + '"' + IfThen(bDataPanelHalfWidth,
    '�', '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.rbSaveIntoTheCustomFolderClick(Sender: TObject);
begin
  ProcedureHeader('��������� ������� �� ������ �� �����������',
    '{77B71A67-5A1E-4D56-ADE8-C42EBD13CAC0}');

  if Sender is TRadioButton then
  begin
    Log.SendInfo('������ ����������� "' + (Sender as TRadioButton).Caption + '".');
  end;

  edbxCustomReportFolderValue.Enabled := rbSaveIntoTheCustomFolder.Checked;
  actChooseReportFolder.Enabled := rbSaveIntoTheCustomFolder.Checked;
  Log.SendDebug('�������� "' + actChooseReportFolder.Caption + '" ' +
    IfThen(actChooseReportFolder.Enabled, '�', '��') + '�������.');
  if not rbSaveIntoTheCustomFolder.Checked then
  begin
    edbxCustomReportFolderValue.Text := EmptyStr;
  end;

  ProcedureFooter;
end;

procedure TConfigurationForm.edbxNumericFieldKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key, ['0' .. '9', #8, '-']) then
  begin
    Key := #0; // "��������" ��� ��������� �������
  end;
end;

procedure TConfigurationForm.cbPageSelect(Sender: TObject);
begin
  ProcedureHeader('���������-���������� ������� ������ ������ ����������� ������',
    '{DD1092FC-D170-451E-B28F-B678197E5C0D}');
  _PageSelect;
  ProcedureFooter;
end;

procedure TConfigurationForm.FormCreate(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfFormCreation, [RsConfigurationForm]),
    '{928DE88A-9894-4B2A-B8AB-6D9BB130BCF6}');
  _CreateBooleanValuesList;

  ImageListSmall.GetIcon(ICON_CONFIGURATION, Icon);
  if Assigned(Configuration) then
  begin
    with Configuration do
    begin
      // ������� "��������� ����������"
      chkbxShowSplashAtStart.Checked := EnableSplashAtStart;
      chkbxShowToolbar.Checked := EnableToolbar;
      chkbxShowStatusbar.Checked := EnableStatusbar;
      chkbxShowEditboxHints.Checked := EnableEditboxHints;
      chkbxShowCommonSearchEditbox.Checked := EnableCommonSearchEditbox;
      chkbxShowID.Checked := EnableID;
      chkbxUseMultibuffer.Checked := EnableMultibuffer;
      chkbxShowConfirmationOnQuit.Checked := EnableQuitConfirmation;

      // ������� "��������� ������� ��������� ������"
      chkbxEnableLog.Checked := EnableLog;
      chkbxKeepErrorLog.Checked := (lmtError in KeepLogTypes) and EnableLog;
      chkbxKeepWarningLog.Checked := (lmtWarning in KeepLogTypes) and EnableLog;
      chkbxKeepInfoLog.Checked := (lmtInfo in KeepLogTypes) and EnableLog;
      chkbxKeepSQLLog.Checked := (lmtSQL in KeepLogTypes) and EnableLog;
      chkbxKeepDebugLog.Checked := (lmtDebug in KeepLogTypes) and EnableLog;
      chkbxFlushLogOnExit.Checked := EnableFlushLogOnExit and EnableLog;
      chkbxFlushLogOnStringsQuantity.Checked := EnableFlushLogOnStringsQuantity and EnableLog;
      edbxFlushLogOnStringsQuantityValue.Text :=
        IfThen(EnableFlushLogOnStringsQuantity and EnableLog,
        IntToStr(EnableFlushLogOnStringsQuantityValue), EmptyStr);
      chkbxFlushLogOnClearingLog.Checked := EnableFlushLogOnClearingLog and EnableLog;
      chkbxFlushLogOnApply.Checked := EnableFlushLogOnApply and EnableLog;
      chkbxCustomLogClientFile.Checked := EnableCustomLogClient and EnableLog;
      edbxCustomLogClientFileValue.Text := IfThen(EnableCustomLogClient and EnableLog,
        CustomLogClientValue, EmptyStr);
      lblShowData.Enabled := EnableLog;
      chkbxKeepErrorLog.Enabled := EnableLog;
      chkbxKeepWarningLog.Enabled := EnableLog;
      chkbxKeepInfoLog.Enabled := EnableLog;
      chkbxKeepSQLLog.Enabled := EnableLog;
      chkbxKeepDebugLog.Enabled := EnableLog;
      lblFlushLog.Enabled := EnableLog;
      chkbxFlushLogOnExit.Enabled := EnableLog;
      chkbxFlushLogOnStringsQuantity.Enabled := EnableLog;
      edbxFlushLogOnStringsQuantityValue.Enabled := EnableLog;
      chkbxFlushLogOnClearingLog.Enabled := EnableLog;
      chkbxFlushLogOnApply.Enabled := EnableLog;
      chkbxCustomLogClientFile.Enabled := EnableLog;
      edbxCustomLogClientFileValue.Enabled := EnableCustomLogClient and EnableLog;
      actChooseCustomLogClientFile.Enabled := EnableCustomLogClient and EnableLog;
      Log.SendDebug('�������� "' + actChooseCustomLogClientFile.Caption + '" ' +
        IfThen(actChooseCustomLogClientFile.Enabled, '�', '��') + '�������.');

      // ������� "��������� ��������� ���������� ����"
      ScrollBox1.VertScrollBar.Position := 0;

      chkbxLoginFormPositionByCenter.Checked := LoginFormPosition.Centered;
      edbxLoginFormPositionX.Text := IfThen(LoginFormPosition.Centered, EmptyStr,
        IntToStr(LoginFormPosition.Left));
      edbxLoginFormPositionY.Text := IfThen(LoginFormPosition.Centered, EmptyStr,
        IntToStr(LoginFormPosition.Top));
      edbxLoginFormPositionX.Enabled := not LoginFormPosition.Centered;
      edbxLoginFormPositionY.Enabled := not LoginFormPosition.Centered;

      chkbxConfigurationFormPositionByCenter.Checked := ConfigurationFormPosition.Centered;
      edbxConfigurationFormPositionX.Text := IfThen(ConfigurationFormPosition.Centered, EmptyStr,
        IntToStr(ConfigurationFormPosition.Left));
      edbxConfigurationFormPositionY.Text := IfThen(ConfigurationFormPosition.Centered, EmptyStr,
        IntToStr(ConfigurationFormPosition.Top));
      edbxConfigurationFormPositionX.Enabled := not ConfigurationFormPosition.Centered;
      edbxConfigurationFormPositionY.Enabled := not ConfigurationFormPosition.Centered;

      chkbxUsersFormPositionByCenter.Checked := UsersFormPosition.Centered;
      edbxUsersFormPositionX.Text := IfThen(UsersFormPosition.Centered, EmptyStr,
        IntToStr(UsersFormPosition.Left));
      edbxUsersFormPositionY.Text := IfThen(UsersFormPosition.Centered, EmptyStr,
        IntToStr(UsersFormPosition.Top));
      edbxUsersFormPositionX.Enabled := not UsersFormPosition.Centered;
      edbxUsersFormPositionY.Enabled := not UsersFormPosition.Centered;

      chkbxSetPasswordFormPositionByCenter.Checked := SetPasswordFormPosition.Centered;
      edbxSetPasswordFormPositionX.Text := IfThen(SetPasswordFormPosition.Centered, EmptyStr,
        IntToStr(SetPasswordFormPosition.Left));
      edbxSetPasswordFormPositionY.Text := IfThen(SetPasswordFormPosition.Centered, EmptyStr,
        IntToStr(SetPasswordFormPosition.Top));
      edbxSetPasswordFormPositionX.Enabled := not SetPasswordFormPosition.Centered;
      edbxSetPasswordFormPositionY.Enabled := not SetPasswordFormPosition.Centered;

      chkbxReportFormPositionByCenter.Checked := ReportFormPosition.Centered;
      edbxReportFormPositionX.Text := IfThen(ReportFormPosition.Centered, EmptyStr,
        IntToStr(ReportFormPosition.Left));
      edbxReportFormPositionY.Text := IfThen(ReportFormPosition.Centered, EmptyStr,
        IntToStr(ReportFormPosition.Top));
      edbxReportFormPositionX.Enabled := not ReportFormPosition.Centered;
      edbxReportFormPositionY.Enabled := not ReportFormPosition.Centered;

      chkbxMaintenanceFormPositionByCenter.Checked := MaintenanceFormPosition.Centered;
      edbxMaintenanceFormPositionX.Text := IfThen(MaintenanceFormPosition.Centered, EmptyStr,
        IntToStr(MaintenanceFormPosition.Left));
      edbxMaintenanceFormPositionY.Text := IfThen(MaintenanceFormPosition.Centered, EmptyStr,
        IntToStr(MaintenanceFormPosition.Top));
      edbxMaintenanceFormPositionX.Enabled := not MaintenanceFormPosition.Centered;
      edbxMaintenanceFormPositionY.Enabled := not MaintenanceFormPosition.Centered;

      chkbxClearingFormPositionByCenter.Checked := ClearingFormPosition.Centered;
      edbxClearingFormPositionX.Text := IfThen(ClearingFormPosition.Centered, EmptyStr,
        IntToStr(ClearingFormPosition.Left));
      edbxClearingFormPositionY.Text := IfThen(ClearingFormPosition.Centered, EmptyStr,
        IntToStr(ClearingFormPosition.Top));
      edbxClearingFormPositionX.Enabled := not ClearingFormPosition.Centered;
      edbxClearingFormPositionY.Enabled := not ClearingFormPosition.Centered;

      chkbxViewMessagesFormPositionByCenter.Checked := ViewMessagesFormPosition.Centered;
      edbxViewMessagesFormPositionX.Text := IfThen(ViewMessagesFormPosition.Centered, EmptyStr,
        IntToStr(ViewMessagesFormPosition.Left));
      edbxViewMessagesFormPositionY.Text := IfThen(ViewMessagesFormPosition.Centered, EmptyStr,
        IntToStr(ViewMessagesFormPosition.Top));
      edbxViewMessagesFormPositionX.Enabled := not ViewMessagesFormPosition.Centered;
      edbxViewMessagesFormPositionY.Enabled := not ViewMessagesFormPosition.Centered;

      chkbxCreateMessageFormPositionByCenter.Checked := CreateMessageFormPosition.Centered;
      edbxCreateMessageFormPositionX.Text := IfThen(CreateMessageFormPosition.Centered, EmptyStr,
        IntToStr(CreateMessageFormPosition.Left));
      edbxCreateMessageFormPositionY.Text := IfThen(CreateMessageFormPosition.Centered, EmptyStr,
        IntToStr(CreateMessageFormPosition.Top));
      edbxCreateMessageFormPositionX.Enabled := not CreateMessageFormPosition.Centered;
      edbxCreateMessageFormPositionY.Enabled := not CreateMessageFormPosition.Centered;

      chkbxViewMessageFormPositionByCenter.Checked := ViewMessageFormPosition.Centered;
      edbxViewMessageFormPositionX.Text := IfThen(ViewMessageFormPosition.Centered, EmptyStr,
        IntToStr(ViewMessageFormPosition.Left));
      edbxViewMessageFormPositionY.Text := IfThen(ViewMessageFormPosition.Centered, EmptyStr,
        IntToStr(ViewMessageFormPosition.Top));
      edbxViewMessageFormPositionX.Enabled := not ViewMessageFormPosition.Centered;
      edbxViewMessageFormPositionY.Enabled := not ViewMessageFormPosition.Centered;

      chkbxPhoneListFormPositionByCenter.Checked := PhoneListFormPosition.Centered;
      edbxPhoneListFormPositionX.Text := IfThen(PhoneListFormPosition.Centered, EmptyStr,
        IntToStr(PhoneListFormPosition.Left));
      edbxPhoneListFormPositionY.Text := IfThen(PhoneListFormPosition.Centered, EmptyStr,
        IntToStr(PhoneListFormPosition.Top));
      edbxPhoneListFormPositionX.Enabled := not PhoneListFormPosition.Centered;
      edbxPhoneListFormPositionY.Enabled := not PhoneListFormPosition.Centered;

      chkbxAddEditPhoneFormPositionByCenter.Checked := AddEditPhoneFormPosition.Centered;
      edbxAddEditPhoneFormPositionX.Text := IfThen(AddEditPhoneFormPosition.Centered, EmptyStr,
        IntToStr(AddEditPhoneFormPosition.Left));
      edbxAddEditPhoneFormPositionY.Text := IfThen(AddEditPhoneFormPosition.Centered, EmptyStr,
        IntToStr(AddEditPhoneFormPosition.Top));
      edbxAddEditPhoneFormPositionX.Enabled := not AddEditPhoneFormPosition.Centered;
      edbxAddEditPhoneFormPositionY.Enabled := not AddEditPhoneFormPosition.Centered;

      chkbxAddMassMsrFormPositionByCenter.Checked := AddMassMsrFormPosition.Centered;
      edbxAddMassMsrFormPositionX.Text := IfThen(AddMassMsrFormPosition.Centered, EmptyStr,
        IntToStr(AddMassMsrFormPosition.Left));
      edbxAddMassMsrFormPositionY.Text := IfThen(AddMassMsrFormPosition.Centered, EmptyStr,
        IntToStr(AddMassMsrFormPosition.Top));
      edbxAddMassMsrFormPositionX.Enabled := not AddMassMsrFormPosition.Centered;
      edbxAddMassMsrFormPositionY.Enabled := not AddMassMsrFormPosition.Centered;

      chkbxPermissionsFormPositionByCenter.Checked := PermissionsFormPosition.Centered;
      edbxPermissionsFormPositionX.Text := IfThen(PermissionsFormPosition.Centered, EmptyStr,
        IntToStr(PermissionsFormPosition.Left));
      edbxPermissionsFormPositionY.Text := IfThen(PermissionsFormPosition.Centered, EmptyStr,
        IntToStr(PermissionsFormPosition.Top));
      edbxPermissionsFormPositionX.Enabled := not PermissionsFormPosition.Centered;
      edbxPermissionsFormPositionY.Enabled := not PermissionsFormPosition.Centered;

      // ������� "��������� ��������� �����������"
      chkbxStoreLastLogin.Checked := EnableStoreLogin;
      chkbxStoreLastPassword.Checked := EnableStorePassword;
      chkbxAutoLogon.Checked := EnableAutoLogon and EnableStoreLogin and EnableStorePassword;
      chkbxAutoLogon.Enabled := EnableStoreLogin and EnableStorePassword;

      // ������� "����������� � ������� ���� ������ ������"
      vleRNE4SERVER.Cells[1, 1] := DBServer.Host;
      vleRNE4SERVER.ItemProps[1].EditMask := '99999;0; ';
      vleRNE4SERVER.Cells[1, 2] := IntToStr(DBServer.Port);
      vleRNE4SERVER.ItemProps[2].EditMask := '99999;0; ';
      vleRNE4SERVER.Cells[1, 3] := IntToStr(DBServer.Timeout);
      vleRNE4SERVER.ItemProps[3].EditStyle := esPickList;
      vleRNE4SERVER.ItemProps[3].PickList := FBooleanValuesList;
      vleRNE4SERVER.ItemProps[3].ReadOnly := True;
      vleRNE4SERVER.Cells[1, 4] := vleRNE4SERVER.ItemProps[3].PickList.Strings
        [Integer(DBServer.Compression)];
      vleRNE4SERVER.Cells[1, 5] := DBServer.Database;

      // ������� "����������� � ������� ������� ������ �����������"
      vleRNE4MESSAGESSERVER.Cells[1, 1] := MessageServer.Host;
      vleRNE4MESSAGESSERVER.ItemProps[1].EditMask := '99999;0; ';
      vleRNE4MESSAGESSERVER.Cells[1, 2] := IntToStr(MessageServer.Port);
      vleRNE4MESSAGESSERVER.ItemProps[2].EditMask := '99999;0; ';
      vleRNE4MESSAGESSERVER.Cells[1, 3] := IntToStr(MessageServer.Timeout);
      vleRNE4MESSAGESSERVER.ItemProps[3].EditStyle := esPickList;
      vleRNE4MESSAGESSERVER.ItemProps[3].PickList := FBooleanValuesList;
      vleRNE4MESSAGESSERVER.ItemProps[3].ReadOnly := True;
      vleRNE4MESSAGESSERVER.Cells[1, 4] := vleRNE4MESSAGESSERVER.ItemProps[3].PickList.Strings
        [Integer(MessageServer.Compression)];
      vleRNE4MESSAGESSERVER.Cells[1, 5] := MessageServer.Database;

      // ������� "��������� ������������ �������"
      rbSaveIntoTheTempFolder.Checked := ReportFolderType = rfTempFolder;
      rbSaveIntoTheApplicationFolder.Checked := ReportFolderType = rfApplicationFolder;
      rbSaveIntoTheCustomFolder.Checked := ReportFolderType = rfCustomFolder;
      edbxCustomReportFolderValue.Text := CustomReportFolderValue;
      chkbxDemandOverwriteConfirmation.Checked := EnableOverwriteConfirmation;
      chkbxAskForFileName.Checked := EnableAskForFileName;
      edbxCustomReportFolderValue.Enabled := ReportFolderType = rfCustomFolder;
      actChooseReportFolder.Enabled := ReportFolderType = rfCustomFolder;
      Log.SendDebug('�������� "' + actChooseReportFolder.Caption + '" ' +
        IfThen(actChooseReportFolder.Enabled, '�', '��') + '�������.');

      // ������� "��������� ������ ����������"
      lblAutoReplaceSorry.Caption := '��������, �� ������ �������� ������ ��� �������������' +
        sLineBreak + '� ������� �������������� ���� ������' + sLineBreak +
        '��� ���������� � ���� ������!';

      // ������� "��������� ������"
      chkbxLaunchAtStartup.Checked := EnableLaunchAtStartup;
      chkbxPlaySoundOnComplete.Checked := EnablePlaySoundOnComplete;
      chkbxEnableAutoGetMessages.Checked := EnableAutoGetMessages;
      edbxAutoGetMessagesCycleDurationValue.Text :=
        IfThen(EnableAutoGetMessages, IntToStr(AutoGetMessagesCycleDurationValue), EmptyStr);
      chkbxCustomHelpFile.Checked := EnableCustomHelpFile;

      edbxCustomHelpFileValue.Text := IfThen(EnableCustomHelpFile, CustomHelpFileValue, EmptyStr);

      edbxAutoGetMessagesCycleDurationValue.Enabled := EnableAutoGetMessages;
      edbxCustomHelpFileValue.Enabled := EnableCustomHelpFile;
      actChooseCustomHelpFile.Enabled := EnableCustomHelpFile;
      Log.SendDebug('�������� "' + actChooseCustomHelpFile.Caption + '" ' +
        IfThen(actChooseCustomHelpFile.Enabled, '�', '��') + '�������.');

      // ������� "��������� �������� ����"
      chkbxFullScreenAtLaunch.Checked := MainForm.WindowState = wsMaximized;
      chkbxMainFormPositionByCenter.Checked := MainForm.Position = poScreenCenter;
      edbxMainFormPositionX.Text :=
        IfThen(not((MainForm.Position = poScreenCenter) or (MainForm.WindowState = wsMaximized)),
        IntToStr(MainForm.Left), EmptyStr);
      edbxMainFormPositionY.Text :=
        IfThen(not((MainForm.Position = poScreenCenter) or (MainForm.WindowState = wsMaximized)),
        IntToStr(MainForm.Top), EmptyStr);
      edbxMainFormWidth.Text := IfThen(MainForm.WindowState = wsMaximized, EmptyStr,
        IntToStr(MainForm.Width));
      edbxMainFormHeight.Text := IfThen(MainForm.WindowState = wsMaximized, EmptyStr,
        IntToStr(MainForm.Height));

      // ������� "��������� ����������� ����������"
      edbxOrganizationPanelHeightValue.Text := IfThen(OrganizationPanelEnableHalfHeight, EmptyStr,
        IntToStr(OrganizationPanelHeightValue));
      chkbxOrganizationPanelHalfHeight.Checked := OrganizationPanelEnableHalfHeight;
      edbxDataPanelWidthValue.Text := IfThen(DataPanelEnableHalfWidth, EmptyStr,
        IntToStr(DataPanelWidthValue));
      chkbxDataPanelHalfWidth.Checked := DataPanelEnableHalfWidth;
      chkbxShowDataInOtherInfoPanel.Checked := EnableDataInOtherInfoPanel;
      chkbxShowMeasuresListAsRichEdit.Checked := EnableMeasuresListAsRichEdit;
      chkbxMarkSearchedStrings.Checked := EnableMarkSearchedStrings;
      chkbxPutTownAtTheEnd.Checked := EnablePutTownAtTheEnd;;
      edbxOrganizationPanelHeightValue.Enabled := not OrganizationPanelEnableHalfHeight;
      edbxDataPanelWidthValue.Enabled := not DataPanelEnableHalfWidth;

      cbPage.ItemIndex := CurrentPage;
    end;

  end;

  _PageSelect;
  rbSaveIntoTheCustomFolderClick(Sender);

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxFullScreenAtLaunchClick(Sender: TObject);
var
  bFullScreenAtLaunch: Boolean;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' + chkbxFullScreenAtLaunch.Caption + '"',
    '{52688629-980D-4725-A207-FD5D898B16AB}');

  bFullScreenAtLaunch := chkbxFullScreenAtLaunch.Checked and chkbxFullScreenAtLaunch.Enabled;
  chkbxMainFormPositionByCenter.Enabled := not bFullScreenAtLaunch;
  chkbxMainFormPositionByCenter.Checked := chkbxMainFormPositionByCenter.Checked and
    (not bFullScreenAtLaunch);
  edbxMainFormPositionX.Enabled := (not bFullScreenAtLaunch) and
    (not chkbxMainFormPositionByCenter.Checked);
  edbxMainFormPositionY.Enabled := (not bFullScreenAtLaunch) and
    (not chkbxMainFormPositionByCenter.Checked);
  edbxMainFormWidth.Enabled := not bFullScreenAtLaunch;
  edbxMainFormHeight.Enabled := not bFullScreenAtLaunch;

  if Assigned(Configuration) then
  begin
    edbxMainFormPositionX.Text := IfThen(edbxMainFormPositionX.Enabled,
      IntToStr(Configuration.MainFormLeft), EmptyStr);
    edbxMainFormPositionY.Text := IfThen(edbxMainFormPositionY.Enabled,
      IntToStr(Configuration.MainFormTop), EmptyStr);
    edbxMainFormWidth.Text := IfThen(not bFullScreenAtLaunch, IntToStr(Configuration.MainFormWidth),
      EmptyStr);
    edbxMainFormHeight.Text := IfThen(not bFullScreenAtLaunch,
      IntToStr(Configuration.MainFormHeight), EmptyStr);
  end;

  Log.SendDebug('������ "' + chkbxMainFormPositionByCenter.Caption + '"' +
    IfThen(bFullScreenAtLaunch, '�', '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxLoginFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  LoginForm: TLoginForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' + chkbxLoginFormPositionByCenter.Caption
    + '"', '{4F120B29-021D-4F4C-893C-F33E907F3D7A}');

  b := chkbxLoginFormPositionByCenter.Enabled and chkbxLoginFormPositionByCenter.Checked;
  edbxLoginFormPositionX.Enabled := not b;
  edbxLoginFormPositionY.Enabled := not b;
  if b then
  begin
    edbxLoginFormPositionX.Text := EmptyStr;
    edbxLoginFormPositionY.Text := EmptyStr;
  end
  else
  begin
    if Assigned(Configuration) then
    begin
      LoginForm := TLoginForm.Create(Self, Configuration.LoginFormPosition);
      try
        edbxLoginFormPositionX.Text := IntToStr((Screen.WorkAreaWidth - LoginForm.Width) div 2);
        edbxLoginFormPositionY.Text := IntToStr((Screen.WorkAreaHeight - LoginForm.Height) div 2);
      finally
        LoginForm.Free;
      end;
    end;
  end;
  Log.SendDebug('������ "' + chkbxLoginFormPositionByCenter.Caption + '"' + IfThen(b, '�', '��') +
    '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxSetPasswordFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  SetPasswordForm: TSetPasswordForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxSetPasswordFormPositionByCenter.Caption + '"', '{9ED32D46-9E32-4491-B6AB-6D5BBF7FD074}');

  b := chkbxSetPasswordFormPositionByCenter.Enabled and
    chkbxSetPasswordFormPositionByCenter.Checked;
  edbxSetPasswordFormPositionX.Enabled := not b;
  edbxSetPasswordFormPositionY.Enabled := not b;
  if b then
  begin
    edbxSetPasswordFormPositionX.Text := EmptyStr;
    edbxSetPasswordFormPositionY.Text := EmptyStr;
  end
  else
  begin
    if Assigned(Configuration) then
    begin
      SetPasswordForm := TSetPasswordForm.Create(Self, Configuration.SetPasswordFormPosition);
      try
        edbxSetPasswordFormPositionX.Text :=
          IntToStr((Screen.WorkAreaWidth - SetPasswordForm.Width) div 2);
        edbxSetPasswordFormPositionY.Text :=
          IntToStr((Screen.WorkAreaHeight - SetPasswordForm.Height) div 2);
      finally
        SetPasswordForm.Free;
      end;
    end;
  end;
  Log.SendDebug('������ "' + chkbxSetPasswordFormPositionByCenter.Caption + '"' + IfThen(b, '�',
    '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxReportFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  ReportForm: TReportForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxReportFormPositionByCenter.Caption + '"', '{24AC0BDC-F297-4CB9-BC03-8A19926A70C6}');

  b := chkbxReportFormPositionByCenter.Enabled and chkbxReportFormPositionByCenter.Checked;
  edbxReportFormPositionX.Enabled := not b;
  edbxReportFormPositionY.Enabled := not b;
  if b then
  begin
    edbxReportFormPositionX.Text := EmptyStr;
    edbxReportFormPositionY.Text := EmptyStr;
  end
  else
  begin
    if Assigned(Configuration) then
    begin
      ReportForm := TReportForm.Create(Self, Configuration.ReportFormPosition);
      try
        edbxReportFormPositionX.Text := IntToStr((Screen.WorkAreaWidth - ReportForm.Width) div 2);
        edbxReportFormPositionY.Text := IntToStr((Screen.WorkAreaHeight - ReportForm.Height) div 2);
      finally
        ReportForm.Free;
      end;
    end;
  end;
  Log.SendDebug('������ "' + chkbxReportFormPositionByCenter.Caption + '"' + IfThen(b, '�', '��') +
    '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxStoreLastLoginClick(Sender: TObject);
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' + chkbxStoreLastLogin.Caption + '"',
    '{DF6E7711-9716-4511-8C02-AA1F34D95096}');

  chkbxStoreLastPassword.Enabled := chkbxStoreLastLogin.Enabled and chkbxStoreLastLogin.Checked;
  chkbxStoreLastPassword.Checked := chkbxStoreLastPassword.Checked and
    chkbxStoreLastPassword.Enabled;
  chkbxAutoLogon.Enabled := chkbxStoreLastLogin.Enabled and chkbxStoreLastLogin.Checked and
    chkbxStoreLastPassword.Enabled and chkbxStoreLastPassword.Checked;
  chkbxAutoLogon.Checked := chkbxAutoLogon.Checked and chkbxAutoLogon.Enabled;
  Log.SendDebug('������ "' + chkbxStoreLastLogin.Caption + '"' + IfThen(chkbxStoreLastLogin.Checked,
    '�', '��') + '������.');
  Log.SendDebug('������ "' + chkbxStoreLastPassword.Caption + '"' +
    IfThen(chkbxStoreLastPassword.Checked, '�', '��') + '������.');
  Log.SendDebug('������ "' + chkbxAutoLogon.Caption + '"' + IfThen(chkbxAutoLogon.Checked, '�',
    '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxStoreLastPasswordClick(Sender: TObject);
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' + chkbxStoreLastPassword.Caption + '"',
    '{C9AD62BE-833A-4C57-904C-0ED5DFB0634F}');

  chkbxAutoLogon.Enabled := chkbxStoreLastLogin.Enabled and chkbxStoreLastLogin.Checked and
    chkbxStoreLastPassword.Enabled and chkbxStoreLastPassword.Checked;
  chkbxAutoLogon.Checked := chkbxAutoLogon.Checked and chkbxAutoLogon.Enabled;
  Log.SendDebug('������ "' + chkbxStoreLastPassword.Caption + '"' +
    IfThen(chkbxStoreLastPassword.Checked, '�', '��') + '������.');
  Log.SendDebug('������ "' + chkbxAutoLogon.Caption + '"' + IfThen(chkbxAutoLogon.Checked, '�',
    '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxUsersFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  // UsersForm: TUsersForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' + chkbxUsersFormPositionByCenter.Caption
    + '"', '{F7984D0B-E438-4B31-8BC8-9C24190065C4}');

  b := chkbxUsersFormPositionByCenter.Enabled and chkbxUsersFormPositionByCenter.Checked;
  edbxUsersFormPositionX.Enabled := not b;
  edbxUsersFormPositionY.Enabled := not b;
  if b then
  begin
    edbxUsersFormPositionX.Text := EmptyStr;
    edbxUsersFormPositionY.Text := EmptyStr;
  end
  else
  begin
    // UsersForm:=TUsersForm.Create(Self);
    // try
    // edbxUsersFormPositionX.Text:=IntToStr((Screen.WorkAreaWidth-UsersForm.Width)div 2);
    // edbxUsersFormPositionY.Text:=IntToStr((Screen.WorkAreaHeight-UsersForm.Height)div 2);
    // finally
    // UsersForm.Free;
    // end;
  end;
  Log.SendDebug('������ "' + chkbxUsersFormPositionByCenter.Caption + '"' + IfThen(b, '�', '��') +
    '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxCreateMessageFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  CreateMessageForm: TCreateMessageForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxCreateMessageFormPositionByCenter.Caption + '"', '{E4C4C710-0120-4391-8B8B-3A3DF1D7F95B}');

  b := chkbxCreateMessageFormPositionByCenter.Enabled and
    chkbxCreateMessageFormPositionByCenter.Checked;
  edbxCreateMessageFormPositionX.Enabled := not b;
  edbxCreateMessageFormPositionY.Enabled := not b;
  if b then
  begin
    edbxCreateMessageFormPositionX.Text := EmptyStr;
    edbxCreateMessageFormPositionY.Text := EmptyStr;
  end
  else
  begin
    if Assigned(Configuration) then
    begin
      CreateMessageForm := TCreateMessageForm.Create(Self, Configuration.CreateMessageFormPosition);
      try
        edbxCreateMessageFormPositionX.Text :=
          IntToStr((Screen.WorkAreaWidth - CreateMessageForm.Width) div 2);
        edbxCreateMessageFormPositionY.Text :=
          IntToStr((Screen.WorkAreaHeight - CreateMessageForm.Height) div 2);
      finally
        CreateMessageForm.Free;
      end;
    end;
  end;
  Log.SendDebug('������ "' + chkbxCreateMessageFormPositionByCenter.Caption + '"' + IfThen(b, '�',
    '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxViewMessageFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  ViewMessageForm: TViewMessageForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxViewMessageFormPositionByCenter.Caption + '"', '{34DEEAA1-C7A1-4C63-8384-D28CBB8CEBF3}');

  b := chkbxViewMessageFormPositionByCenter.Enabled and
    chkbxViewMessageFormPositionByCenter.Checked;
  edbxViewMessageFormPositionX.Enabled := not b;
  edbxViewMessageFormPositionY.Enabled := not b;
  if b then
  begin
    edbxViewMessageFormPositionX.Text := EmptyStr;
    edbxViewMessageFormPositionY.Text := EmptyStr;
  end
  else
  begin
    if Assigned(Configuration) then
    begin
      ViewMessageForm := TViewMessageForm.Create(Self, Configuration.ViewMessageFormPosition);
      try
        edbxViewMessageFormPositionX.Text :=
          IntToStr((Screen.WorkAreaWidth - ViewMessageForm.Width) div 2);
        edbxViewMessageFormPositionY.Text :=
          IntToStr((Screen.WorkAreaHeight - ViewMessageForm.Height) div 2);
      finally
        ViewMessageForm.Free;
      end;
    end;
  end;
  Log.SendDebug('������ "' + chkbxViewMessageFormPositionByCenter.Caption + '"' + IfThen(b, '�',
    '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxViewMessagesFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  ViewMessagesForm: TViewMessagesForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxViewMessagesFormPositionByCenter.Caption + '"', '{0CEE11D1-8BEF-4853-AA5A-707DD2E2FD34}');

  b := chkbxViewMessagesFormPositionByCenter.Enabled and
    chkbxViewMessagesFormPositionByCenter.Checked;
  edbxViewMessagesFormPositionX.Enabled := not b;
  edbxViewMessagesFormPositionY.Enabled := not b;
  if b then
  begin
    edbxViewMessagesFormPositionX.Text := EmptyStr;
    edbxViewMessagesFormPositionY.Text := EmptyStr;
  end
  else
  begin
    if Assigned(Configuration) then
    begin
      ViewMessagesForm := TViewMessagesForm.Create(Self, Configuration.ViewMessagesFormPosition);
      try
        edbxViewMessagesFormPositionX.Text :=
          IntToStr((Screen.WorkAreaWidth - ViewMessagesForm.Width) div 2);
        edbxViewMessagesFormPositionY.Text :=
          IntToStr((Screen.WorkAreaHeight - ViewMessagesForm.Height) div 2);
      finally
        ViewMessagesForm.Free;
      end;
    end;
  end;
  Log.SendDebug('������ "' + chkbxViewMessagesFormPositionByCenter.Caption + '"' + IfThen(b, '�',
    '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxEnableAutoGetMessagesClick(Sender: TObject);
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' + chkbxEnableAutoGetMessages.Caption +
    '"', '{5C3B5E46-E8F7-4BD1-8092-16B88A617F55}');

  edbxAutoGetMessagesCycleDurationValue.Enabled := chkbxEnableAutoGetMessages.Checked;
  if Assigned(Configuration) then
  begin
    edbxAutoGetMessagesCycleDurationValue.Text :=
      IfThen(edbxAutoGetMessagesCycleDurationValue.Enabled,
      IntToStr(Configuration.AutoGetMessagesCycleDurationValue), EmptyStr);
  end;
  Log.SendDebug('������ "' + chkbxEnableAutoGetMessages.Caption + '"' +
    IfThen(chkbxEnableAutoGetMessages.Checked, '�', '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxAddEditPhoneFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  AddEditPhoneForm: TAddEditPhoneForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxAddEditPhoneFormPositionByCenter.Caption + '"', '{9D51B088-F24F-4EBC-9CDB-BBD50B769BBB}');

  b := chkbxAddEditPhoneFormPositionByCenter.Enabled and
    chkbxAddEditPhoneFormPositionByCenter.Checked;
  edbxAddEditPhoneFormPositionX.Enabled := not b;
  edbxAddEditPhoneFormPositionY.Enabled := not b;
  if b then
  begin
    edbxAddEditPhoneFormPositionX.Text := EmptyStr;
    edbxAddEditPhoneFormPositionY.Text := EmptyStr;
  end
  else
  begin
    if Assigned(Configuration) then
    begin
      AddEditPhoneForm := TAddEditPhoneForm.Create(Self, Configuration.AddEditPhoneFormPosition);
      try
        edbxAddEditPhoneFormPositionX.Text :=
          IntToStr((Screen.WorkAreaWidth - AddEditPhoneForm.Width) div 2);
        edbxAddEditPhoneFormPositionY.Text :=
          IntToStr((Screen.WorkAreaHeight - AddEditPhoneForm.Height) div 2);
      finally
        AddEditPhoneForm.Free;
      end;
    end;
  end;
  Log.SendDebug('������ "' + chkbxAddEditPhoneFormPositionByCenter.Caption + '"' + IfThen(b, '�',
    '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxAddMassMsrFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  AddMassMsrForm: TAddMassMsrForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxAddMassMsrFormPositionByCenter.Caption + '"', '{8E88B020-CF7F-4F40-9C02-B64741BD3133}');

  b := chkbxAddMassMsrFormPositionByCenter.Enabled and chkbxAddMassMsrFormPositionByCenter.Checked;
  edbxAddMassMsrFormPositionX.Enabled := not b;
  edbxAddMassMsrFormPositionY.Enabled := not b;
  if b then
  begin
    edbxAddMassMsrFormPositionX.Text := EmptyStr;
    edbxAddMassMsrFormPositionY.Text := EmptyStr;
  end
  else
  begin
    if Assigned(Configuration) then
    begin
      AddMassMsrForm := TAddMassMsrForm.Create(Self, Configuration.AddMassMsrFormPosition);
      try
        edbxAddMassMsrFormPositionX.Text :=
          IntToStr((Screen.WorkAreaWidth - AddMassMsrForm.Width) div 2);
        edbxAddMassMsrFormPositionY.Text :=
          IntToStr((Screen.WorkAreaHeight - AddMassMsrForm.Height) div 2);
      finally
        AddMassMsrForm.Free;
      end;
    end;
  end;
  Log.SendDebug('������ "' + chkbxAddMassMsrFormPositionByCenter.Caption + '"' + IfThen(b, '�',
    '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxPermissionsFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  PermissionsForm: TPermissionsForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxPermissionsFormPositionByCenter.Caption + '"', '{D6CC8CB4-3B01-449C-84C4-8F3B55C9AE92}');

  b := chkbxPermissionsFormPositionByCenter.Enabled and
    chkbxPermissionsFormPositionByCenter.Checked;
  edbxPermissionsFormPositionX.Enabled := not b;
  edbxPermissionsFormPositionY.Enabled := not b;
  if b then
  begin
    edbxPermissionsFormPositionX.Text := EmptyStr;
    edbxPermissionsFormPositionY.Text := EmptyStr;
  end
  else
  begin
    if Assigned(Configuration) then
    begin
      PermissionsForm := TPermissionsForm.Create(Self, Configuration.PermissionsFormPosition);
      try
        edbxPermissionsFormPositionX.Text :=
          IntToStr((Screen.WorkAreaWidth - PermissionsForm.Width) div 2);
        edbxPermissionsFormPositionY.Text :=
          IntToStr((Screen.WorkAreaHeight - PermissionsForm.Height) div 2);
      finally
        PermissionsForm.Free;
      end;
    end;
  end;
  Log.SendDebug('������ "' + chkbxPermissionsFormPositionByCenter.Caption + '"' + IfThen(b, '�',
    '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxClearingFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  // ClearingForm: TClearingForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxClearingFormPositionByCenter.Caption + '"', '{6EF352F0-799F-4ECB-8FA5-D283943475C6}');

  b := chkbxClearingFormPositionByCenter.Enabled and chkbxClearingFormPositionByCenter.Checked;
  edbxClearingFormPositionX.Enabled := not b;
  edbxClearingFormPositionY.Enabled := not b;
  if b then
  begin
    edbxClearingFormPositionX.Text := EmptyStr;
    edbxClearingFormPositionY.Text := EmptyStr;
  end
  else
  begin
    // ClearingForm:=TClearingForm.Create(Self);
    // try
    // edbxClearingFormPositionX.Text:=IntToStr((Screen.WorkAreaWidth-ClearingForm.Width)div 2);
    // edbxClearingFormPositionY.Text:=IntToStr((Screen.WorkAreaHeight-ClearingForm.Height)div 2);
    // finally
    // ClearingForm.Free;
    // end;
  end;
  Log.SendDebug('������ "' + chkbxClearingFormPositionByCenter.Caption + '"' + IfThen(b, '�', '��')
    + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.actChooseCustomHelpFileUpdate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  b := chkbxCustomHelpFile.Enabled and chkbxCustomHelpFile.Checked;
  if actChooseCustomHelpFile.Enabled <> b then
  begin
    ProcedureHeader(Format(RsEventHandlerOfActionUpdate, [actChooseCustomHelpFile.Caption]),
      '{CEE5E3DF-C04C-4125-AFDE-D6FE85947558}');
    if not b then
    begin
      edbxCustomHelpFileValue.Text := EmptyStr;
    end;
    edbxCustomHelpFileValue.Enabled := b;
    actChooseCustomHelpFile.Enabled := b;
    Log.SendDebug(GetActionUpdateLogMessage(actChooseCustomHelpFile));
    ProcedureFooter;
  end;
end;

procedure TConfigurationForm.chkbxMainFormPositionByCenterClick(Sender: TObject);
var
  bMainFormPositionByCenter: Boolean;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' + chkbxMainFormPositionByCenter.Caption
    + '"', '{0C75BE73-4F1F-4C3E-8938-728609D1E4F1}');

  bMainFormPositionByCenter := chkbxMainFormPositionByCenter.Checked and
    chkbxMainFormPositionByCenter.Enabled;
  edbxMainFormPositionX.Enabled := not bMainFormPositionByCenter;
  edbxMainFormPositionY.Enabled := not bMainFormPositionByCenter;
  if Assigned(Configuration) then
  begin
    edbxMainFormPositionX.Text := IfThen(edbxMainFormPositionX.Enabled,
      IntToStr(Configuration.MainFormLeft), EmptyStr);
    edbxMainFormPositionY.Text := IfThen(edbxMainFormPositionY.Enabled,
      IntToStr(Configuration.MainFormTop), EmptyStr);
  end;

  Log.SendDebug('������ "' + chkbxMainFormPositionByCenter.Caption + '"' +
    IfThen(bMainFormPositionByCenter, '�', '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxMaintenanceFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  // MaintenanceForm: TMaintenanceForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxMaintenanceFormPositionByCenter.Caption + '"', '{4F229484-7E9F-42E6-A641-FA1713C99D80}');

  b := chkbxMaintenanceFormPositionByCenter.Enabled and
    chkbxMaintenanceFormPositionByCenter.Checked;
  edbxMaintenanceFormPositionX.Enabled := not b;
  edbxMaintenanceFormPositionY.Enabled := not b;
  if b then
  begin
    edbxMaintenanceFormPositionX.Text := EmptyStr;
    edbxMaintenanceFormPositionY.Text := EmptyStr;
  end
  else
  begin
    // MaintenanceForm:=TMaintenanceForm.Create(Self);
    // try
    // edbxMaintenanceFormPositionX.Text:=IntToStr((Screen.WorkAreaWidth-MaintenanceForm.Width)div 2);
    // edbxMaintenanceFormPositionY.Text:=IntToStr((Screen.WorkAreaHeight-MaintenanceForm.Height)div 2);
    // finally
    // MaintenanceForm.Free;
    // end;
  end;
  Log.SendDebug('������ "' + chkbxMaintenanceFormPositionByCenter.Caption + '"' + IfThen(b, '�',
    '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxConfigurationFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxConfigurationFormPositionByCenter.Caption + '"', '{BED5B417-AF81-44BC-A216-3C6D966C8A3E}');

  b := chkbxConfigurationFormPositionByCenter.Enabled and
    chkbxConfigurationFormPositionByCenter.Checked;
  edbxConfigurationFormPositionX.Enabled := not b;
  edbxConfigurationFormPositionY.Enabled := not b;
  if b then
  begin
    edbxConfigurationFormPositionX.Text := EmptyStr;
    edbxConfigurationFormPositionY.Text := EmptyStr;
  end
  else
  begin
    edbxConfigurationFormPositionX.Text := IntToStr((Screen.WorkAreaWidth - Width) div 2);
    edbxConfigurationFormPositionY.Text := IntToStr((Screen.WorkAreaHeight - Height) div 2);
  end;
  Log.SendDebug('������ "' + chkbxConfigurationFormPositionByCenter.Caption + '"' + IfThen(b, '�',
    '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxOrganizationPanelHalfHeightClick(Sender: TObject);
var
  bOrganizationPanelHalfHeight: Boolean;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxOrganizationPanelHalfHeight.Caption + '"', '{DB478623-5C76-41CE-AD55-E8E101D15815}');

  bOrganizationPanelHalfHeight := chkbxOrganizationPanelHalfHeight.Checked and
    chkbxOrganizationPanelHalfHeight.Enabled;
  edbxOrganizationPanelHeightValue.Enabled := not bOrganizationPanelHalfHeight;
  if Assigned(Configuration) then
  begin
    edbxOrganizationPanelHeightValue.Text := IfThen(bOrganizationPanelHalfHeight, EmptyStr,
      IntToStr(Configuration.OrganizationPanelHeightValue));
  end;

  Log.SendDebug('������ "' + chkbxOrganizationPanelHalfHeight.Caption + '"' +
    IfThen(bOrganizationPanelHalfHeight, '�', '��') + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.chkbxPhoneListFormPositionByCenterClick(Sender: TObject);
var
  b: Boolean;
  PhoneListForm: TPhoneListForm;
begin
  ProcedureHeader('��������� ������� �� ������ �� ������ "' +
    chkbxPhoneListFormPositionByCenter.Caption + '"', '{B3057ACB-A356-4036-997D-FC6034C1974F}');

  b := chkbxPhoneListFormPositionByCenter.Enabled and chkbxPhoneListFormPositionByCenter.Checked;
  edbxPhoneListFormPositionX.Enabled := not b;
  edbxPhoneListFormPositionY.Enabled := not b;
  if b then
  begin
    edbxPhoneListFormPositionX.Text := EmptyStr;
    edbxPhoneListFormPositionY.Text := EmptyStr;
  end
  else
  begin
    PhoneListForm := TPhoneListForm.Create(Self, Configuration.LoginFormPosition);
    try
      edbxPhoneListFormPositionX.Text :=
        IntToStr((Screen.WorkAreaWidth - PhoneListForm.Width) div 2);
      edbxPhoneListFormPositionY.Text :=
        IntToStr((Screen.WorkAreaHeight - PhoneListForm.Height) div 2);
    finally
      PhoneListForm.Free;
    end;
  end;
  Log.SendDebug('������ "' + chkbxPhoneListFormPositionByCenter.Caption + '"' + IfThen(b, '�', '��')
    + '������.');

  ProcedureFooter;
end;

procedure TConfigurationForm.edbxAutoGetMessagesCycleDurationValueChange(Sender: TObject);
begin
  if StrToIntDef(edbxAutoGetMessagesCycleDurationValue.Text, 1) < 1 then
  begin
    edbxAutoGetMessagesCycleDurationValue.Text := '1';
  end;
  if StrToIntDef(edbxAutoGetMessagesCycleDurationValue.Text, 1) > 60 then
  begin
    edbxAutoGetMessagesCycleDurationValue.Text := '60';
  end;
end;

procedure TConfigurationForm.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if PageControl1.ActivePage.Caption = ' ��������� ���������� ����' then
  begin
    SendMessage(ScrollBox1.Handle, WM_VSCROLL, SB_LINEDOWN, 0);
  end;
end;

procedure TConfigurationForm.FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint;
  var Handled: Boolean);
begin
  if PageControl1.ActivePage.Caption = ' ��������� ���������� ����' then
  begin
    SendMessage(ScrollBox1.Handle, WM_VSCROLL, SB_LINEUP, 0);
  end;
end;

end.
