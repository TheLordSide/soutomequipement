object DM: TDM
  Height = 480
  Width = 451
  object UniConnection: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'soutombd'
    Username = 'root'
    Server = 'localhost'
    LoginPrompt = False
    Left = 56
    Top = 32
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 56
    Top = 120
  end
  object UniTable1: TUniTable
    Connection = UniConnection
    Left = 48
    Top = 208
  end
end
