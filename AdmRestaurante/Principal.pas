unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
      opcion: boolean;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses ModuloDato;

procedure TForm2.FormShow(Sender: TObject);
begin
    opcion := true;

  if opcion = true then
  begin

    try
      DataModule1.SQLConnection.Params.Clear;
      DataModule1.SQLConnection.Params.Add('DriverUnit=Data.DBXDataSnap');
      DataModule1.SQLConnection.Params.Add('HostName=127.0.0.1');
      DataModule1.SQLConnection.Params.Add('Port= 211');
      DataModule1.SQLConnection.Params.Add('CommunicationProtocol=tcp/ip');
      DataModule1.SQLConnection.Params.Add('DatasnapContext=datasnap/');
      DataModule1.SQLConnection.Params.Add('DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
      DataModule1.SQLConnection.Params.Add('Filters={}');
      DataModule1.SQLConnection.Connected := true;
      // DataModule1.DDetallaMestro.Open;

    except
      opcion := False;
      ShowMessage('Servidor no esta activo');
      // DataModule1.DDetallaMestro.Close;
      // taModule1.SQLConnection.Connected := False;
      abort;

    end;

  end;
end;

end.
