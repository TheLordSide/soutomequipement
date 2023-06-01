object DM: TDM
  Height = 676
  Width = 860
  object UniConnection: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'soutombd'
    Pooling = True
    Username = 'root'
    Server = 'localhost'
    Connected = True
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
  object UniQuery1: TUniQuery
    Connection = UniConnection
    SQL.Strings = (
      'SELECT * FROM utilisateur')
    Left = 168
    Top = 120
    object UniQuery1idutilisateur: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idutilisateur'
    end
    object UniQuery1Nomuti: TStringField
      FieldName = 'Nomuti'
      Required = True
      Size = 30
    end
    object UniQuery1Mdp: TStringField
      FieldName = 'Mdp'
      Required = True
      Size = 10
    end
    object UniQuery1statut: TStringField
      FieldName = 'statut'
      Required = True
      Size = 15
    end
    object UniQuery1role: TStringField
      FieldName = 'role'
      Required = True
    end
    object UniQuery1datecreation: TDateField
      FieldName = 'datecreation'
      Required = True
    end
    object UniQuery1datelast: TDateField
      FieldName = 'datelast'
      Required = True
    end
  end
  object UniDataSource1: TUniDataSource
    Left = 248
    Top = 216
  end
  object T_utilisateur: TUniTable
    TableName = 'utilisateur'
    Connection = UniConnection
    Left = 48
    Top = 304
    object T_utilisateuridutilisateur: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idutilisateur'
    end
    object T_utilisateurNomuti: TStringField
      FieldName = 'Nomuti'
      Required = True
      Size = 30
    end
    object T_utilisateurMdp: TStringField
      FieldName = 'Mdp'
      Required = True
      Size = 10
    end
    object T_utilisateurstatut: TStringField
      FieldName = 'statut'
      Required = True
      Size = 15
    end
    object T_utilisateurrole: TStringField
      FieldName = 'role'
      Required = True
    end
    object T_utilisateurdatecreation: TDateField
      FieldName = 'datecreation'
    end
    object T_utilisateurdatelast: TDateField
      FieldName = 'datelast'
    end
  end
  object T_socitete: TUniTable
    TableName = 'societe'
    Connection = UniConnection
    Left = 184
    Top = 312
  end
  object frxReport1: TfrxReport
    Version = '6.9.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Par d'#233'faut'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45066.535105844910000000
    ReportOptions.LastChange = 45066.535105844910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 240
    Top = 16
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object T_tempfacturation: TUniTable
    TableName = 'temp_facturation'
    Connection = UniConnection
    Left = 288
    Top = 312
  end
  object UniDataSource2: TUniDataSource
    Left = 72
    Top = 392
  end
  object T_temptravaux: TUniTable
    TableName = 'temp_travaux'
    Connection = UniConnection
    Left = 280
    Top = 408
    object T_temptravauxidtravaux: TIntegerField
      FieldName = 'idtravaux'
    end
    object T_temptravauxnumfacture: TStringField
      FieldName = 'numfacture'
      Required = True
      Size = 30
    end
    object T_temptravauxdesignation: TStringField
      FieldName = 'designation'
      Required = True
      Size = 40
    end
  end
  object UniDataSource3: TUniDataSource
    Left = 168
    Top = 400
  end
  object Q_CLIENTDS: TUniDataSource
    DataSet = Q_client
    Left = 488
    Top = 24
  end
  object Q_client: TUniQuery
    Connection = UniConnection
    SQL.Strings = (
      'select * from client')
    Active = True
    Left = 400
    Top = 24
  end
  object Q_societe: TUniQuery
    Connection = UniConnection
    SQL.Strings = (
      'Select * from societe')
    Active = True
    Left = 392
    Top = 112
  end
  object Q_SOCIETEDS: TUniDataSource
    DataSet = Q_societe
    Left = 496
    Top = 104
  end
  object T_tempvoiture: TUniTable
    TableName = 'temp_voiture'
    Connection = UniConnection
    Left = 392
    Top = 192
  end
  object T_TEMPVOITUREDS: TUniDataSource
    DataSet = T_tempvoiture
    Left = 416
    Top = 312
  end
  object T_client: TUniTable
    TableName = 'client'
    Connection = UniConnection
    Left = 648
    Top = 32
  end
end
