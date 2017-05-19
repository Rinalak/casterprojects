unit RoutinesPackage.Logic.TXLSXDataSetWriter;

interface

uses
  RoutinesPackage.Logic.TDataSetWriter, Data.DB, Data.Win.ADODB;

type
  TXLSXDataSetWriter = class(TDataSetWriter)
  strict private
    function GetODBCFieldDef(const aFieldDef: TFieldDef; const aTitle: string = ''): string;

  strict protected
    function UseTemplate(): Boolean; override;

  public
    function Saving(): Boolean; override;
    class function GetExtension(): string; override;
  end;

implementation

uses
  System.Classes, CodeSiteLogging, System.SysUtils, System.StrUtils, System.Math, System.IOUtils, RoutinesPackage.Logic;

class function TXLSXDataSetWriter.GetExtension(): string;
begin
  Result := 'xlsx';
end;

function TXLSXDataSetWriter.UseTemplate(): Boolean;
begin
  Result := True;
end;

function TXLSXDataSetWriter.GetODBCFieldDef(const aFieldDef: TFieldDef; const aTitle: string = ''): string;
var
  s: string;
begin
  Result := EmptyStr;
  s := aTitle.Trim();
  s := IfThen(s.IsEmpty(), aFieldDef.Name, s);

  case aFieldDef.DataType of
    { ftUnknown, ftBytes, ftVarBytes, ftBCD, ftBlob, ftMemo, ftGraphic, ftFmtMemo, ftParadoxOle, ftDBaseOle, ftTypedBinary, ftCursor, ftADT, ftArray, ftReference,
      ftDataSet, ftOraBlob, ftOraClob, ftVariant, ftInterface, ftIDispatch, ftGuid, ftTimeStamp, ftFMTBcd, ftWideMemo, ftOraTimeStamp, ftOraInterval,
      ftLongWord, ftShortint, ftByte, ftExtended, ftConnection, ftParams, ftStream, ftTimeStampOffset, ftObject, ftSingle:
      Result := EmptyStr; }
    ftString, ftFixedChar, ftWideString, ftFixedWideChar:
      Result := Format('[%s] CHARACTER (%d)', [s, IfThen(aFieldDef.Size > 255, 255, aFieldDef.Size)]);

    ftSmallint, ftInteger, ftWord, ftAutoInc, ftLargeint:
      Result := Format('[%s] INTEGER', [s]);

    ftBoolean:
      Result := Format('[%s] BIT', [s]);

    ftFloat:
      Result := Format('[%s] FLOAT', [s]);

    ftCurrency:
      Result := Format('[%s] MONEY', [s]);

    ftDate, ftTime, ftDateTime:
      Result := Format('[%s] DATETIME', [s]);
  end;
end;

function TXLSXDataSetWriter.Saving(): Boolean;
var
  tmpADOConnection: TADOConnection;
  tmpStringList: TStringList;
  tmpSheetName: string;
  tmpFieldDefs: string;
  i: Integer;
  tmpADOQuery: TADOQuery;
  tmpADOTable: TADOTable;
