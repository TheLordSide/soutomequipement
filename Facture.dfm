object F_facture: TF_facture
  Left = 0
  Top = 0
  ClientHeight = 805
  ClientWidth = 998
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  StyleName = 'Windows'
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 998
    Height = 805
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 979
    object SplitView1: TSplitView
      Left = 0
      Top = 0
      Width = 200
      Height = 805
      OpenedWidth = 200
      Placement = svpLeft
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        AlignWithMargins = True
        Left = 10
        Top = 113
        Width = 180
        Height = 42
        Margins.Left = 10
        Margins.Right = 10
        Align = alTop
        Caption = 'Valider le choix'
        ExplicitLeft = 0
        ExplicitTop = 103
        ExplicitWidth = 233
      end
      object RadioGroup1: TRadioGroup
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 180
        Height = 97
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Align = alTop
        Caption = 'Choix de Facturaction'
        Items.Strings = (
          'Facture proforma'
          'Facture simple')
        TabOrder = 0
      end
    end
    object FactureProforma: TPanel
      Left = 200
      Top = 0
      Width = 798
      Height = 805
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 779
      object CategoryPanelGroup1: TCategoryPanelGroup
        Left = 0
        Top = 0
        Width = 798
        Height = 764
        VertScrollBar.Tracking = True
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clWhite
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Segoe UI'
        HeaderFont.Style = []
        TabOrder = 0
        ExplicitWidth = 779
        object CategoryPanel6: TCategoryPanel
          Top = 985
          Caption = 'CategoryPanel6'
          TabOrder = 0
        end
        object CategoryPanel4: TCategoryPanel
          Top = 785
          Caption = 'Activit'#233's r'#233'alis'#233'es sur le v'#233'hicule'
          TabOrder = 1
          object SpeedButton3: TSpeedButton
            Left = 24
            Top = 72
            Width = 129
            Height = 38
            Caption = 'Valider'
            OnClick = SpeedButton3Click
          end
          object travaux: TEdit
            Left = 24
            Top = 16
            Width = 185
            Height = 23
            TabOrder = 0
          end
          object ListBox1: TListBox
            Left = 245
            Top = 16
            Width = 219
            Height = 153
            ItemHeight = 15
            TabOrder = 1
          end
        end
        object CategoryPanel5: TCategoryPanel
          Top = 585
          Caption = 'D'#233'tails sur le v'#233'hicule'
          TabOrder = 2
          object Label11: TLabel
            Left = 24
            Top = 17
            Width = 110
            Height = 15
            Caption = 'Num'#233'ro du chassis : '
          end
          object Label12: TLabel
            Left = 24
            Top = 58
            Width = 70
            Height = 15
            Caption = 'Kilom'#233'trage :'
          end
          object Label13: TLabel
            Left = 24
            Top = 100
            Width = 79
            Height = 15
            Caption = 'Marque/Type : '
          end
          object Label14: TLabel
            Left = 24
            Top = 138
            Width = 91
            Height = 15
            Caption = 'Immatriculation :'
          end
          object Edit9: TEdit
            Left = 247
            Top = 14
            Width = 217
            Height = 23
            BevelOuter = bvNone
            TabOrder = 0
          end
          object Edit10: TEdit
            Left = 247
            Top = 54
            Width = 217
            Height = 23
            BevelOuter = bvNone
            TabOrder = 1
          end
          object Edit11: TEdit
            Left = 247
            Top = 97
            Width = 217
            Height = 23
            BevelOuter = bvNone
            TabOrder = 2
          end
          object Edit12: TEdit
            Left = 247
            Top = 135
            Width = 217
            Height = 23
            TabOrder = 3
          end
        end
        object CategoryPanel3: TCategoryPanel
          Top = 350
          Height = 235
          Caption = 'D'#233'tails sur le client'
          TabOrder = 3
          object Label6: TLabel
            Left = 24
            Top = 138
            Width = 171
            Height = 15
            Caption = 'Num'#233'ro de t'#233'l'#233'phone du client :'
          end
          object Label7: TLabel
            Left = 24
            Top = 100
            Width = 99
            Height = 15
            Caption = 'Adresse du client : '
          end
          object Label8: TLabel
            Left = 24
            Top = 61
            Width = 129
            Height = 15
            Caption = 'Num'#233'ro fiscal du client :'
          end
          object Label9: TLabel
            Left = 24
            Top = 17
            Width = 82
            Height = 15
            Caption = 'Nom du client :'
          end
          object Label10: TLabel
            Left = 24
            Top = 178
            Width = 84
            Height = 15
            Caption = 'Email du client :'
          end
          object Edit4: TEdit
            Left = 245
            Top = 97
            Width = 217
            Height = 23
            BevelOuter = bvNone
            TabOrder = 2
          end
          object Edit5: TEdit
            Left = 245
            Top = 54
            Width = 217
            Height = 23
            BevelOuter = bvNone
            TabOrder = 1
          end
          object Edit6: TEdit
            Left = 245
            Top = 14
            Width = 217
            Height = 23
            BevelOuter = bvNone
            TabOrder = 0
          end
          object Edit7: TEdit
            Left = 245
            Top = 135
            Width = 217
            Height = 23
            TabOrder = 3
          end
          object Edit8: TEdit
            Left = 245
            Top = 175
            Width = 217
            Height = 23
            TabOrder = 4
          end
        end
        object CategoryPanel2: TCategoryPanel
          Top = 125
          Height = 225
          Caption = 'D'#233'tails de la facture'
          TabOrder = 4
          object Label2: TLabel
            Left = 24
            Top = 29
            Width = 106
            Height = 15
            Caption = 'Numero de facture :'
          end
          object Label3: TLabel
            Left = 24
            Top = 71
            Width = 103
            Height = 15
            Caption = 'R'#233'f'#233'rence num'#233'ro :'
          end
          object Label4: TLabel
            Left = 24
            Top = 114
            Width = 68
            Height = 15
            Caption = 'BC Num'#233'ro :'
          end
          object Label5: TLabel
            Left = 24
            Top = 162
            Width = 107
            Height = 15
            Caption = 'Date de facturation :'
          end
          object Edit1: TEdit
            Left = 245
            Top = 24
            Width = 217
            Height = 23
            BevelOuter = bvNone
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 245
            Top = 68
            Width = 217
            Height = 23
            BevelOuter = bvNone
            TabOrder = 1
          end
          object Edit3: TEdit
            Left = 245
            Top = 111
            Width = 217
            Height = 23
            BevelOuter = bvNone
            TabOrder = 2
          end
          object DatePicker1: TDatePicker
            Left = 245
            Top = 157
            Width = 217
            Height = 25
            Date = 45062.000000000000000000
            DateFormat = 'dd/mm/yyyy'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            TabOrder = 3
          end
        end
        object CategoryPanel1: TCategoryPanel
          Top = 0
          Height = 125
          Caption = 'D'#233'tails de la soci'#233't'#233
          TabOrder = 5
          object Label1: TLabel
            Left = 24
            Top = 18
            Width = 140
            Height = 15
            Caption = 'D'#233'signation de la soci'#233't'#233' : '
          end
          object SpeedButton2: TSpeedButton
            Left = 24
            Top = 58
            Width = 121
            Height = 31
            Caption = 'D'#233'tails'
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 244
            Top = 13
            Width = 218
            Height = 23
            TabOrder = 0
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 764
        Width = 798
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 779
        object SpeedButton4: TSpeedButton
          AlignWithMargins = True
          Left = 640
          Top = 3
          Width = 155
          Height = 35
          Cursor = crHandPoint
          Align = alRight
          Caption = 'annuler'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 624
          ExplicitTop = 0
          ExplicitHeight = 41
        end
        object SpeedButton5: TSpeedButton
          AlignWithMargins = True
          Left = 491
          Top = 3
          Width = 143
          Height = 35
          Cursor = crHandPoint
          Align = alRight
          Caption = 'annuler'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 472
        end
      end
    end
  end
end
