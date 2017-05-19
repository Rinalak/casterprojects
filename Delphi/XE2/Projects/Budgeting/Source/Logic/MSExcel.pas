{ **** UBPFD *********** by delphibase.endimus.com ****
  >> ������ � �������� Excel, ���������� � �������� ���� � ������

  �� ������ ������ ��������:
  - ����� � �������� Excel
  - ���������� �����, �������� ����� ��������� � �������� ������� ����
  - ���������� � �������� ������ � ������� �����

  �����������: ComObj, SysUtils,Dialogs,Controls;
  �����:       lookin, lookin@mail.ru, ������������
  Copyright:   lookin
  ����:        04 ��� 2002 �.
  ***************************************************** }

unit MSExcel;

interface

uses
  ComObj,
  SysUtils,
  Dialogs,
  Controls;

function CallExcel(Show: boolean): boolean;
procedure CloseExcel;
procedure AddWorkBook(WorkBookName: string);
procedure OpenWorkBook(WorkBookName: string);
procedure CloseWorkBook(WorkBookName: string);
function ActivateWorkBook(WorkBookName: string): boolean;
function ActivateWorkSheet(WorkBookName, WorkSheetName: string): boolean;
function WorkBookIndex(WorkBookName: string): integer;
function WorkSheetIndex(WorkBookName, WorkSheetName: string): integer;
procedure CheckExtension(Name: string);
function AddWorkSheet(WorkBookName, WorkSheetName: string): boolean;
procedure DeleteWorkSheet(WorkBookName, WorkSheetName: string);

function ReadCellValue(WorkSheetName: string; RowIndex, ColumnIndex: integer): Variant;
function SetCellFormat(WorkSheetName: string; RowIndex, ColumnIndex: integer; format: string): boolean;
function GetCellFormat(WorkSheetName: string; RowIndex, ColumnIndex: integer): string;
function WriteCellValue(WorkSheetName: string; RowIndex, ColumnIndex: integer; Value: Variant): boolean;

const
  FMTTEXT = '@';
  FMTNUMBER = '0.00';
  FMTDATE = 'm/d/yyyy';

var
  Excel: Variant;

implementation

uses
  {$IFNDEF VER180}System.UITypes, {$ENDIF}
  Variants;

function CallExcel(Show: boolean): boolean;
begin
  RESULT := True;
  if VarIsEmpty(Excel) = True then
  begin
    try
      Excel := GetActiveOleObject('Excel.Application');
      RESULT := True;
    except
      on EOleSysError do
        Excel := CreateOleObject('Excel.Application');
    end;

    if Show then
      Excel.Visible := True;
  end;
end;

procedure CloseExcel;
begin
  if VarIsEmpty(Excel) = false then
  begin
    Excel.Quit;
    Excel := 0;
  end;
end;

procedure AddWorkBook(WorkBookName: string);
var
  k: integer;
begin
  CheckExtension(WorkBookName);
  if VarIsEmpty(Excel) = True then
  begin
    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := True;
  end;
  k := WorkBookIndex(WorkBookName);
  if k = 0 then
  begin
    Excel.Workbooks.Add;
    Excel.ActiveWorkbook.SaveCopyAs(FileName := WorkBookName);
    Excel.ActiveWorkbook.Close;
    Excel.Workbooks.Open(WorkBookName);
  end
  else
    MessageDlg('����� � ����� ������ ��� ����������.', mtWarning, [mbOk], 0);
end;

procedure OpenWorkBook(WorkBookName: string);
var
  k: integer;
begin
  // CheckExtension(WorkBookName);
  if VarIsEmpty(Excel) = True then
  begin
    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := True;
  end;
  k := WorkBookIndex(WorkBookName);
  if k = 0 then
    Excel.Workbooks.Open(WorkBookName)
  else
    MessageDlg('����� � ����� ������ ��� �������.', mtWarning, [mbOk], 0);
end;

procedure CloseWorkBook(WorkBookName: string);
var
  k: integer;
begin
  if VarIsEmpty(Excel) = false then
  begin
    k := WorkBookIndex(WorkBookName);
    if k <> 0 then
      Excel.ActiveWorkbook.Close(false, WorkBookName)
    else
      MessageDlg('����� � ����� ������ �����������.', mtWarning, [mbOk], 0);
  end;
end;

function ActivateWorkBook(WorkBookName: string): boolean;
var
  k: integer;
begin
  RESULT := false;
  if VarIsEmpty(Excel) = false then
  begin
    k := WorkBookIndex(WorkBookName);
    if k <> 0 then
      Excel.Workbooks[k].Activate
    else
      Excel.Workbooks.Open(WorkBookName);
  end;
