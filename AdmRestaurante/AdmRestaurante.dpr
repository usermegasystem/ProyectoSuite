program AdmRestaurante;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form2},
  ModuloDato in 'ModuloDato.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
