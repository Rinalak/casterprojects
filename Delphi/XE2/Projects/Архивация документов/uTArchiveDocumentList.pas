unit uTArchiveDocumentList;

interface

uses
  uTLoadableList,
  uIArchiveDocumentList,
  uIArchiveDocumentItem;

type
  TArchiveDocumentList = class abstract(TLoadableList, IArchiveDocumentList)
  private
    function GetItem(const AIndex: Integer): IArchiveDocumentItem;
  public
    function GetItemById(const AId: Integer): IArchiveDocumentItem;
    property Item[const AIndex: Integer]: IArchiveDocumentItem read GetItem; default;
  end;

implementation

function TArchiveDocumentList.GetItemById(const AId: Integer): IArchiveDocumentItem;
var
  i: Integer;
begin
  Result := nil;
  if AId > -1 then
  begin
    for i := 0 to Count - 1 do
    begin
      if Assigned(Items[i]) then
      begin
        if (Items[i] as IArchiveDocumentItem).Id = AId then
        begin
          Result := Items[i] as IArchiveDocumentItem;
          Break;
        end;
      end;
    end;
  end;
end;

function TArchiveDocumentList.GetItem(const AIndex: Integer): IArchiveDocumentItem;
begin
  Result := nil;
  if AIndex > -1 then
  begin
    if Assigned(Items) then
    begin
      if Count > AIndex then
      begin
        Result := Items[AIndex] as IArchiveDocumentItem;
      end;
    end;
  end;
end;

end.
