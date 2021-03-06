unit OA5.uTPermissionsForm;

interface

uses
  Vcl.CheckLst,
  OA5.uTOA5PositionedLogForm,
  System.Classes,
  Vcl.ActnList,
  Vcl.ImgList,
  Vcl.Controls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls, System.Actions;

type
  TPermissionsForm = class(TOA5PositionedLogForm)
    ImageList: TImageList;
    ActionList: TActionList;
    actSelectAll: TAction;
    actSelectNone: TAction;
    actApply: TAction;
    actClose: TAction;
    actHelp: TAction;
    chklbxPermissions: TCheckListBox;
    pnlButtons: TPanel;
    btnSelectAll: TButton;
    btnSelectNone: TButton;
    btnApply: TButton;
    btnClose: TButton;
    btnHelp: TButton;
    procedure actApplyExecute(Sender: TObject);
    procedure actHelpExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actSelectNoneExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure chklbxPermissionsClickCheck(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actHelpUpdate(Sender: TObject);
    procedure actSelectAllUpdate(Sender: TObject);
    procedure actSelectNoneUpdate(Sender: TObject);
  strict private
    procedure _SelectAll;
    procedure _SelectNone;
  end;

implementation

{$R *.dfm}

uses
  CastersPackage.uResourceStrings,
  Vcl.Forms,
  System.SysUtils;

const
  ICON_PERMISSIONS = 3;

resourcestring
  RsPermissionsForm = '���������� ������� ������� ������������';
  RsSelectAllPermissionProcedure = '��������� ��������� ���� ��������� �����' + '� ���� �������';
  RsSelectNonePermissionProcedure = '��������� ������ ��������� �� ���� ����' +
    '����� ������ ���� �������';

procedure TPermissionsForm.actApplyExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actApply.Caption]),
    '{5C75FA77-50A0-471B-B6DA-472A571E78A5}');
  Log.SendInfo('������� ��������� ���� ������� ������������ ���� ������������ �������������.');
  CloseModalWindowWithOkResult(RsPermissionsForm, '{2EF8ACE7-43DE-4B94-A258-A103D3C6FA7F}');
  ProcedureFooter;
end;

procedure TPermissionsForm.actCloseExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actClose.Caption]),
    '{0CD08097-3CBD-497C-A6E9-C334C2613D87}');
  Log.SendInfo('������� ��������� ���� ������� ������������ ���� �������� �������������.');
  CloseModalWindowWithCancelResult(RsPermissionsForm, '{E4DF2DA7-A9E4-43B4-9563-208F2AC0E0FD}');
  ProcedureFooter;
end;

procedure TPermissionsForm.actHelpExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actHelp.Caption]),
    '{803148B5-8C37-4D3C-964F-ACC9A7FFD4BD}');
  Help(HelpContext, '{45BBFABB-48D2-4D33-B84C-7D977203E7C0}');
  ProcedureFooter;
end;

procedure TPermissionsForm.actHelpUpdate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  b := Application.HelpFile <> EmptyStr;
  if actHelp.Enabled <> b then
  begin
    ProcedureHeader(Format(RsEventHandlerOfActionUpdate, [actHelp.Caption]),
      '{876209CD-9450-437C-BECD-39568ECD2FC0}');
    actHelp.Enabled := b;
    Log.SendDebug(GetActionUpdateLogMessage(actHelp));
    ProcedureFooter;
  end;
end;

procedure TPermissionsForm.actSelectAllExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actSelectAll.Caption]),
    '{14A91B39-D3D7-49C4-9F19-D253DE7AB611}');
  _SelectAll;
  ProcedureFooter;
end;

procedure TPermissionsForm.actSelectAllUpdate(Sender: TObject);
var
  b: Boolean;
  i: Integer;
begin
  inherited;
  b := False;
  for i := 0 to chklbxPermissions.Items.Count - 1 do
  begin
    if not chklbxPermissions.Checked[i] then
    begin
      b := True;
      Break;
    end;
  end;
  b := b and (chklbxPermissions.Items.Count > 0);
  if actSelectAll.Enabled <> b then
  begin
    ProcedureHeader(Format(RsEventHandlerOfActionUpdate, [actSelectAll.Caption]),
      '{713F5389-E51C-45D3-9EA7-857AA2ADDAE5}');
    actSelectAll.Enabled := b;
    Log.SendDebug(GetActionUpdateLogMessage(actSelectAll));
    ProcedureFooter;
  end;
end;

procedure TPermissionsForm.actSelectNoneUpdate(Sender: TObject);
var
  b: Boolean;
  i: Integer;
begin
  inherited;
  b := False;
  for i := 0 to chklbxPermissions.Items.Count - 1 do
  begin
    if chklbxPermissions.Checked[i] then
    begin
      b := True;
      Break;
    end;
  end;
  b := b and (chklbxPermissions.Items.Count > 0);
  if actSelectNone.Enabled <> b then
  begin
    ProcedureHeader(Format(RsEventHandlerOfActionUpdate, [actSelectNone.Caption]),
      '{6A789C2D-BE1B-4AE4-A348-DC0BAEC83549}');
    actSelectNone.Enabled := b;
    Log.SendDebug(GetActionUpdateLogMessage(actSelectNone));
    ProcedureFooter;
  end;
end;

procedure TPermissionsForm.actSelectNoneExecute(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfActionExecute, [actSelectNone.Caption]),
    '{2E28DFC0-7D3C-4E6E-B105-CFEC8B796E11}');
  _SelectNone;
  ProcedureFooter;
end;

procedure TPermissionsForm.chklbxPermissionsClickCheck(Sender: TObject);
begin
  (* ProcedureHeader('��������� ������� �� �������/������ ������� �������� � ������ ���� �������',
    '{FC7CC002-2ADC-4615-95D0-2F86AEC2E17B}');
    _UpdateActions;
    ProcedureFooter; *)
end;

procedure TPermissionsForm._SelectAll;
var
  i: Integer;
begin
  ProcedureHeader(RsSelectAllPermissionProcedure, '{40DE70C8-A47D-441A-93A4-A142CA28214E}');

  for i := 0 to chklbxPermissions.Count - 1 do
  begin
    chklbxPermissions.Checked[i] := True;
  end;

  ProcedureFooter;
end;

procedure TPermissionsForm._SelectNone;
var
  i: Integer;
begin
  ProcedureHeader(RsSelectNonePermissionProcedure, '{40DE70C8-A47D-441A-93A4-A142CA28214E}');

  for i := 0 to chklbxPermissions.Count - 1 do
  begin
    chklbxPermissions.Checked[i] := False;
  end;

  ProcedureFooter;
end;

procedure TPermissionsForm.FormCreate(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfFormCreation, [RsPermissionsForm]),
    '{E6E569D5-7A13-4FB2-8364-E0B6605D87D8}');
  ImageList.GetIcon(ICON_PERMISSIONS, Icon);
  ProcedureFooter;
end;

procedure TPermissionsForm.FormShow(Sender: TObject);
begin
  ProcedureHeader(Format(RsEventHandlerOfFormShowing, [RsPermissionsForm]),
    '{37196BB1-FC40-4D57-839E-F76454FD74F3}');
  Log.SendInfo(Format(RsWindowShowed, [RsPermissionsForm]));
  ProcedureFooter;
end;

end.
