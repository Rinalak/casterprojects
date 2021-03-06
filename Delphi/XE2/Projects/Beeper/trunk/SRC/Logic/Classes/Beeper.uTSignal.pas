unit Beeper.uTSignal;

interface

uses
  System.IniFiles,
  System.Classes,
  Vcl.ExtCtrls,
  Beeper.uTPeriodTypes,
  CastersPackage.uICustomized,
  Beeper.uISignal,
  Beeper.uConsts;

type
  TSignal = class(TInterfacedObject, ISignal, ICustomized)
  strict private
    FTitle: string;
    FPeriod: integer;
    FPeriodType: TPeriodTypes;
    FMessageEnabled: Boolean;
    FMessage: string;
    FWaveFileEnabled: Boolean;
    FWaveFile: string;
    FEnabled: Boolean;
    FTimer: TTimer;
    function PeriodToSeconds(const ASeconds: word; const AMinutes: word = 0; const AHours: word = 0;
      const ADays: word = 0; const AWeeks: word = 0; const AMonths: word = 0;
      const AYears: word = 0): Int64;

    function GetTitle: string;
    procedure SetTitle(const AValue: string);

    function GetPeriod: Int64;
    procedure SetPeriod(const AValue: Int64);

    function GetPeriodType: TPeriodTypes;
    procedure SetPeriodType(const AValue: TPeriodTypes);

    function GetMessageEnabled: Boolean;
    procedure SetMessageEnabled(const AValue: Boolean);

    function GetMessage: string;
    procedure SetMessage(const AValue: string);

    function GetWaveFileEnabled: Boolean;
    procedure SetWaveFileEnabled(const AValue: Boolean);

    function GetWaveFile: string;
    procedure SetWaveFile(const AValue: string);

    function GetEnabled: Boolean;
    procedure SetEnabled(const AValue: Boolean);

    function GetTimer: TTimer;
  protected
    procedure Initialize; virtual;
    procedure Finalize; virtual;
  public
    constructor Create; virtual; final;
    destructor Destroy; override;
    property Title: string read GetTitle write SetTitle nodefault;
    property PeriodType: TPeriodTypes read GetPeriodType write SetPeriodType
      default DEFAULT_SIGNAL_PERIOD_TYPE;
    property Period: Int64 read GetPeriod write SetPeriod default DEFAULT_SIGNAL_PERIOD;
    property MessageEnabled: Boolean read GetMessageEnabled write SetMessageEnabled
      default DEFAULT_SIGNAL_MESSAGE_ENABLED;
    property message: string read GetMessage write SetMessage nodefault;
    property WaveFileEnabled: Boolean read GetWaveFileEnabled write SetWaveFileEnabled
      default DEFAULT_SIGNAL_WAVE_FILE_ENABLED;
    property WaveFile: string read GetWaveFile write SetWaveFile nodefault;
    property Enabled: Boolean read GetEnabled write SetEnabled default DEFAULT_SIGNAL_ENABLED;
    property Timer: TTimer read GetTimer nodefault;
  end;

function GetISignal: ISignal;

implementation

uses
  System.SysUtils,
  CastersPackage.uRoutines;

function GetISignal: ISignal;
begin
  Result := TSignal.Create;
end;

constructor TSignal.Create;
begin
  inherited;
  Initialize;
end;

destructor TSignal.Destroy;
begin
  Finalize;
  inherited;
end;

function TSignal.GetEnabled: Boolean;
begin
  Result := FEnabled;
end;

function TSignal.GetMessage: string;
begin
  Result := FMessage;
end;

function TSignal.GetMessageEnabled: Boolean;
begin
  Result := FMessageEnabled;
end;

function TSignal.GetTimer: TTimer;
begin
  if not Assigned(FTimer) then
  begin
    FTimer := TTimer.Create(nil);
  end;
  Result := FTimer;
end;

function TSignal.GetTitle: string;
begin
  Result := FTitle;
end;

function TSignal.GetPeriod: Int64;
begin
  Result := FPeriod;
end;

function TSignal.GetPeriodType: TPeriodTypes;
begin
  Result := FPeriodType;
end;

function TSignal.GetWaveFile: string;
begin
  Result := FWaveFile;
end;

function TSignal.GetWaveFileEnabled: Boolean;
begin
  Result := FWaveFileEnabled;
end;

procedure TSignal.SetEnabled(const AValue: Boolean);
begin
  Routines.SetField(AValue, FEnabled);
end;

procedure TSignal.SetMessage(const AValue: string);
begin
  Routines.SetField(AValue, FMessage);
end;

procedure TSignal.SetMessageEnabled(const AValue: Boolean);
begin
  Routines.SetField(AValue, FMessageEnabled);
end;

procedure TSignal.SetTitle(const AValue: string);
begin
  Routines.SetField(AValue, FTitle);
end;

procedure TSignal.SetPeriod(const AValue: Int64);
begin
  Routines.SetField(AValue, FPeriod);
end;

procedure TSignal.SetPeriodType(const AValue: TPeriodTypes);
begin
  if FPeriodType <> AValue then
  begin
    FPeriodType := AValue;
  end;
end;

procedure TSignal.SetWaveFile(const AValue: string);
begin
  Routines.SetField(AValue, FWaveFile);
end;

procedure TSignal.SetWaveFileEnabled(const AValue: Boolean);
begin
  Routines.SetField(AValue, FWaveFileEnabled);
end;

function TSignal.PeriodToSeconds(const ASeconds, AMinutes, AHours, ADays, AWeeks, AMonths,
  AYears: word): Int64;
begin
  Result := 0;
end;

procedure TSignal.Initialize;
begin
  inherited;
  FEnabled := DEFAULT_SIGNAL_ENABLED;
  FTitle := DEFAULT_SIGNAL_TITLE;
  FPeriod := DEFAULT_SIGNAL_PERIOD;
  FPeriodType := DEFAULT_SIGNAL_PERIOD_TYPE;
  FMessageEnabled := DEFAULT_SIGNAL_MESSAGE_ENABLED;
  FMessage := DEFAULT_SIGNAL_MESSAGE;
  FWaveFileEnabled := DEFAULT_SIGNAL_WAVE_FILE_ENABLED;
  FWaveFile := DEFAULT_SIGNAL_WAVE_FILE;
end;

procedure TSignal.Finalize;
begin
  FreeAndNil(FTimer);
end;

end.
