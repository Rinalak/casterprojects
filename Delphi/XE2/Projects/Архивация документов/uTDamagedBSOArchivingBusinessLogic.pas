unit uTDamagedBSOArchivingBusinessLogic;

interface

uses
  uTDocumentArchivingBusinessLogic,
  uTArchiveDocumentItemClass;

type
  TDamagedBSOArchivingBusinessLogic = class sealed(TDocumentArchivingBusinessLogic)
  protected
    procedure AddDocument(const AString: string); override; final;
    function GetArchiveBoxTypeId: Integer; override; final;
    function GetArchiveDocumentItemClass: TArchiveDocumentItemClass; override; final;
  end;

implementation

uses
  SysUtils,
  uTDocumentArchivingBarcodeType,
  uIArchiveBoxItem,
  uTArchiveBoxItem,
  uICauseOfArchiveDocumentDamageList,
  uTCauseOfArchiveDocumentDamageList,
  uTDamagedBSOItem;

function TDamagedBSOArchivingBusinessLogic.GetArchiveBoxTypeId: Integer;
begin
  Result := 5;
end;

function TDamagedBSOArchivingBusinessLogic.GetArchiveDocumentItemClass: TArchiveDocumentItemClass;
begin
  Result := TDamagedBSOItem;
end;

procedure TDamagedBSOArchivingBusinessLogic.AddDocument(const AString: string);
var
  codl: ICauseOfArchiveDocumentDamageList;
  i: Integer;
  box: IArchiveBoxItem;
begin
  case Step of
    0:
      begin
        if AnalizeBarcode(AString) = dabtBSO then
        begin
          CurrentDocument := CreateDocumentItemByBarcode(AString);
          if Assigned(CurrentDocument) then
          begin
            i := GetArchiveBoxIdByDocument(CurrentDocument);
            if i = -1 then
            begin
              Step := 1;
              DisplayInfoMessage('������� �����-��� ����� ���������');
            end
            else
            begin
              box := TArchiveBoxItem.Create(Connection, i);
              if Assigned(box) then
              begin
                DisplayErrorMessage(Format('�������� ��� ��� ������������� ����� (�����-��� ������ - %s)' + sLineBreak +
                  RsEnterBarcodeOfDocumentOrCommand, [box.Barcode]));
              end;
            end;
          end
          else
          begin
            Step := 0;
            DisplayInfoMessage('�������� � ��������� �����-����� �� ������ � ���� ������' + sLineBreak +
              RsEnterBarcodeOfDocumentOrCommand);
          end;
        end;
      end;
    1:
      begin
        if Assigned(CurrentDocument) then
        begin
          if AnalizeBarcode(AString) = dabtCauseOfDamage then
          begin
            codl := TCauseOfArchiveDocumentDamageList.Create(Connection);
            if Assigned(codl) then
            begin
              codl.Load;
              for i := 0 to codl.Count - 1 do
              begin
                if codl.Item[i].Barcode = AString then
                begin
                  (CurrentDocument as TDamagedBSOItem).CauseOfDamageId := codl.Item[i].Id;
                  (CurrentDocument as TDamagedBSOItem).CauseOfDamageName := codl.Item[i].name;
                  if not Assigned(CurrentBox) then
                  begin
                    if GetOpenedBoxQuantity(ArchiveBoxTypeId, CurrentDocument.CompanyId) = 0 then
                    begin
                      CurrentBox := CreateArchiveBoxByDocument(CurrentDocument);
                      if Assigned(CurrentBox) then
                      begin
                        DisplaySuccessMessage('�������� �������� � ����� �������� �����' + sLineBreak +
                          RsEnterBarcodeOfDocumentOrCommand);
                      end;
                    end
                    else
                    begin
                      CurrentBox := AddDocumentToOldestOpenedArchiveBox(CurrentDocument);
                      if Assigned(CurrentBox) then
                      begin
                        DisplaySuccessMessage('�������� �������� � ������������ �������� �����' + sLineBreak +
                          RsEnterBarcodeOfDocumentOrCommand);
                      end;
                    end;
                  end
                  else
                  begin
                    if AddDocumentToCurrentBox(CurrentDocument) then
                    begin
                      DisplaySuccessMessage('�������� �������� � ������� �������� �����' + sLineBreak +
                        RsEnterBarcodeOfDocumentOrCommand);
                    end;
                  end;
                  Break;
                end;
              end;
            end;
          end
          else
          begin
            DisplayErrorMessage('�������� �� ��� ��������, �.�. �� ��� ����� �����-��� ����� ���������' + sLineBreak +
              RsEnterBarcodeOfDocumentOrCommand);
          end;
        end
        else
        begin
          DisplayInfoMessage(RsEnterBarcodeOfDocumentOrCommand);
        end;
        Step := 0;
      end;
  end;
end;

end.
