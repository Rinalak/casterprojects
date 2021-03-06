/// <summary>
/// ������-������ ������ TRetranslatorThreadClass
/// </summary>
/// <remarks>
/// (C)opyright 2011 by Vlad Ivanov aka Caster
/// </remarks>
unit SharedMemoryCommon.uRetranslatorThreadClass;

interface

uses
  System.Classes,
  Winapi.Windows,
  SharedMemoryCommon.uCommon;

type

  /// <summary>
  /// �����, ��������� <b>TThread</b>, �������������� ���������� ����������
  /// ��� �������� ���������� �������������� ��������� ��� ������ �������
  /// <b>BroadcastSystemMessage</b>.
  /// </summary>
  TRetranslatorThreadClass = class(TThread)
  strict private

    /// <summary>
    /// ����� �������� � ������������ ����� ������� �������� ���������.
    /// </summary>
    FPause: integer;

    /// <summary>
    /// ��������������������� ��������� (��������, ������������ ��������
    /// <b>RegisterWindowMessage</b>).
    /// </summary>
    FMessage: cardinal;

    /// <summary>
    /// ������ �������� ���������
    /// </summary>
    FWParam: WPARAM;

    /// <summary>
    /// ������ �������� ���������
    /// </summary>
    FLParam: LPARAM;
  protected

    /// <summary>
    /// ������� ���� ������
    /// </summary>
    procedure Execute; override;
  public

    /// <summary>
    /// ����������� ������.
    /// </summary>
    /// <param name="Msg">
    /// ��������������������� ��������� (��������, ������������ ��������
    /// <b>RegisterWindowMessage</b>).
    /// </param>
    /// <param name="wParam">
    /// <b>�������������� ��������.</b> ������ �������� ���������. ��
    /// ��������� ����� 0.
    /// </param>
    /// <param name="lParam">
    /// <b>�������������� ��������.</b> ������ �������� ���������. ��
    /// ��������� ����� 0.
    /// </param>
    /// <param name="Pause">
    /// <b>�������������� ��������.</b> ����� �������� � ������������ �����
    /// ������� �������� ���������. �� ��������� ����� 1000 (1 ���.)
    /// </param>
    constructor Create(const Msg: cardinal; const WPARAM: WPARAM = 0; const LPARAM: LPARAM = 0;
      const Pause: integer = CONST_DEFAULTVALUE_RETRANSLATORPAUSE);
  end;

implementation

var
  /// <summary>
  /// ��� ����������� ��������� (����������� �������� - ������ ����������)
  /// </summary>
  Recipients: DWORD = BSM_APPLICATIONS;

constructor TRetranslatorThreadClass.Create(const Msg: cardinal; const WPARAM: WPARAM = 0; const LPARAM: LPARAM = 0;
  const Pause: integer = CONST_DEFAULTVALUE_RETRANSLATORPAUSE);
begin
  inherited Create(True);
  Priority := tpLower;
  FreeOnTerminate := True;
  FPause := Pause;
  FMessage := Msg;
  FWParam := WPARAM;
  FLParam := LPARAM;
end;

procedure TRetranslatorThreadClass.Execute;
begin
  inherited;
  while not Terminated do
  begin
    BroadcastSystemMessage(BSF_IGNORECURRENTTASK or BSF_POSTMESSAGE, @Recipients, FMessage, FWParam, FLParam);
    // PostMessage(HWND_BROADCAST, FMessage, FWParam, FLParam);
    Sleep(FPause);
  end;
end;

end.
