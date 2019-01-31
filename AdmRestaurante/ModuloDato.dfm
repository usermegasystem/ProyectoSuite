object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 380
  Width = 427
  object SQLConnection: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 56
    Top = 17
    UniqueId = '{B89183C6-8E17-406D-A8BC-FDE81D83B7D2}'
  end
  object ConnectionSuiteServer: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection
    Left = 160
    Top = 17
  end
  object DEmpresa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderEmpresa'
    RemoteServer = ConnectionSuiteServer
    Left = 36
    Top = 80
    object DEmpresaIdEmpresa: TStringField
      FieldName = 'IdEmpresa'
      Origin = 'IdEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object DEmpresaNombre: TStringField
      FieldName = 'Nombre'
      Origin = 'Nombre'
      Size = 50
    end
    object DEmpresaNit: TStringField
      FieldName = 'Nit'
      Origin = 'Nit'
      Size = 15
    end
    object DEmpresaDireccion: TStringField
      FieldName = 'Direccion'
      Origin = 'Direccion'
      Size = 50
    end
    object DEmpresaTelefono: TStringField
      FieldName = 'Telefono'
      Origin = 'Telefono'
      Size = 30
    end
    object DEmpresawww: TStringField
      FieldName = 'www'
      Origin = 'www'
      Size = 30
    end
    object DEmpresaEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      Size = 50
    end
    object DEmpresaCaja: TFloatField
      FieldName = 'Caja'
      Origin = 'Caja'
    end
    object DEmpresaLogo: TBlobField
      FieldName = 'Logo'
      Origin = 'Logo'
    end
  end
  object SEmpresa: TDataSource
    DataSet = DEmpresa
    Left = 36
    Top = 152
  end
end
