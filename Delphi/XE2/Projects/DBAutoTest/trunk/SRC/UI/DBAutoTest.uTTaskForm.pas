unit DBAutoTest.uTTaskForm;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ImgList,
  System.Actions,
  Vcl.ActnList,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  DBAutoTest.uConsts,
  DBAutoTest.uITask,
  DBAutoTest.uITasks,
  Vcl.StdActns,
  CastersPackage.Actions.Classes;

type
  TTaskForm = class(TForm)
    ActionList: TActionList;
    actApply: TAction;
    actCancel: TAction;
    actClear: TAction;
    actHelp: TAction_Help;
    btnApply: TButton;
    btnCancel: TButton;
    btnClear: TButton;
    btnHelp: TButton;
    cmbGroup: TComboBox;
    cmbName: TComboBox;
    lblGroup: TLabel;
    lblName: TLabel;
    lblSQL: TLabel;
    meSQL: TMemo;
    pnlButtons: TPanel;
    pnlTop: TPanel;
    procedure actApplyExecute(Sender: TObject);
    procedure actApplyUpdate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actClearExecute(Sender: TObject);
    procedure actClearUpdate(Sender: TObject);

  strict private
    FTaskEnabled: Boolean;
    function GetTaskEnabled: Boolean;
    procedure SetTaskEnabled(const AValue: Boolean);
    property TaskEnabled: Boolean read GetTaskEnabled write SetTaskEnabled default TASK_DEFAULT_ENABLED;

  strict private
    FTaskIndex: Integer;
    function GetTaskIndex: Integer;
  public
    property TaskIndex: Integer read GetTaskIndex nodefault;

  strict private
    FTasks: ITasks;
    function GetTasks: ITasks;
    property Tasks: ITasks read GetTasks nodefault;

  strict private
    function GetTaskGroup: string;
    procedure SetTaskGroup(const AValue: string);
    property TaskGroup: string read GetTaskGroup write SetTaskGroup nodefault;

  strict private
    function GetTaskName: string;
    procedure SetTaskName(const AValue: string);
    property TaskName: string read GetTaskName write SetTaskName nodefault;

  strict private
    function GetTaskSQL: TStringList;
    procedure SetTaskSQL(const AValue: TStringList);
    property TaskSQL: TStringList read GetTaskSQL write SetTaskSQL nodefault;

  public
    constructor Create(AOwner: TComponent; const ATasks: ITasks; const AIndex: Integer = -1); reintroduce; virtual;
  end;

implementation

{$R *.dfm}

uses
  DBAutoTest.uTTask,
  DBAutoTest.uETasks,
  DBAutoTest.uTTaskStatus;

resourcestring
  RsAddTaskCaption = '���������� �����';
  RsEditTaskCaption = '�������������� �����';
  RsATasksIsNil = 'ATasks is nil.';
  RsWrongAIndexValue = 'Wrong AIndex value (%d).';
  RsITaskIsNil = 'ITask is nil.';
  RsCantAddTaskToTasks = '�� ������� �������� ���� � ������ ������.';

procedure TTaskForm.actApplyExecute(Sender: TObject);
var
  task: ITask;
  i: Integer;
begin
  if TaskIndex = -1 then
  begin
    task := GetITask;
    i := Tasks.Add(task);
    if i < 0 then
    begin
      raise ETasks.Create(RsCantAddTaskToTasks);
    end
    else
    begin
      FTaskIndex := i;
    end;
  end
  else
  begin
    task := Tasks[TaskIndex];
  end;
  task.Group := TaskGroup;
  task.Name := TaskName;
  task.SQL := TaskSQL;
  task.Enabled := TaskEnabled;
  task.Status := tsUnknown;
  ModalResult := mrOk;
end;

procedure TTaskForm.actApplyUpdate(Sender: TObject);
var
  t: ITask;
begin
  if TaskIndex = -1 then
  begin
    actApply.Enabled := (TaskGroup <> EmptyStr) and (TaskName <> EmptyStr) and (TaskSQL.Text <> EmptyStr);
  end
  else
  begin
    t := Tasks[TaskIndex];
    if Assigned(t) then
    begin
      actApply.Enabled := ((TaskGroup <> t.Group) or (TaskName <> t.Name) or (TaskSQL.Text <> t.SQL.Text)) and ((TaskGroup <> EmptyStr) and (TaskName <> EmptyStr) and (TaskSQL.Text <> EmptyStr));
    end;
  end;
  btnApply.Default := actApply.Enabled;
end;

procedure TTaskForm.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TTaskForm.actClearExecute(Sender: TObject);
begin
  TaskGroup := EmptyStr;
  TaskName := EmptyStr;
  TaskSQL := nil;
end;

