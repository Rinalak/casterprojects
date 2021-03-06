﻿unit LogKeeper.uAboutForm;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ExtCtrls,
  StdCtrls,
  ShellAPI,
  ActnList,
  PlatformDefaultStyleActnCtrls,
  ActnMan,
  jpeg,
  LogKeeper.uTypes,
  AboutPackage.uTGSFileVersionInfo,
  System.Actions;

type
  TAboutForm = class(TForm)
    Shape1: TShape;
    Timer1: TTimer;
    Timer2: TTimer;
    imgApplicationIcon: TImage;
    lblTitle: TLabel;
    lblVersion: TLabel;
    lblLegalCopyright: TLabel;
    lblEMailAddress: TLabel;
    btnClose: TButton;
    lblEMail: TLabel;
    gsFileVersionInfo1: TgsFileVersionInfo;
    ActionManager1: TActionManager;
    Action_Close: TAction;
    procedure Timer2Timer(Sender: TObject);
    procedure lblEMailAddressClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action_CloseExecute(Sender: TObject);
  private
    procedure Do_Close;

    procedure ProcedureHeader(aTitle, aLogGroupGUID: string);
    procedure ProcedureFooter(aLogGroupGUID: string);
    procedure LogThis(const aMessage, aLogGroupGUID: string; aMessageType: TLogMessagesType);
  end;

var
  AboutForm: TAboutForm;

implementation

{$R *.dfm}

uses
  LogKeeper.uMainForm,
  LogKeeper.uConsts;

procedure TAboutForm.LogThis(const aMessage, aLogGroupGUID: string; aMessageType: TLogMessagesType);
var
  s: string;
  aCopyData: TCopyDataStruct;
begin
  case aMessageType of
    lmtError:
      s := 'ERROR';
    lmtWarning:
      s := 'WARNING';
    lmtInfo:
      s := 'INFO';
    lmtSQL:
      s := 'SQL';
    lmtDebug:
      s := 'DEBUG';
  end;
  s := IntToStr(WMCD_THREADLOG) + ';' + s + ';' + aMessage + ';' + aLogGroupGUID;
  with aCopyData do
  begin
    dwData := 0;
    cbData := Length(s) + 1;
    lpData := PAnsiChar(AnsiString(s));
  end;
  SendMessage(MainForm.Handle, WM_COPYDATA, Longint(MainForm.Handle), Longint(@aCopyData));
end;

procedure TAboutForm.ProcedureHeader(aTitle, aLogGroupGUID: string);
begin
  LogThis('[' + aTitle + ']', aLogGroupGUID, lmtDebug);
  LogThis('Начало процедуры...', aLogGroupGUID, lmtDebug);
  MainForm.Inc_BusyState(aLogGroupGUID);
  Application.ProcessMessages;
end;

procedure TAboutForm.ProcedureFooter(aLogGroupGUID: string);
begin
  MainForm.Dec_BusyState(aLogGroupGUID);
  LogThis('Окончание процедуры.', aLogGroupGUID, lmtDebug);
  Application.ProcessMessages;
end;

procedure TAboutForm.FormCreate(Sender: TObject);
const
  LogGroupGUID: string = '{89E07CD4-3DEC-45CD-ACA6-6E924E401633}';
begin
  ProcedureHeader('Процедура-обработчик события создания окна', LogGroupGUID);
  Action_Close.Visible := False;
  ProcedureFooter(LogGroupGUID);
end;

procedure TAboutForm.FormShow(Sender: TObject);
const
  LogGroupGUID: string = '{C1095B9A-D0AD-461F-AFE1-78908798BD1E}';
begin
  ProcedureHeader('Процедура-обработчик события отображения окна', LogGroupGUID);
  if Action_Close.Visible then
  begin
    Timer1.Enabled := False;
    AlphaBlendValue := 222;
    Timer2.Enabled := False;
  end
  else
  begin
    Timer1.Enabled := True;
    AlphaBlendValue := 0;
    Timer2.Enabled := True;
  end;
  btnClose.default := Action_Close.Visible;
  lblVersion.Caption := Format('Версия %d.%d Release %d Build %d', [gsFileVersionInfo1.ModuleVersion.Major,
    gsFileVersionInfo1.ModuleVersion.Minor, gsFileVersionInfo1.ModuleVersion.Release,
    gsFileVersionInfo1.ModuleVersion.Build]);
  lblLegalCopyright.Caption := gsFileVersionInfo1.LegalCopyright;
  LogThis('Отображено окно "О программе...".', LogGroupGUID, lmtInfo);
  ProcedureFooter(LogGroupGUID);
end;

procedure TAboutForm.Action_CloseExecute(Sender: TObject);
const
  LogGroupGUID: string = '{5C29E71E-5A81-4850-9374-E8DA338D700B}';
begin
  ProcedureHeader('Процедура-обработчик действия "' + Action_Close.Caption + '"', LogGroupGUID);
  Do_Close;
  ProcedureFooter(LogGroupGUID);
end;

procedure TAboutForm.Do_Close;
const
  LogGroupGUID: string = '{3C766C88-F4DD-4440-84FD-2837CAAF90C3}';
begin
  ProcedureHeader('Процедура закрытия модального окна с результатом mrClose', LogGroupGUID);
  ModalResult := mrClose;
  LogThis('Окно "О программе..." закрыто.', LogGroupGUID, lmtInfo);
  ProcedureFooter(LogGroupGUID);
end;

procedure TAboutForm.lblEMailAddressClick(Sender: TObject);
const
  LogGroupGUID: string = '{10542FD7-B89E-46D7-8F95-4758A17BEAC1}';
begin
  ProcedureHeader('Процедура-обработчик щелчка по метке адреса электронной почты', LogGroupGUID);
  ShellExecute(Application.Handle, 'open', PWideChar('mailto:vlad_dracula@tut.by'), nil, nil, SW_MAXIMIZE);
  ProcedureFooter(LogGroupGUID);
end;

procedure TAboutForm.Timer1Timer(Sender: TObject);
const
  LogGroupGUID: string = '{EA51CFAA-E943-4465-87A7-87F596C99409}';
begin
  ProcedureHeader('Процедура закрытия окна по истечению счётчика таймера', LogGroupGUID);
  Do_Close;
  ProcedureFooter(LogGroupGUID);
end;

procedure TAboutForm.Timer2Timer(Sender: TObject);
begin
  // Процедура реакции на срабатывание таймера, отвечающего за плавное увеличение прозрачности окна
  if ((AlphaBlendValue + 17) <= 222) then
    AlphaBlendValue := AlphaBlendValue + 17;
end;

end.
