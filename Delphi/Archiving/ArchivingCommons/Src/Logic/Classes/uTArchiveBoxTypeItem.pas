unit uTArchiveBoxTypeItem;

interface

uses
  DB,
  uIArchiveBoxTypeItem,
  uTLoadableItem;

type
  TArchiveBoxTypeItem = class(TLoadableItem, IArchiveBoxTypeItem)
  protected
    function GetSaveSQL: string; override; {$IFNDEF VER150} final; {$ENDIF}
    function GetDeleteSQL: string; override; {$IFNDEF VER150} final; {$ENDIF}
  public
    function GetLoadSQL: string; override; {$IFNDEF VER150} final; {$ENDIF}
  private
    FName: string;
    function GetName: string;
  public
    property name: string read GetName;

  private
    FCode: string;
    function GetCode: string;
  public
    property Code: string read GetCode;

  private
    FCapacity: Integer;
    function GetCapacity: Integer;
  public
    property Capacity: Integer read GetCapacity;

  public
    constructor Create; override; {$IFNDEF VER150} final; {$ENDIF}
    procedure Load(const ADataSet: TDataSet); override; {$IFNDEF VER150} final; {$ENDIF}
  end;

implementation

uses
  SysUtils;

function TArchiveBoxTypeItem.GetName: string;
begin
  Result := FName;
end;

function TArchiveBoxTypeItem.GetCode: string;
begin
  Result := FCode;
end;

constructor TArchiveBoxTypeItem.Create;
begin
  inherited;
  Saveable := True;
  FName := EmptyStr;
  FCode := EmptyStr;
  FCapacity := -1;
end;

function TArchiveBoxTypeItem.GetCapacity: Integer;
begin
  Result := FCapacity;
end;

function TArchiveBoxTypeItem.GetLoadSQL: string;
begin
  Result := Format('Archiving_sel_ArchiveBoxType %d', [Id]);
end;

procedure TArchiveBoxTypeItem.Load(const ADataSet: TDataSet);
begin
  inherited;
  if Assigned(ADataSet) then
  begin
    FName := ADataSet.FieldByName('Name').AsString;
    FCode := ADataSet.FieldByName('Code').AsString;
    FCapacity := ADataSet.FieldByName('Capacity').AsInteger;
  end;
end;

function TArchiveBoxTypeItem.GetSaveSQL: string;
begin
  Result := Format('Archiving_upd_ArchiveBoxType %d, ''%s'', ''%s'', %d', [Id, name, Code, Capacity]);
end;

function TArchiveBoxTypeItem.GetDeleteSQL: string;
begin
  Result := EmptyStr;
end;

end.