object DataModuleConnect: TDataModuleConnect
  OnDestroy = DataModuleDestroy
  Height = 228
  Width = 368
  PixelsPerInch = 120
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\ExtraDigital\DataBase\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 152
    Top = 72
  end
end
