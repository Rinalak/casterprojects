unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormClick(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure DrawBMP (Handle : THandle); stdcall; external 'Example1_MyDll.dll';

procedure TForm1.FormClick(Sender: TObject);
begin
  DrawBMP(Canvas.Handle);
end;

end.