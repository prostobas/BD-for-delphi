program KAFEDRA;

uses
  Vcl.Forms,
  linMain in 'Main\linMain.pas' {mainForm},
  fmDM in 'DM\fmDM.pas' {DM: TDataModule},
  Vcl.RecError in 'Vcl.RecError.pas' {ReconcileErrorForm},
  fakultet in 'Tables\fakultet.pas' {tbFakultet},
  project in 'Tables\project.pas' {tbProject},
  rukovod in 'Tables\rukovod.pas' {tbRukovod},
  gruppstudent in 'Tables\gruppstudent.pas' {Grupp_Student};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TmainForm, mainForm);
  Application.CreateForm(TGrupp_Student, Grupp_Student);
  Application.CreateForm(TtbProject, tbProject);
  Application.CreateForm(TtbFakultet, tbFakultet);
  Application.CreateForm(TtbRukovod, tbRukovod);
  Application.Run;
end.
