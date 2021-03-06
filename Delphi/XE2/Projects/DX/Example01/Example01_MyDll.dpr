library Example01_MyDll;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

{$R *.dres}

uses
  VCL.Graphics;

procedure DrawBMP(Handle: THandle); export; stdcall;
var
  wrkBitmap: TBitmap;
  wrkCanvas: TCanvas;
begin
  wrkBitmap := TBitmap.Create;
  try
    // ����� ����������� �� ��������, ���������������� ������
    wrkBitmap.LoadFromResourceName(HInstance, 'Bitmap_1');
    wrkCanvas := TCanvas.Create;
    try
      wrkCanvas.Handle := Handle;
      wrkCanvas.Draw(0, 0, wrkBitmap);
    finally
      wrkCanvas.Free;
    end;
  finally
    wrkBitmap.Free;
  end;
end;

exports
  DrawBMP;

end.