end;

function ActivateWorkSheet(WorkBookName, WorkSheetName: string): boolean;
var
  k, j: integer;
begin
  RESULT := false;
  if VarIsEmpty(Excel) = false then
  begin
    k := WorkBookIndex(WorkBookName);
    j := WorkSheetIndex(WorkBookName, WorkSheetName);
    if j <> 0 then
      Excel.Workbooks[k].Sheets[j].Activate;
  end;
end;

function AddWorkSheet(WorkBookName, WorkSheetName: string): boolean;
var
  k, j: integer;
  MainSheet: Variant;
begin
  RESULT := True;
  if VarIsEmpty(Excel) = false then
  begin
    k := WorkBookIndex(WorkBookName);
    if k <> 0 then
    begin
      Excel.DisplayAlerts := false;
      MainSheet := Excel.Workbooks[k].ActiveSheet;
      Excel.Workbooks[k].Sheets.Add(EmptyParam, Excel.Workbooks[k].Sheets[Excel.Workbooks[k].Sheets.Count]);
      j := WorkSheetIndex(WorkBookName, WorkSheetName);
      if j = 0 then
        Excel.Workbooks[k].ActiveSheet.Name := WorkSheetName;
      Excel.Workbooks[k].Sheets[MainSheet.Name].Activate;
      Excel.DisplayAlerts := True;
    end;
  end;
end;

procedure DeleteWorkSheet(WorkBookName, WorkSheetName: string);
var
  k, j: integer;
begin
  if VarIsEmpty(Excel) = false then
  begin
    k := WorkBookIndex(WorkBookName);
    Excel.DisplayAlerts := false;
    j := WorkSheetIndex(WorkBookName, WorkSheetName);
    if j <> 0 then
      Excel.Workbooks[k].Sheets[j].Delete
    else
      MessageDlg('����� � ����� ������ � ���� ����� ���.', mtWarning, [mbOk], 0);
  end;
end;

procedure CheckExtension(Name: string);
var
  s: string;
begin
  // �������� ����������
  s := ExtractFileExt(name);
  if LowerCase(s) <> '.xls' then
    if MessageDlg('�� ������ ��� ����� � ������������� �����������. ����������?', mtWarning, [mbYes, mbCancel], 0) = mrCancel then
      Abort;
end;

function WorkBookIndex(WorkBookName: string): integer;
var
  i, n: integer;
begin
  // �������� �� ������� ����� � ���� ������
  n := 0;
  if VarIsEmpty(Excel) = false then
    for i := 1 to Excel.Workbooks.Count do
      if Excel.Workbooks[i].FullName = WorkBookName then
      begin
        n := i;
        break;
      end;
  WorkBookIndex := n;
end;

function WorkSheetIndex(WorkBookName, WorkSheetName: string): integer;
var
  i, k, n: integer;
begin
  // �������� �� ������� ����� � ���� ������ � ����� � ���� ������
  n := 0;
  if VarIsEmpty(Excel) = false then
  begin
    k := WorkBookIndex(WorkBookName);
    for i := 1 to Excel.Workbooks[k].Sheets.Count do
      if Excel.Workbooks[k].Sheets[i].Name = WorkSheetName then
      begin
        n := i;
        break;
      end;
  end;
  WorkSheetIndex := n;
end;

function ReadCellValue(WorkSheetName: string; RowIndex, ColumnIndex: integer): Variant;
begin
  RESULT := NULL;
  try
    RESULT := Excel.Application.Worksheets.Item[WorkSheetName].Cells.Item[RowIndex, ColumnIndex].Value;
  except
    RESULT := #$D#$A;
  end;
end;

function WriteCellValue(WorkSheetName: string; RowIndex, ColumnIndex: integer; Value: Variant): boolean;
begin
  RESULT := false;
  try
    Excel.Application.Worksheets.Item[WorkSheetName].Cells.Item[RowIndex, ColumnIndex].Value := Value;
    RESULT := True;
  except
    ;
  end;
end;

function SetCellFormat(WorkSheetName: string; RowIndex, ColumnIndex: integer; format: string): boolean;
begin
  RESULT := false;
  Excel.Application.Worksheets.Item[WorkSheetName].Cells.Item[RowIndex, ColumnIndex].NumberFormat := format;
end;

function GetCellFormat(WorkSheetName: string; RowIndex, ColumnIndex: integer): string;
begin
  RESULT := '';
  try
    RESULT := Excel.Application.Worksheets.Item[WorkSheetName].Cells.Item[RowIndex, ColumnIndex].NumberFormat;
  except

  end;
end;

end.
