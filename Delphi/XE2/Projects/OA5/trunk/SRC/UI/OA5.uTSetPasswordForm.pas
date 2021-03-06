﻿unit OA5.uTSetPasswordForm;

interface

uses
  Vcl.ExtCtrls,
  OA5.uTOA5PositionedLogForm,
  System.Classes,
  Vcl.ActnList,
  Vcl.ImgList,
  Vcl.Controls,
  Vcl.StdCtrls,
  Vcl.Mask, System.Actions;

type
  TSetPasswordForm = class(TOA5PositionedLogForm)
    ImageList: TImageList;
    ActionList: TActionList;
    actApply: TAction;
    actClose: TAction;
    actHelp: TAction;
    lblPassword: TLabel;
    mePassword: TMaskEdit;
    lblConfirmation: TLabel;
    meConfirmation: TMaskEdit;
    chkbxShowPassword: TCheckBox;
    pnlButtons: TPanel;
    btnApply: TButton;
    btnHelp: TButton;
    btnClose: TButton;
    procedure actHelpExecute(Sender: TObject);
    procedure actApplyExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkbxShowPasswordClick(Sender: TObject);
    procedure actHelpUpdate(Sender: TObject);
    procedure actApplyUpdate(Sender: TObject);
  strict private
    procedure _SwitchPasswordVisibility;
  end;

implementation

{$R *.dfm}

uses
  Vcl.Forms,
  CastersPackage.uResourceStrings,
  System.SysUtils;

const
  ICON_SETPASSWORD = 1;

resourcestring
  RsSetPasswordForm = 'изменения пароля учётной записи';

procedure TSetPasswordForm._SwitchPasswordVisibility;
const
  MASK_ON_CHAR = '*';
  MASK_OFF_CHAR = #0;
begin
  ProcedureHeader('Процедура реакции на переключение состояния флажка "' + chkbxShowPassword.Caption
    + '"', '{0219B9CF-B108-49C8-A390-22AF8B17C186}');

  if chkbxShowPassword.Checked then
  begin
    mePassword.PasswordChar := MASK_OFF_CHAR;
    meConfirmation.PasswordChar := MASK_OFF_CHAR;
  end
  else
  begin
    mePassword.PasswordChar := MASK_ON_CHAR;
    meConfirmation.PasswordChar := MASK_ON_CHAR;
  end;

  ProcedureFooter;
end;

procedure TSetPasswordForm.FormCreate(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfFormCreation, [RsSetPasswordForm]),
    '{43E2DB1C-46EC-46FB-BE5F-69082FF4BDB0}');
  ImageList.GetIcon(ICON_SETPASSWORD, Icon);
  ProcedureFooter;
end;

procedure TSetPasswordForm.FormShow(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfFormShowing, [RsSetPasswordForm]),
    '{109E2C60-29E7-4230-956B-848F6063FD69}');
  Log.SendInfo(Format(RsWindowShowed, [RsSetPasswordForm]));
  ProcedureFooter;
end;

procedure TSetPasswordForm.actApplyExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actApply.Caption]),
    '{D6F02F10-4334-4227-9C49-E2DB8B98CA70}');
  Log.SendInfo('Попытка изменения пароля учётной записи была подтверждена пользователем.');
  CloseModalWindowWithOkResult(RsSetPasswordForm, '{C91510FD-FEE6-435A-914F-18C3AA52AECC}');
  ProcedureFooter;
end;

procedure TSetPasswordForm.actApplyUpdate(Sender: TObject);
var
  b: boolean;
begin
  inherited;
  b := mePassword.Text = meConfirmation.Text;
  if actApply.Enabled <> b then
  begin
    ProcedureHeader(Format(RsEventHandlerOfActionUpdate, [actApply.Caption]),
      '{C430F728-3AC7-4605-831B-F2AE12429BDA}');
    actApply.Enabled := b;
    if btnApply.Default <> b then
    begin
      btnApply.Default := b;
    end;
    if btnClose.Default <> (not b) then
    begin
      btnClose.Default := not b;
    end;
    Log.SendDebug(GetActionUpdateLogMessage(actApply));
    ProcedureFooter;
  end;
end;

procedure TSetPasswordForm.actCloseExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actClose.Caption]),
    '{4569EB61-7A53-4A07-8D49-7D91C54D6FEF}');
  Log.SendInfo('Попытка изменения пароля учётной записи была отменена пользователем.');
  CloseModalWindowWithCancelResult(RsSetPasswordForm, '{927BC3C9-B8AF-4E3E-93CA-576E9FE65D08}');
  ProcedureFooter;
end;

procedure TSetPasswordForm.actHelpExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actHelp.Caption]),
    '{772E549E-6DD2-4921-B2F9-5C65F20976FE}');
  Help(HelpContext, '{9E50E972-CBB5-47DB-8241-9317E3EA51F6}');
  ProcedureFooter;
end;

procedure TSetPasswordForm.actHelpUpdate(Sender: TObject);
var
  b: boolean;
begin
  b := Application.HelpFile <> EmptyStr;
  if actHelp.Enabled <> b then
  begin
    ProcedureHeader(Format(RsEventHandlerOfActionUpdate, [actHelp.Caption]),
      '{B92D0FEB-6E73-42D9-A684-68918F5F11A6}');
    actHelp.Enabled := b;
    Log.SendDebug(GetActionUpdateLogMessage(actHelp));
    ProcedureFooter;
  end;
end;

procedure TSetPasswordForm.chkbxShowPasswordClick(Sender: TObject);
begin
  ProcedureHeader('Процедура отклика на щелчок на флажке "' + chkbxShowPassword.Caption + '"',
    '{1CA50F76-73D7-4646-8365-189442365348}');
  _SwitchPasswordVisibility;
  ProcedureFooter;
end;

end.
