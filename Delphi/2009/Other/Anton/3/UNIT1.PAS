unit Unit1;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Spin, ComPort;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnClose: TBitBtn;
    ParamPanel: TPanel;
    rgPortIndex: TRadioGroup;
    rgDataLen: TRadioGroup;
    rgStopBits: TRadioGroup;
    rgBaud: TRadioGroup;
    rgParity: TRadioGroup;
    GroupBox1: TGroupBox;
    bRead: TSpeedButton;
    Panel3: TPanel;
    Bevel2: TBevel;
    DR: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    OE: TShape;
    PE: TShape;
    FE: TShape;
    BD: TShape;
    DCD: TShape;
    RI: TShape;
    CTS: TShape;
    DSR: TShape;
    TERI: TShape;
    Label12: TLabel;
    eReadBuffer: TEdit;
    btnClearReadBuf: TSpeedButton;
    GroupBox2: TGroupBox;
    btnSend: TSpeedButton;
    seSendByte: TSpinEdit;
    btnOpenPort: TSpeedButton;
    btnClosePort: TSpeedButton;
    StatusBar: TStatusBar;
    eAvaibleBytes: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure bReadClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure btnClearReadBufClick(Sender: TObject);
    procedure btnOpenPortClick(Sender: TObject);
    procedure btnClosePortClick(Sender: TObject);
    procedure rgDataLenClick(Sender: TObject);
    procedure rgStopBitsClick(Sender: TObject);
    procedure rgParityClick(Sender: TObject);
    procedure rgBaudClick(Sender: TObject);
  private
    { ��������� ��� ������� � �����. ����� ��������� ���}
    { �����������.                                      }
    FPort : TComPort;
    procedure OnReadByte(const B : Byte; PortState : TComStat; ErrCode, ModemState : Cardinal);    
  public
   procedure SetPortProperties;
   procedure SetEnabledControls; 
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

{ �������� ���������� ������� � ������ ��� �������� ����� }
procedure TForm1.FormCreate(Sender: TObject);
begin
 FPort:= TComPort.Create(Self);
 FPort.OnReadByte:= OnReadByte;
 SetEnabledControls;
end;

{���������� ��� ����������� ����� (������ �� ���������) }
procedure TForm1.FormDestroy(Sender: TObject);
begin
 FPort.Free;
end;

{������ �������� �����}
procedure TForm1.btnOpenPortClick(Sender: TObject);
begin
 FPort.Close;
 FPort.ComNumber:= rgPortIndex.ItemIndex+1;
 SetPortProperties;
 FPort.Open;
 If FPort.Connected then
  StatusBar.Panels[0].Text:= '���� ������� ������'
 Else
  StatusBar.Panels[0].Text:= '������ �������� �����';
 SetEnabledControls;
end;

procedure TForm1.btnClosePortClick(Sender: TObject);
begin
 FPort.Close;
 StatusBar.Panels[0].Text:= '';
 SetEnabledControls;
 bRead.Down:= False;
end;

procedure TForm1.SetEnabledControls;
Var Active : Boolean;
begin
 Active:= FPort.Connected;
 btnClosePort.Enabled:= Active;
 rgPortIndex.Enabled := not Active;
 btnOpenPort.Enabled := not Active;
 rgDataLen.Enabled   := Active;
 rgStopBits.Enabled  := Active;
 rgParity.Enabled    := Active;
 rgBaud.Enabled      := Active;
end;

{������� ������� �����}
procedure TForm1.SetPortProperties;
begin
 rgDataLenClick(nil);
 rgStopBitsClick(nil);
 rgParityClick(nil);
 rgBaudClick(nil);
end;


{������ �������� ���������}
procedure TForm1.btnCloseClick(Sender: TObject);
begin
 Close;
end;

{������ ������ �����}
procedure TForm1.bReadClick(Sender: TObject);
begin
 FPort.ReadActive:= bRead.Down;
end;

Const {����� �����������}
 IColor : Array [Boolean] of TColor = (clWhite, clGreen);

procedure TForm1.OnReadByte(const B : Byte; PortState : TComStat; ErrCode, ModemState : Cardinal);
Var S : String;  AvaibleBytes : Cardinal;
begin
 { ���������� ����� ����������, �� ��� �� ����������� ����}
 AvaibleBytes:= PortState.cbInQue;
 eAvaibleBytes.Text:= IntToStr(AvaibleBytes);

 {������ ��� ������������� ��������� ������� ����� ��� ������,}
 {������� OnReadByte ���������� ������ ����� ���������� ����� }
 S:= eReadBuffer.Text;
 S:= S + Format('$%X',[B]);
 If Length(S) > 40 then Delete(S, 1, 3);
 eReadBuffer.Text:= S;

 {����������� ����������� ��������� �����}
 { ������ ������   }
 DR.Brush.Color:= IColor[AvaibleBytes >  0];
 { ������������    }
 OE.Brush.Color:= IColor[(ErrCode and CE_OVERRUN ) <> 0];
 { ������ �������� }
 PE.Brush.Color:= IColor[(ErrCode and CE_RXPARITY) <> 0];
 { ������ �����    }
 FE.Brush.Color:= IColor[(ErrCode and CE_FRAME   ) <> 0];
 { ����� �����     }
 BD.Brush.Color:= IColor[(ErrCode and CE_BREAK   ) <> 0];

 {����������� ����������� ��������� ������}
 ModemState:= FPort.GetModemState;
 {������ DCD (data carrier detect)}
 DCD.Brush.Color := IColor[(ModemState and MS_RLSD_ON) <> 0];
 {��������� ����� RI (ring indicator)}
 RI .Brush.Color := IColor[(ModemState and MS_RING_ON) <> 0];
 {��������� ����� DSR (data set ready)}
 DSR.Brush.Color := IColor[(ModemState and MS_DSR_ON ) <> 0];
 {��������� ����� CTS (clear to send)}
 CTS.Brush.Color := IColor[(ModemState and MS_CTS_ON ) <> 0];
 { ������ "���� ���������" (��������� ������) }
 { �� ������������ � Windows 						      }
 {TERI.Brush.Color:= IColor[(CurrentState and $04) <> 0];}
end;

{�������� ����� ������}
procedure TForm1.btnClearReadBufClick(Sender: TObject);
begin
 eReadBuffer.Text:= '';
end;

{�������� �����}
procedure TForm1.btnSendClick(Sender: TObject);
begin
 FPort.WriteByte(seSendByte.Value);
end;

{����� �����}
procedure TForm1.rgDataLenClick(Sender: TObject);
begin
 FPort.ByteSize:= TByteSize(rgDataLen.ItemIndex);
end;

{����� ����-���. ��� ��� Windows ��������� �������� ��}
{������������� �������� �� ������������, �� ��������� }
{���������� 2 ����-���� ��� �� 5-������� ������       }
procedure TForm1.rgStopBitsClick(Sender: TObject);
begin
 Case rgStopBits.ItemIndex of
  0: // 1 ����-���
   FPort.Stopbits:= sb1BITS;
  1: // 2 (1.5) ����-����
   If rgDataLen.ItemIndex = 0 then FPort.Stopbits:= sb1HALFBITS
    Else FPort.Stopbits:= sb2BITS;
 End;
end;

{�������� ��������}
procedure TForm1.rgParityClick(Sender: TObject);
begin
 FPort.Parity  := TParity(rgParity.ItemIndex);
end;

{�������� ��������}
procedure TForm1.rgBaudClick(Sender: TObject);
begin
 FPort.BaudRate:= TBaudRate(rgBaud.ItemIndex);
end;

end.
