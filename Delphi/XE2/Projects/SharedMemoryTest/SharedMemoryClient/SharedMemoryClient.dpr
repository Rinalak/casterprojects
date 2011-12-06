program SharedMemoryClient;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uConfigurationForm in 'uConfigurationForm.pas' {ConfigurationForm},
  uAboutForm in 'uAboutForm.pas' {AboutForm},
  uConfigurationClass in 'uConfigurationClass.pas',
  uChunkClass in '..\SharedMemoryCommon\uChunkClass.pas',
  uChunkedFileClass in '..\SharedMemoryCommon\uChunkedFileClass.pas',
  uCommon in '..\SharedMemoryCommon\uCommon.pas',
  uSharedMemClass in '..\SharedMemoryCommon\uSharedMemClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
