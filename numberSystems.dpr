program numberSystems;

uses
  System.StartUpCopy,
  FMX.Forms,
  u_Main in 'u_Main.pas' {fmMain},
  uAbout in 'help\about\uAbout.pas' {fmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmAbout, fmAbout);
  Application.Run;
end.
