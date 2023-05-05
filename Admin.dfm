object F_admin: TF_admin
  Left = 0
  Top = 0
  ClientHeight = 763
  ClientWidth = 1078
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  StyleName = 'Windows'
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1078
    Height = 763
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object RelativePanel1: TRelativePanel
      Left = 0
      Top = 0
      Width = 1078
      Height = 121
      ControlCollection = <>
      Align = alTop
      BevelOuter = bvNone
      Caption = 'DASHBORD ADMINISTRATEUR'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object GridPanel1: TGridPanel
      Left = 0
      Top = 121
      Width = 1078
      Height = 642
      Align = alClient
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      ControlCollection = <>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 1
    end
  end
  object MainMenu1: TMainMenu
    Left = 904
    Top = 264
    object Fichier1: TMenuItem
      Caption = 'Fichier'
    end
    object Utilisateurs1: TMenuItem
      Caption = 'Utilisateurs'
      object enregistrerunnouveau1: TMenuItem
        Caption = 'gerer les utlisateurs'
        OnClick = enregistrerunnouveau1Click
      end
    end
    object Options1: TMenuItem
      Caption = 'Options'
      object Deconnexion1: TMenuItem
        Caption = 'Deconnexion'
        OnClick = Deconnexion1Click
      end
      object Quitter1: TMenuItem
        Caption = 'Quitter'
        OnClick = Quitter1Click
      end
    end
  end
end
