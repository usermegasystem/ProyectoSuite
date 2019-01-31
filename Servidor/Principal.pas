unit Principal;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    LabelEstado: TLabel;
    EditPuerto: TEdit;
    btnIniciarPuerto: TButton;
    procedure btnIniciarPuertoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses ServerContainerUnit1;

procedure TForm1.btnIniciarPuertoClick(Sender: TObject);
begin


 if btnIniciarPuerto.Caption = 'Iniciar' then
  begin
    ServerContainer1.DSTCPServerTransport1.port := StrToInt(EditPuerto.Text);
    ServerContainer1.DSServer1.Start;
    if ServerContainer1.DSServer1.Started then
      btnIniciarPuerto.Caption := 'Parar';
    ShowMessage('Puerto Iniciado');
    LabelEstado.Caption := 'Conexión Ok.';
    LabelEstado.Font.Color := clGreen

  end
  else
  begin
    ServerContainer1.DSServer1.stop;
    if not ServerContainer1.DSServer1.Started then
      btnIniciarPuerto.Caption := 'Iniciar';
    // ShowMessage('Puerto Parado');
    LabelEstado.Caption := 'Conexión Cancelada.';
    LabelEstado.Font.Color := clRed
  end;

end;

end.

