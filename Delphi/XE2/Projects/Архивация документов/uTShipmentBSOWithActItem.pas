unit uTShipmentBSOWithActItem;

interface

uses
  DB,
  Controls,
  uTCustomBSOItem,
  uIShipmentBSOWithActItem;

type
  TShipmentBSOWithActItem = class sealed(TCustomBSOItem, IShipmentBSOWithActItem)
  protected
    function GetSaveSQL: string; override; final;
    procedure FillShowableFieldsList; override; final;
  public
    constructor Create; override; final;
    procedure Load(const ADataSet: TDataSet); override; final;
  end;

implementation

uses
  SysUtils;

constructor TShipmentBSOWithActItem.Create;
begin
  inherited;
end;

procedure TShipmentBSOWithActItem.Load(const ADataSet: TDataSet);
begin
  inherited;
end;

function TShipmentBSOWithActItem.GetSaveSQL: string;
begin
  Result := Format('BSOArchiving_upd_ShipmentBSOWithAct %d, %d, %d, "%s", %d, %d, "%s", %d',
    [Id, ArchiveBoxId, ArchivedByUser, FormatDateTime('yyyy-mm-dd hh:nn:ss', ArchivingDate), Integer(Issued),
    IssuedToUser, FormatDateTime('yyyy-mm-dd hh:nn:ss', IssuanceDate), BSOId]);
end;

procedure TShipmentBSOWithActItem.FillShowableFieldsList;
begin
  AddShowableField('�����-���:', 'Barcode', Barcode);
  AddShowableField('��������:', 'CompanyName', CompanyName);
  AddShowableField('�����:', 'Series', Series);
  AddShowableField('�����:', 'Number', Number);
end;

end.
