unit uMultiBufferClass;

interface

uses
  System.Generics.Collections,
  uMeasureDataClass;

resourcestring
  SMultiBufferIndexError='����� �������� ������ �������� ������!';

type

  TMultiBufferClass=class
  strict private
    FItems: TList<TMeasureDataClass>;
  private
    function GetCount: Integer;
    function GetItem(Index: Integer): TMeasureDataClass;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Append(Item: TMeasureDataClass);
    procedure Insert(const Index: integer; Item: TMeasureDataClass);
    procedure Delete(const Index: integer);
    procedure Clear;
    property Count: Integer read GetCount;
    property Items[index: Integer]: TMeasureDataClass read GetItem; default;
  end;

implementation

uses
  System.SysUtils;

procedure TMultiBufferClass.Append(Item: TMeasureDataClass);
begin
  Insert(GetCount, Item);
end;

procedure TMultiBufferClass.Clear;
var
  i: Integer;
begin
  for i:=Count-1 downto 0 do
    Items[i].Free;
end;

constructor TMultiBufferClass.Create;
begin

end;

procedure TMultiBufferClass.Delete(const Index: integer);
begin
  if (index<0)or(FItems=nil)or(index>=GetCount) then
    raise Exception.Create(SMultiBufferIndexError);
  FItems.Delete(index);
end;

destructor TMultiBufferClass.Destroy;
var
  i: integer;
begin
  for i:=Count-1 downto 0 do
    Items[i].Free;
  FreeAndNil(FItems);
  inherited;
end;

function TMultiBufferClass.GetCount: Integer;
begin
  if Assigned(FItems) then
    Result:=FItems.Count
  else
    Result:=0;
end;

function TMultiBufferClass.GetItem(Index: Integer): TMeasureDataClass;
begin
  if not Assigned(FItems) then
    raise Exception.Create(SMultiBufferIndexError);
  Result:=TMeasureDataClass(FItems[index]);
end;

procedure TMultiBufferClass.Insert(const Index: integer; Item: TMeasureDataClass);
begin
  if not Assigned(FItems) then
    FItems:=TList<TMeasureDataClass>.Create;
  FItems.Insert(index, Item);
end;

{ TODO : �������������� ������ ������ }

end.
