unit Beeper.uTSignal;

interface

uses
  System.IniFiles,
  Beeper.uTPeriodType,
  Beeper.uISignal,
  CastersPackage.uIIniFileDataStorage,
  CastersPackage.uTIniFileDataStorage;

type
  TSignal = class(TIniFileDataStorage, IIniFileDataStorage, ISignal)
  strict private
    FTitle: string;
    FPeriod: integer;
    FPeriodType: TPeriodType;
    FHint: string;
    FWaveFile: string;
  public
    function PeriodToSeconds(const ASeconds: word; const AMinutes: word = 0; const AHours: word = 0; const ADays: word = 0; const AWeeks: word = 0;
      const AMonths: word = 0; const AYears: word = 0): Int64;
  published
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function GetPeriod: Int64;
    procedure SetPeriod(const Value: Int64);
    function GetPeriodType: TPeriodType;
    procedure SetPeriodType(const Value: TPeriodType);
    function GetHint: string;
    procedure SetHint(const Value: string);
    function GetWaveFile: string;
    procedure SetWaveFile(const Value: string);
  public
    property Title: string read GetTitle write SetTitle;
    property Period: Int64 read GetPeriod write SetPeriod;
    property PeriodType: TPeriodType read GetPeriodType write SetPeriodType;
    property Hint: string read GetHint write SetHint;
    property WaveFile: string read GetWaveFile write SetWaveFile;
    procedure AfterLoad; override;
    procedure BeforeSave; override;
    procedure Loading(const IniFile: TIniFile); override;
    procedure Saving(const IniFile: TIniFile); override;
  end;

implementation

uses
  System.SysUtils;

procedure TSignal.AfterLoad;
begin
  inherited;
end;

procedure TSignal.BeforeSave;
begin
  inherited;
end;

function TSignal.GetHint: string;
begin
  Result := FHint;
end;

function TSignal.GetTitle: string;
begin
  Result := FTitle;
end;

function TSignal.GetPeriod: Int64;
begin
  Result := FPeriod;
end;

function TSignal.GetPeriodType: TPeriodType;
begin
  Result := FPeriodType;
end;

function TSignal.GetWaveFile: string;
begin
  Result := FWaveFile;
end;

procedure TSignal.SetHint(const Value: string);
var
  s: string;
begin
  s := Trim(Value);
  if FHint <> s then
    FHint := s;
end;

procedure TSignal.SetTitle(const Value: string);
var
  s: string;
begin
  s := Trim(Value);
  if FTitle <> s then
    FTitle := s;
end;

procedure TSignal.SetPeriod(const Value: Int64);
begin
  if FPeriod <> Value then
    FPeriod := Value;
end;

procedure TSignal.SetPeriodType(const Value: TPeriodType);
begin
  if FPeriodType <> Value then
    FPeriodType := Value;
end;

procedure TSignal.SetWaveFile(const Value: string);
var
  s: string;
begin
  s := Trim(Value);
  if FWaveFile <> s then
    FWaveFile := s;
end;

function TSignal.PeriodToSeconds(const ASeconds, AMinutes, AHours, ADays, AWeeks, AMonths, AYears: word): Int64;
begin
  Result := 0;
end;

procedure TSignal.Loading(const IniFile: TIniFile);
begin
  inherited;

end;

procedure TSignal.Saving(const IniFile: TIniFile);
begin
  inherited;

end;

end.