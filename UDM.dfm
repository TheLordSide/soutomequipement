object DM: TDM
  Height = 480
  Width = 508
  object UniConnection: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'soutombd'
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
    Active = True
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
end
