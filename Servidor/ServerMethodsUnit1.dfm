object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 310
  Width = 423
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 24
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\FireDAC\libmysql.dll'
    Left = 176
    Top = 24
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=suite'
      'User_Name=root'
      'Password=1234567'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 311
    Top = 24
  end
  object FDQueryUsuario: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'Select * from tblUsuarios')
    Left = 183
    Top = 118
  end
  object DataSetProviderUsuario: TDataSetProvider
    DataSet = FDQueryUsuario
    Left = 183
    Top = 182
  end
  object FDQueryAlmacen: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'Select * from tblalmacenes')
    Left = 48
    Top = 118
  end
  object DataSetProviderAlmacen: TDataSetProvider
    DataSet = FDQueryAlmacen
    Left = 40
    Top = 190
  end
  object FDQueryEmpresa: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'Select * from tblempresas')
    Left = 320
    Top = 118
  end
  object DataSetProviderEmpresa: TDataSetProvider
    DataSet = FDQueryEmpresa
    Left = 320
    Top = 182
  end
end
