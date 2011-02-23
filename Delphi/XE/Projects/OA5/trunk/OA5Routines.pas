unit OA5Routines;

interface

uses
  Classes,
  MySQLConnection,
  OA5Types;

function Routines_GetLocalIP: string;
function Routines_NormalizeStringForQuery(const Source: string; AddCommas, ReturnNull: boolean): string;
function Routines_GetConditionalMessage(const Condition: Boolean; TrueMessage, FalseMessage: string): string;
procedure Routines_CopyStringToClipboard(const Value: string);
procedure Routines_CutStringByLimiterToStringList(const Source: string; var Destination: TStringList; const Limiter: char);
procedure Routines_GenerateError(const aMessage: string; var aErrorMessage: string; var aErrorFlag: boolean);
function Routines_ValidatePhoneString(const Value: string): string;
function Routines_IsStringIsPhone(const aString: string): boolean;
procedure Routines_AddApplicationToRunKey(const RunName, ApplicationName: string);
procedure Routines_DeleteApplicationFromRunKey(const RunName: string);
function Routines_IsApplicationInRunKey(const RunName: string): Boolean;

implementation

uses
  Windows,
  WinSock,
  mysql,
  SysUtils,
  Clipbrd,
  Registry;

function Routines_GetLocalIP: string;
const
  WSVer=$101;
var
  wsaData: TWSAData;
  P: PHostEnt;
  Buf: array [0..127] of Char;
begin
  Result:='';
  if WSAStartup(WSVer, wsaData)=0 then
    begin
      if GetHostName(@Buf, 128)=0 then
        begin
          P:=GetHostByName(@Buf);
          if P<>nil then
            Result:=string(iNet_ntoa(PInAddr(p^.h_addr_list^)^));
        end;
      WSACleanup;
    end;
end;

function Routines_NormalizeStringForQuery(const Source: string; AddCommas, ReturnNull: boolean): string;
var
  z: PAnsiChar;
begin
  Routines_NormalizeStringForQuery:='';
  if ((ReturnNull)and(Trim(Source)='')) then
    Routines_NormalizeStringForQuery:='NULL'
  else
    begin
      z:=GetMemory(Length(PAnsiChar(AnsiString(Source)))*2+1);
      try
        mysql_escape_string(z, PAnsiChar(AnsiString(Source)), Length(PAnsiChar(AnsiString(Source))));
        if AddCommas then
          Routines_NormalizeStringForQuery:='"'+string(StrPas(z))+'"'
        else
          Routines_NormalizeStringForQuery:=string(StrPas(z));
      finally
        if z<>nil then
          FreeMemory(z);
      end;
    end;
end;

function Routines_GetConditionalMessage(const Condition: Boolean; TrueMessage, FalseMessage: string): string;
begin
  if Condition then
    Result:=TrueMessage
  else
    Result:=FalseMessage;
end;

procedure Routines_CopyStringToClipboard(const Value: string);
begin
  ClipBoard.Clear;
  ClipBoard.SetTextBuf(PWideChar(Value));
end;

procedure Routines_CutStringByLimiterToStringList(const Source: string; var Destination: TStringList; const Limiter: char);
var
  i: integer;
  s, s1: string;
begin
  s:=Source;
  if Destination=nil then
    Destination:=TStringList.Create
  else
    Destination.Clear;
  Destination.Sorted:=False;
  while Length(s)>0 do
    begin
      i:=Pos(Limiter, s);
      if i=0 then
        begin
          Destination.Add(s);
          Exit;
        end
      else
        begin
          s1:=Copy(s, 0, i-1);
          Destination.Append(s1);
          s1:=Copy(s, i+1, Length(s));
          s:=s1;
        end;
    end;
end;

procedure Routines_GenerateError(const aMessage: string; var aErrorMessage: string; var aErrorFlag: boolean);
begin
  aErrorMessage:=aMessage;
  aErrorFlag:=True;
end;

function Routines_ValidatePhoneString(const Value: string): string;
var
  s: string;
begin
  s:=Value;
  // ������ �������� �� ������
  while Pos(#09, s)>0 do
    s:=StringReplace(s, #09, ' ', [rfReplaceAll]);
  while Pos(',', s)>0 do
    s:=StringReplace(s, ',', ' ', [rfReplaceAll]);
  while Pos('.', s)>0 do
    s:=StringReplace(s, '.', ' ', [rfReplaceAll]);
  // ������ ������� �������� �� �������
  while Pos('*', s)>0 do
    s:=StringReplace(s, '*', '%', [rfReplaceAll]);
  // �������� ������� ��������
  while Pos('  ', s)>0 do
    s:=StringReplace(s, '  ', ' ', [rfReplaceAll]);
  // �������� ��������� ��������
  s:=Trim(s);
  Result:=s;
end;

function Routines_IsStringIsPhone(const aString: string): boolean;
var
  b: boolean;
  aSL: TStringList;
  i: integer;
  s: string;
begin
  b:=True;
  s:=Routines_ValidatePhoneString(aString);

  if s='' then // ���� ������ ����� - ��������� "false"
    b:=False;
  // �������� ������ �� ������� "������" ��������
  for i:=1 to Length(s)-1 do
    if not CharInSet(s[i], ['0'..'9', ' ', '%', '_']) then
      b:=False;
  aSL:=TStringList.Create;
  try
    aSL.Duplicates:=dupIgnore;
    aSL.Sorted:=True;
    Routines_CutStringByLimiterToStringList(s, aSL, ' ');
    for i:=0 to aSL.Count-1 do
      if (Length(aSL[i])<3)or(Length(aSL[i])>12) then
        b:=False;
  finally
    aSl.Free;
  end;

  Result:=b;
end;

procedure Routines_AddApplicationToRunKey(const RunName, ApplicationName: string);
begin
  with TRegistry.Create do
    try
      RootKey:=HKEY_CURRENT_USER;
      OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', True);
      try
        WriteString(RunName, ApplicationName);
      except
        on ERegistryException do;
      end;
    finally
      CloseKey;
      Free;
    end;
end;

function Routines_IsApplicationInRunKey(const RunName: string): Boolean;
begin
  with TRegistry.Create do
    try
      RootKey:=HKEY_CURRENT_USER;
      OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', False);
      Result:=ValueExists(RunName);
    finally
      CloseKey;
      Free;
    end;
end;

procedure Routines_DeleteApplicationFromRunKey(const RunName: string);
begin
  with TRegistry.Create do
    try
      RootKey:=HKEY_CURRENT_USER;
      OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', True);
      if ValueExists(RunName) then
        try
          DeleteValue(RunName);
        except
          on ERegistryException do;
        end;
    finally
      CloseKey;
      Free;
    end;
end;

end.