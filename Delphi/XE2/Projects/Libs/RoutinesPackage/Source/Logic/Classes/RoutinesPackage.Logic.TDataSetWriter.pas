unit RoutinesPackage.Logic.TDataSetWriter;

interface

uses
  System.Classes, Data.DB, RoutinesPackage.Logic.IDataSetWriter;

type
  TDataSetWriter = class abstract(TInterfacedPersistent, IDataSetWriter)
  strict private
    function GetAppPath(const aIncludePathDelimiter: Boolean = True): string;
    procedure FilePathLocalization(var aFileName: string; out aShare: string; const aSubDirectory: string = 'Files');

  strict protected
    FSource: TDataSet;
    FDestinationFileName: string;
    FTemplateFileName: string;
    FTitle: TArray<string>;
    function UseTemplate(): Boolean; virtual;
    function CheckParameters(): Boolean; virtual;
    function GetIExtension(): string; overload;
    function IDataSetWriter.GetExtension = GetIExtension;
    function Saving(): Boolean; virtual; abstract;

  public
    constructor Create(const aSource: TDataSet; const aDestinationFileName, aTitle: string); reintroduce; virtual;
    function Save(): Boolean;
    class function GetExtension(): string; overload; virtual; abstract;
    function GetDestinationFileName(): string;
  end;

implementation

uses
  CodeSiteLogging, System.IOUtils, System.SysUtils, System.StrUtils;

function TDataSetWriter.CheckParameters(): Boolean;
var
  i: Integer;
  tmpStillExists: Boolean;
  tmpNewDestinationFileName: string;
  s: string;
begin
  Result := False;

  {$IFDEF DEBUG}
  CodeSite.EnterMethod(Self, 'CheckParameters()');
  try
    {$ENDIF}
    if not Assigned(FSource) then
    begin
      CodeSite.SendDateTime(csmError, '�������������� �������� ����� ������', Now());
      Exit;
    end;

    if not FSource.Active then
    begin
      CodeSite.SendDateTime(csmError, '�������� ����� ������ �� ������', Now());
      Exit;
    end;

    if FSource.IsEmpty() then
    begin
      CodeSite.SendDateTime(csmError, '�������� ����� ������ ����', Now());
      Exit;
    end;

    if UseTemplate() then
    begin
      if not TFile.Exists(FTemplateFileName) then
      begin
        CodeSite.SendDateTime(csmError, Format('���� ������� ''%s'' �� ������', [FTemplateFileName]), Now());
        Exit;
      end;
    end;

    if ExtractFileName(FDestinationFileName).Trim().IsEmpty() then
    begin
      CodeSite.SendDateTime(csmError, '�� ������� ��� �����-��������', Now());
      Exit;
    end;

    if not ExtractFilePath(FDestinationFileName).IsEmpty() then
    begin
      s := ExtractFileDir(FDestinationFileName);
      if not DirectoryExists(s) then
      begin
        CodeSite.SendDateTime(csmError, Format('������� ��� �����-�������� ''%s'' �� ����������', [s]), Now());
        Exit;
      end;
    end;

    // ������������� ����� �����-�������� � ������
    tmpNewDestinationFileName := FDestinationFileName;

    for i := 1 to 100 do
    begin
      tmpStillExists := (FileExists(tmpNewDestinationFileName)) and (not System.SysUtils.DeleteFile(tmpNewDestinationFileName));
      if not tmpStillExists then
      begin
        Break;
      end;

      // ��������� � ����� ����� ���������� ������ ������� � ������, ���������� ����� ������� � Windows
      tmpNewDestinationFileName := Format('%s (%d)%s', [TPath.GetFileNameWithoutExtension(FDestinationFileName), i, TPath.GetExtension(FDestinationFileName)]);

      CodeSite.SendDateTime(csmWarning, Format('������������ ����-������� ''%s'' �� ������� �������, ' +
        '���������� ������� ���������� � ���� � ������ ''%s''', [FDestinationFileName, tmpNewDestinationFileName]), Now());
    end;
    FDestinationFileName := tmpNewDestinationFileName;

    Result := True;

    {$IFDEF DEBUG}
  finally
    CodeSite.ExitMethod(Self, 'CheckParameters()', Result);
  end;
  {$ENDIF}
end;

