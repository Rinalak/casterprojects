﻿unit CastersPackage.uTypes;

interface

uses
  Vcl.Grids;

type
  TReportFolders=(rfTempFolder, rfApplicationFolder, rfCustomFolder);

  TStringGridX=class(TStringGrid)
  public
    procedure MoveRow(FromIndex, ToIndex: Longint);
  end;

implementation

procedure TStringGridX.MoveRow(FromIndex, ToIndex: Integer);
begin
  inherited;
end;

end.