procedure TTaskForm.actClearUpdate(Sender: TObject);
begin
  actClear.Enabled := (TaskGroup <> EmptyStr) or (TaskName <> EmptyStr) or (TaskSQL.Text <> EmptyStr);
end;

constructor TTaskForm.Create(AOwner: TComponent; const ATasks: ITasks; const AIndex: Integer);
  procedure FillGroups;
  var
    i: Integer;
    s: string;
  begin
    cmbGroup.Items.BeginUpdate;
    try
      cmbGroup.Items.Clear;
      for i := 0 to Tasks.Count - 1 do
      begin
        s := Tasks[i].Group;
        if cmbGroup.Items.IndexOf(s) < 0 then
        begin
          cmbGroup.Items.Append(s);
        end;
      end;
    finally
      cmbGroup.Items.EndUpdate;
    end;
  end;

  procedure FillNames;
  var
    i: Integer;
    s: string;
  begin
    cmbName.Items.BeginUpdate;
    try
      cmbName.Items.Clear;
      for i := 0 to Tasks.Count - 1 do
      begin
        s := Tasks.Items[i].Name;
        if cmbName.Items.IndexOf(s) < 0 then
        begin
          cmbName.Items.Append(s);
        end;
      end;
    finally
      cmbName.Items.EndUpdate;
    end;
  end;

var
  task: ITask;
begin
  Assert(Assigned(ATasks), RsATasksIsNil);
  Assert((AIndex >= -1) and (AIndex < ATasks.Count), Format(RsWrongAIndexValue, [AIndex]));
  if AIndex > -1 then
  begin
    Assert(Assigned(ATasks[AIndex]), RsITaskIsNil);
  end;
  inherited Create(AOwner);
  FTasks := ATasks;
  FTaskIndex := AIndex;
  FillGroups;
  FillNames;
  if TaskIndex = -1 then
  begin
    Caption := RsAddTaskCaption;
    TaskGroup := TASK_DEFAULT_GROUP;
    TaskName := TASK_DEFAULT_NAME;
    TaskSQL.Text := TASK_DEFAULT_SQL;
    TaskEnabled := TASK_DEFAULT_ENABLED;
  end
  else
  begin
    Caption := RsEditTaskCaption;
    task := Tasks[TaskIndex];
    TaskGroup := task.Group;
    TaskName := task.Name;
    TaskSQL := task.SQL;
    TaskEnabled := task.Enabled;
  end;
end;

function TTaskForm.GetTaskEnabled: Boolean;
begin
  Result := FTaskEnabled;
end;

function TTaskForm.GetTaskGroup: string;
var
  i: Integer;
begin
  Result := Trim(cmbGroup.Text);
  i := cmbGroup.ItemIndex;
  if i > -1 then
  begin
    Result := Trim(cmbGroup.Items[i]);
  end;
end;

function TTaskForm.GetTasks: ITasks;
begin
  Result := FTasks;
end;

function TTaskForm.GetTaskIndex: Integer;
begin
  Result := FTaskIndex;
end;

function TTaskForm.GetTaskName: string;
var
  i: Integer;
begin
  Result := Trim(cmbName.Text);
  i := cmbName.ItemIndex;
  if i > -1 then
  begin
    Result := Trim(cmbName.Items[i]);
  end;
end;

function TTaskForm.GetTaskSQL: TStringList;
begin
  Result := TStringList.Create;
  Result.AddStrings(meSQL.Lines);
end;

procedure TTaskForm.SetTaskEnabled(const AValue: Boolean);
begin
  if FTaskEnabled <> AValue then
  begin
    FTaskEnabled := AValue;
  end;
end;

procedure TTaskForm.SetTaskGroup(const AValue: string);
var
  s: string;
  i: Integer;
begin
  s := Trim(AValue);
  i := cmbGroup.Items.IndexOf(s);
  if i = -1 then
  begin
    i := cmbGroup.Items.Add(s);
  end;
  cmbGroup.ItemIndex := i;
end;

procedure TTaskForm.SetTaskName(const AValue: string);
var
  s: string;
  i: Integer;
begin
  s := Trim(AValue);
  i := cmbName.Items.IndexOf(s);
  if i = -1 then
  begin
    i := cmbName.Items.Add(s);
  end;
  cmbName.ItemIndex := i;
end;

procedure TTaskForm.SetTaskSQL(const AValue: TStringList);
begin
  if meSQL.Lines <> AValue then
  begin
    meSQL.Lines.BeginUpdate;
    try
      meSQL.Lines.Clear;
      if Assigned(AValue) then
      begin
        meSQL.Lines.AddStrings(AValue);
      end;
    finally
      meSQL.Lines.EndUpdate;
    end;
  end;
end;

end.
