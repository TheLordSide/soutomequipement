object F_societe: TF_societe
  Left = 0
  Top = 0
  Caption = 'Administrez les societ'#233's'
  ClientHeight = 799
  ClientWidth = 1108
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleName = 'Windows'
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 799
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 1100
    object PageControl1: TPageControl
      Left = 0
      Top = 121
      Width = 1108
      Height = 678
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      StyleName = 'Windows'
      ExplicitWidth = 1100
      object TabSheet1: TTabSheet
        Caption = 'Nouvelle soci'#233't'#233
        object GridPanel1: TGridPanel
          Left = 0
          Top = 0
          Width = 1100
          Height = 635
          Align = alClient
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 25.000000000000000000
            end
            item
              Value = 50.034867177457620000
            end
            item
              Value = 24.965132822542390000
            end>
          ControlCollection = <
            item
              Column = 1
              Control = CardPanel1
              Row = 0
              RowSpan = 3
            end>
          RowCollection = <
            item
              Value = 33.333333333333300000
            end
            item
              Value = 33.333333333333300000
            end
            item
              Value = 33.333333333333400000
            end
            item
              SizeStyle = ssAuto
            end>
          TabOrder = 0
          ExplicitWidth = 1092
          object CardPanel1: TCardPanel
            AlignWithMargins = True
            Left = 278
            Top = 3
            Width = 544
            Height = 629
            Align = alClient
            ActiveCard = Card1
            BevelKind = bkFlat
            BevelOuter = bvNone
            Caption = 'CardPanel1'
            TabOrder = 0
            ExplicitLeft = 276
            ExplicitWidth = 540
            object Card1: TCard
              Left = 0
              Top = 0
              Width = 540
              Height = 625
              Caption = 'Card1'
              CardIndex = 0
              TabOrder = 0
              ExplicitLeft = -2
              ExplicitWidth = 536
              object email: TEdit
                AlignWithMargins = True
                Left = 35
                Top = 315
                Width = 470
                Height = 36
                Margins.Left = 35
                Margins.Top = 20
                Margins.Right = 35
                Align = alTop
                ImeName = 'French'
                TabOrder = 5
                TextHint = 'Entrez l'#39'email'
                ExplicitTop = 516
                ExplicitWidth = 466
              end
              object tel: TEdit
                AlignWithMargins = True
                Left = 35
                Top = 197
                Width = 470
                Height = 36
                Margins.Left = 35
                Margins.Top = 20
                Margins.Right = 35
                Align = alTop
                ImeName = 'French'
                TabOrder = 3
                TextHint = 'Entrez le num'#233'ro de t'#233'l'#233'phone'
                ExplicitTop = 398
                ExplicitWidth = 466
              end
              object adresse: TEdit
                AlignWithMargins = True
                Left = 35
                Top = 256
                Width = 470
                Height = 36
                Margins.Left = 35
                Margins.Top = 20
                Margins.Right = 35
                Align = alTop
                ImeName = 'French'
                TabOrder = 4
                TextHint = 'Entrez l'#39'adresse'
                ExplicitTop = 457
                ExplicitWidth = 466
              end
              object NumFiscal: TEdit
                AlignWithMargins = True
                Left = 35
                Top = 20
                Width = 470
                Height = 36
                Margins.Left = 35
                Margins.Top = 20
                Margins.Right = 35
                Align = alTop
                ImeName = 'French'
                TabOrder = 0
                TextHint = 'Entrez le num'#233'ro fiscal'
                StyleName = 'Windows'
                ExplicitTop = 221
                ExplicitWidth = 466
              end
              object Designation: TEdit
                AlignWithMargins = True
                Left = 35
                Top = 138
                Width = 470
                Height = 36
                Margins.Left = 35
                Margins.Top = 20
                Margins.Right = 35
                Align = alTop
                ImeName = 'French'
                TabOrder = 2
                TextHint = 'Entrez la d'#233'signation'
                ExplicitTop = 339
                ExplicitWidth = 466
              end
              object RCCM: TEdit
                AlignWithMargins = True
                Left = 35
                Top = 79
                Width = 470
                Height = 36
                Margins.Left = 35
                Margins.Top = 20
                Margins.Right = 35
                Align = alTop
                ImeName = 'French'
                TabOrder = 1
                TextHint = 'Entrez le num'#233'ro RCCM'#9
                ExplicitTop = 280
                ExplicitWidth = 466
              end
              object GridPanel2: TGridPanel
                Left = 0
                Top = 571
                Width = 540
                Height = 54
                Align = alBottom
                BevelOuter = bvNone
                ColumnCollection = <
                  item
                    Value = 50.000000000000000000
                  end
                  item
                    Value = 50.000000000000000000
                  end>
                ControlCollection = <
                  item
                    Column = 0
                    Control = SpeedButton3
                    Row = 0
                  end
                  item
                    Column = 1
                    Control = SpeedButton4
                    Row = 0
                  end>
                RowCollection = <
                  item
                    Value = 100.000000000000000000
                  end>
                TabOrder = 6
                ExplicitWidth = 536
                object SpeedButton3: TSpeedButton
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 264
                  Height = 48
                  Align = alClient
                  Caption = 'enregistrer'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  OnClick = SpeedButton3Click
                  ExplicitLeft = 224
                  ExplicitTop = 8
                  ExplicitWidth = 23
                  ExplicitHeight = 22
                end
                object SpeedButton4: TSpeedButton
                  AlignWithMargins = True
                  Left = 273
                  Top = 3
                  Width = 264
                  Height = 48
                  Align = alClient
                  Caption = 'annuler'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitLeft = 235
                  ExplicitTop = 0
                  ExplicitWidth = 226
                  ExplicitHeight = 38
                end
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Liste des soci'#233't'#233's'
        Highlighted = True
        ImageIndex = 1
        object GridPanel3: TGridPanel
          Left = 225
          Top = 0
          Width = 875
          Height = 635
          Align = alClient
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 100.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = CRDBGrid1
              Row = 0
              RowSpan = 2
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 0
          ExplicitWidth = 867
          object CRDBGrid1: TCRDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 869
            Height = 629
            Align = alClient
            DataSource = DM.UniDataSource1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -20
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 225
          Height = 635
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object SearchBox1: TSearchBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 219
            Height = 36
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            TextHint = 'Rechercher par nom'
            OnChange = SearchBox1Change
          end
        end
      end
    end
    object RelativePanel1: TRelativePanel
      Left = 0
      Top = 0
      Width = 1108
      Height = 121
      ControlCollection = <>
      Align = alTop
      BevelOuter = bvNone
      Caption = 'ADMINSTRATEUR - SOCIETES'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitTop = -16
      ExplicitWidth = 1100
    end
  end
end