constructor TDataSetWriter.Create(const aSource: TDataSet; const aDestinationFileName, aTitle: string);
begin
  inherited Create();
  FSource := aSource;
  FDestinationFileName := aDestinationFileName.Trim();
  FTitle := aTitle.Trim().Split([';']);
  FTemplateFileName := Format('%sTemplate.%s', [GetAppPath(), GetExtension()]);
end;

function TDataSetWriter.GetAppPath(const aIncludePathDelimiter: Boolean): string;
begin
  Result := IncludeTrailingPathDelimiter(ExtractFilePath(IfThen(ModuleIsLib, GetModuleName(HInstance), ParamStr(0))));
end;

function TDataSetWriter.GetDestinationFileName: string;
begin
  Result := FDestinationFileName;
end;

procedure TDataSetWriter.FilePathLocalization(var aFileName: string; out aShare: string; const aSubDirectory: string);
begin
  aShare := ExtractFileDrive(aFileName); // ��� ����������� ���� ����� �����
  if aShare.IsEmpty() then // ���� � ����� ����� �� ����� �� ����
  begin
    case aFileName.IndexOf('\') of
      0:
        begin // - ���� ���������� � \
          aFileName := ExcludeTrailingPathDelimiter(Format('%s%s', [GetAppPath(), aSubDirectory])) + aFileName; // ���������� ���� � ������ � ����� �� ��������� � ������
        end;
    else
      begin // ���������� ���� ������ ������������
        aFileName := IncludeTrailingPathDelimiter(Format('%s%s', [GetAppPath(), aSubDirectory])) + ExtractFileName(aFileName);
      end;
    end;
  end
  else
  begin
    if aShare.Substring(0, 2) = '\\' then // ���� ����� ����������� �� ����
    begin // ���������� ���� � ����� & ����������� �������� ��� ���������� ����������
      aShare := aFileName;
      aFileName := ChangeFilePath(TPath.GetGUIDFileName(), IncludeTrailingPathDelimiter(TPath.GetTempPath()));
    end
    else
    begin
      aShare := EmptyStr; // share='<Drive>:' => ��������� ���� �������� ������, ������ ��� �� �����
    end;
  end;
end;

function TDataSetWriter.GetIExtension(): string;
begin
  Result := Self.GetExtension();
end;

function TDataSetWriter.Save(): Boolean;
var
  tmpShare: string;
begin
  Result := CheckParameters();
  if not Result then
  begin
    Exit;
  end;

  {$IFDEF DEBUG}
  CodeSite.EnterMethod(Self, 'Save()');
  try
    {$ENDIF}
    try
      {$IFDEF DEBUG}
      CodeSite.SendDateTime(csmInfo, Format('���������� ����� �������� ������: [%d]', [FSource.RecordCount]), Now());
      {$ENDIF}
      {$REGION '�������������� �������� ����� ������ ��� ����������'}
      FSource.First();
      {$ENDREGION}
      FilePathLocalization(FDestinationFileName, tmpShare);

      {$REGION '���� ���� ������ ����������� �� ������ �������, �������� ���'}
      if UseTemplate() then
      begin
        {$IFDEF DEBUG}
        CodeSite.SendDateTime(csmCheckPoint, Format('�������� ����� ''%s'' �� ������ ������� ''%s''...', [FDestinationFileName, FTemplateFileName]), Now());
        {$ENDIF}
        TFile.Copy(FTemplateFileName, FDestinationFileName, True);
        {$IFDEF DEBUG}
        CodeSite.SendDateTime(csmGreen, Format('�������� ����� ''%s'' �� ������ ������� ��������� �������', [FDestinationFileName]), Now());
        {$ENDIF}
      end;
      {$ENDREGION}
      if not Saving() then
      begin
        Exit(False);
      end;

      if not tmpShare.IsEmpty() then // ���� ���� ����� ����������� � ����
      begin
        TFile.Copy(FDestinationFileName, tmpShare, True); // �������� ��������� ���� � ����
        TFile.Delete(FDestinationFileName); // ������� ��������� ����
        FDestinationFileName := tmpShare;
      end;

      Result := True;
      CodeSite.SendDateTime(csmGreen, Format('���������� ������ � ���� ''%s'' ��������� �������', [FDestinationFileName]), Now());
    except
      on e: Exception do
      begin
        CodeSite.SendException(e);
      end;
    end;
    {$IFDEF DEBUG}
  finally
    CodeSite.ExitMethod(Self, 'Save()', Result);
  end;
  {$ENDIF}
end;

function TDataSetWriter.UseTemplate(): Boolean;
begin
  Result := False;
end;

end.
