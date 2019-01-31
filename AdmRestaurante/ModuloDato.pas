unit ModuloDato;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr;

type
  TDataModule1 = class(TDataModule)
    SQLConnection: TSQLConnection;
    ConnectionSuiteServer: TDSProviderConnection;
    DEmpresa: TClientDataSet;
    DEmpresaIdEmpresa: TStringField;
    DEmpresaNombre: TStringField;
    DEmpresaNit: TStringField;
    DEmpresaDireccion: TStringField;
    DEmpresaTelefono: TStringField;
    DEmpresawww: TStringField;
    DEmpresaEmail: TStringField;
    DEmpresaCaja: TFloatField;
    DEmpresaLogo: TBlobField;
    SEmpresa: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