begin
  Result := False;

  {$IFDEF DEBUG}
  CodeSite.EnterMethod(Self, 'Saving()');
  try
    {$ENDIF}
    try
      {$REGION '������ ������ ����������� � �����'}
      {$IFDEF DEBUG}
      CodeSite.SendDateTime(csmCheckPoint, '�������� ������� ����������� � �����...', Now());
      {$ENDIF}
      tmpADOConnection := TADOConnection.Create(nil);
      if not Assigned(tmpADOConnection) then
      begin
        CodeSite.SendDateTime(csmError, '�� ������� ������� ������ ����������� � �����', Now());
        Exit;
      end;
      {$IFDEF DEBUG}
      CodeSite.SendDateTime(csmGreen, '�������� ������� ����������� � ����� ��������� �������', Now());
      {$ENDIF}
      {$ENDREGION}
      try
        {$REGION '��������� ������ ����������� � �����, ��� � ��������� ������'}
        tmpADOConnection.ConnectionString := Format('Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%s;Extended Properties="Excel 12.0 Xml;HDR=YES";',
          [FDestinationFileName]);
        {$IFDEF DEBUG}
        CodeSite.SendDateTime(csmInfo, Format('������ �����������: [%s]', [tmpADOConnection.ConnectionString]), Now());
        {$ENDIF}
        {$ENDREGION}
        {$REGION '��������� ����������� � �����'}
        {$IFDEF DEBUG}
        CodeSite.SendDateTime(csmCheckPoint, '�������� ����������� � �����...', Now());
        {$ENDIF}
        tmpADOConnection.Open();
        {$IFDEF DEBUG}
        CodeSite.SendDateTime(csmGreen, '�������� ����������� � ����� ��������� �������', Now());
        {$ENDIF}
        {$ENDREGION}
        try
          {$REGION '�������� ������������ ������� ����� �����'}
          tmpStringList := TStringList.Create();
          try
            tmpADOConnection.GetTableNames(tmpStringList);
            if tmpStringList.Count < 1 then
            begin
              CodeSite.SendDateTime(csmError, '�� ������� �������� ������������ ����� �����', Now());
              Exit;
            end;

            tmpSheetName := tmpStringList[0];
            {$IFDEF DEBUG}
            CodeSite.SendDateTime(csmInfo, Format('������������ ����� �����: [%s]', [tmpSheetName]), Now());
            {$ENDIF}
          finally
            tmpStringList.Free();
          end;
          {$ENDREGION}
          {$REGION '�������� ������ �� ��������� � �����'}
          tmpADOQuery := GetADOQuery(tmpADOConnection);
          try
            {$IFDEF DEBUG}
            CodeSite.SendDateTime(csmCheckPoint, '�������� ����� �����...', Now());
            {$ENDIF}
            SetADOQuery(tmpADOQuery, Format('DROP TABLE [%s]', [tmpSheetName]), [], False);
            {$IFDEF DEBUG}
            CodeSite.SendDateTime(csmGreen, '�������� ����� ����� ��������� �������', Now());
            {$ENDIF}

            {$IFDEF DEBUG}
            CodeSite.SendDateTime(csmCheckPoint, '�������� ����� �����...', Now());
            {$ENDIF}
            for i := 0 to Pred(FSource.FieldDefList.Count) do
            begin
              tmpFieldDefs := tmpFieldDefs + IfThen(tmpFieldDefs.Length > 0, ', ') + GetODBCFieldDef(FSource.FieldDefList.FieldDefs[i],
                IfThen(i < Length(FTitle), FTitle[i], EmptyStr));
            end;

            tmpFieldDefs := Format('CREATE TABLE [%s] (%s)', [tmpSheetName, tmpFieldDefs]);

            SetADOQuery(tmpADOQuery, tmpFieldDefs, [], False);
            {$IFDEF DEBUG}
            CodeSite.SendDateTime(csmGreen, '�������� ����� ����� ��������� �������', Now());
            {$ENDIF}

            {$IFDEF DEBUG}
            CodeSite.SendDateTime(csmCheckPoint, '���������� ������ �� ���� �����...', Now());
            {$ENDIF}
            tmpADOTable := TADOTable.Create(nil);
            try
              tmpADOTable.Connection := tmpADOConnection;
              tmpADOTable.TableName := tmpSheetName;
              tmpADOTable.TableDirect := True;
              tmpADOTable.Active := True;

              while not FSource.Eof do
              begin
                tmpADOTable.Append();
                for i := 0 to Pred(FSource.FieldCount) do
                begin
                  tmpADOTable.Fields.Fields[i].Value := FSource.Fields.Fields[i].Value;
                end;
                tmpADOTable.Post();
                FSource.Next();
              end;

              {$IFDEF DEBUG}
              CodeSite.SendDateTime(csmGreen, '���������� ������ �� ���� ����� ��������� �������', Now());
              {$ENDIF}
              Result := True;
            finally
              tmpADOTable.Free();
            end;
          finally
            tmpADOQuery.Free();
          end;
          {$ENDREGION}
        finally
          {$REGION '��������� ����������� � �����'}
          {$IFDEF DEBUG}
          CodeSite.SendDateTime(csmCheckPoint, '�������� ����������� � �����...', Now());
          {$ENDIF}
          tmpADOConnection.Close();
          {$IFDEF DEBUG}
          CodeSite.SendDateTime(csmGreen, '�������� ����������� � ����� ��������� �������', Now());
          {$ENDIF}
          {$ENDREGION}
        end;
      finally
        {$REGION '������ ������ ����������� � �����'}
        {$IFDEF DEBUG}
        CodeSite.SendDateTime(csmCheckPoint, '����������� ������� ����������� � �����...', Now());
        {$ENDIF}
        tmpADOConnection.Free();
        {$IFDEF DEBUG}
        CodeSite.SendDateTime(csmGreen, '����������� ������� ����������� � ����� ��������� �������', Now());
        {$ENDIF}
        {$ENDREGION}
      end;
    except
      on e: Exception do
      begin
        CodeSite.SendException(e);
      end;
    end;
    {$IFDEF DEBUG}
  finally
    CodeSite.ExitMethod(Self, 'Saving()', Result);
  end;
  {$ENDIF}
end;

end.
