unit Budgeting.Logic.Classes.Models.TProductModel;

interface

uses
  Budgeting.Logic.Interfaces.Models.IProductModel;

type
  TProductModel = class(TInterfacedObject, IProductModel)
  strict private
    FId: Integer;
    FGoodsTypeId: Integer;
    FCode: string;
    FDescription: string;
    FActivity: Boolean;
    function GetId(): Integer;
    function GetGoodsTypeId(): Integer;
    function GetCode(): string;
    function GetDescription(): string;
    function GetActivity(): Boolean;
  public
    constructor Create(const AId, AGoodsTypeId: Integer; const ACode, ADescription: string; const AActivity: Boolean); reintroduce; virtual;
  end;

implementation

uses
  System.SysUtils;

constructor TProductModel.Create(const AId, AGoodsTypeId: Integer; const ACode, ADescription: string; const AActivity: Boolean);
begin
  inherited Create();
  FId := AId;
  FGoodsTypeId := AGoodsTypeId;
  FCode := ACode;
  FDescription := ADescription;
  FActivity := AActivity;
end;

function TProductModel.GetActivity(): Boolean;
begin
  Result := FActivity;
end;

function TProductModel.GetDescription(): string;
begin
  Result := FDescription;
end;

function TProductModel.GetCode(): string;
begin
  Result := FCode;
end;

function TProductModel.GetId(): Integer;
begin
  Result := FId;
end;

function TProductModel.GetGoodsTypeId(): Integer;
begin
  Result := FGoodsTypeId;
end;

end.

