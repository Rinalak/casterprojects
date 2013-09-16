unit uCommonRoutines;

interface

uses
  Controls,
  StdCtrls,
  SysUtils,
  DB,
  ADODB,
  SQLExpr,
  uIArchiveDocumentList,
  uTArchiveDocumentList;

/// <summary>
/// ���������, ���������� �������������� ������� �� ������ ������ �������,
/// ����������� ���������� ������� �������
/// </summary>
/// <param name="AQuery">
/// ������ ������� ���� <b>TADOQuery</b> ��� <b>TSQLQuery</b>
/// </param>
/// <param name="ASQL">
/// ����� �������
/// </param>
/// <param name="AOpen">
/// ���������� �� ��������� ��������� �������������� �������
/// </param>
procedure SetSQLForQuery(const AQuery: TDataSet; const ASQL: string; const AOpen: Boolean = False);

/// <summary>
/// ������� ��������� ������ �� ������� �� ����� ��������
/// </summary>
/// <param name="AName">
/// ��� ��������
/// </param>
/// <param name="AParent">
/// ������� �������, ����� �������� ��������� �������� ����� �����������
/// ����� ��������
/// </param>
/// <returns>
/// ������ �� ������� �������
/// </returns>
function GetControlByName(const AName: string; const AParent: TCustomControl): TControl;

/// <summary>
/// ��������� ��������� ������ ���������� ���� "�����" � ��������� ������
/// </summary>
/// <param name="AParentControl">
/// �������, ���������� �����
/// </param>
/// <param name="ALabelName">
/// ��� ���������� ���� "�����"
/// </param>
/// <param name="ACaption">
/// �����, ������� ����� ��������� �����
/// </param>
procedure SetLabelCaption(const AParentControl: TCustomControl; const ALabelName, ACaption: string);

/// <summary>
/// ���������������� ������� ������� <b>TADOQuery</b> ��� <b>TSQLQuery</b> �
/// ��������� ������ �� ���� � ���� ������ �� �������
/// </summary>
/// <param name="AConnection">
/// ������ ����������� � ��
/// </param>
/// <returns>
/// ������ �� ������ �������
/// </returns>
function GetQuery(const AConnection: TCustomConnection): TDataSet;

/// <summary>
/// ��������� �������, ��������������� ��� �������� ��������� ������ ��
/// ������ ���������� ������� ���� � ����������� �� ���� ��������� ������
/// </summary>
/// <param name="ATypeId">
/// ������������� ���� ��������� ������
/// </param>
function GetDocumentListByTypeId(const AConnection: TCustomConnection; const ATypeId: Integer)
  : IArchiveDocumentList;

implementation

uses
  uTArchiveDocumentListClass,
  uTShipmentBSOList,
  uTShipmentBSOWithActList,
  uTDamagedBSOList;

function GetControlByName(const AName: string; const AParent: TCustomControl): TControl;
var
  k: Integer;
begin
  Result := nil;
  for k := 0 to AParent.ControlCount - 1 do
  begin
    if AParent.Controls[k].Name = AName then
    begin
      Result := AParent.Controls[k];
      Break;
    end;
  end;
end;

procedure SetLabelCaption(const AParentControl: TCustomControl; const ALabelName, ACaption: string);
var
  cc: TControl;
begin
  if Assigned(AParentControl) then
  begin
    cc := GetControlByName(Trim(ALabelName), AParentControl);
    if Assigned(cc) then
    begin
      if cc is TLabel then
      begin
        (cc as TLabel).Caption := ACaption;
      end;
    end;
  end;
end;

procedure SetSQLForQuery(const AQuery: TDataSet; const ASQL: string; const AOpen: Boolean);
begin
  if AQuery is TADOQuery then
  begin
    (AQuery as TADOQuery).SQL.Clear;
    (AQuery as TADOQuery).SQL.Append(ASQL);
    if not AOpen then
    begin
      (AQuery as TADOQuery).ExecSQL;
    end;
  end
  else
  begin
    (AQuery as TSQLQuery).SQL.Clear;
    (AQuery as TSQLQuery).SQL.Append(ASQL);
    if not AOpen then
    begin
      (AQuery as TSQLQuery).ExecSQL;
    end;
  end;
  if AOpen then
  begin
    AQuery.Open;
  end;
end;

function GetADOQuery(const AConnection: TCustomConnection): TADOQuery;
begin
  Result := TADOQuery.Create(nil);
  Result.Connection := AConnection as TADOConnection;
  Result.CommandTimeout := 60000;
  Result.LockType := ltReadOnly;
  Result.CursorType := ctOpenForwardOnly;
end;

function GetSQLQuery(const AConnection: TCustomConnection): TSQLQuery;
begin
  Result := TSQLQuery.Create(nil);
  Result.SQLConnection := AConnection as TSQLConnection;
end;

function GetQuery(const AConnection: TCustomConnection): TDataSet;
begin
  Result := nil;
  if Assigned(AConnection) then
  begin
    if AConnection is TADOConnection then
    begin
      Result := GetADOQuery(AConnection);
    end
    else
    begin
      Result := GetSQLQuery(AConnection);
    end;
  end;
end;

function GetDocumentListByTypeId(const AConnection: TCustomConnection; const ATypeId: Integer)
  : IArchiveDocumentList;
var
  item_class: TArchiveDocumentListClass;
begin
  Result := nil;
  case ATypeId of
    1:
      begin
        item_class := TShipmentBSOList;
      end;
    2:
      begin
        item_class := TShipmentBSOWithActList;
      end;
    5:
      begin
        item_class := TDamagedBSOList;
      end;
  else
    begin
      item_class := nil;
    end;
  end;
  if Assigned(item_class) then
  begin
    Result := item_class.Create(AConnection);
  end;
end;

end.
