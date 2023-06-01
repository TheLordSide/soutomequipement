object F_facture: TF_facture
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Enregistrer une facture'
  ClientHeight = 805
  ClientWidth = 988
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
    Width = 988
    Height = 805
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 1058
    object SplitView1: TSplitView
      Left = 0
      Top = 0
      Width = 200
      Height = 805
      Color = clWhite
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        StyleName = 'Windows'
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
        StyleName = 'Windows'
      end
    end
    object FactureProforma: TPanel
      Left = 200
      Top = 0
      Width = 788
      Height = 805
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 858
      object CategoryPanelGroup1: TCategoryPanelGroup
        Left = 0
        Top = 0
        Width = 788
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
        HeaderStyle = hsThemed
        TabOrder = 0
        StyleName = 'Windows'
        ExplicitWidth = 858
        object CategoryPanel6: TCategoryPanel
          Top = 1294
          Height = 300
          Caption = 'Facturation'
          Color = clWhite
          TabOrder = 0
          object SpeedButton7: TSpeedButton
            Left = 24
            Top = 230
            Width = 79
            Height = 41
            Caption = 'valider'
            OnClick = SpeedButton7Click
          end
          object SpeedButton8: TSpeedButton
            Left = 130
            Top = 230
            Width = 79
            Height = 41
            Caption = 'effacer'
          end
          object Desinom: TEdit
            Left = 24
            Top = 24
            Width = 185
            Height = 23
            TabOrder = 0
            TextHint = 'D'#233'signation '
          end
          object Qte: TEdit
            Left = 24
            Top = 64
            Width = 185
            Height = 23
            TabOrder = 1
            TextHint = 'Quantit'#233
          end
          object Pu: TEdit
            Left = 24
            Top = 104
            Width = 185
            Height = 23
            TabOrder = 2
            TextHint = 'Prix unitaire'
          end
          object total: TEdit
            Left = 24
            Top = 144
            Width = 185
            Height = 23
            TabOrder = 3
            TextHint = 'Total'
          end
          object CRDBGrid2: TCRDBGrid
            Left = 247
            Top = 24
            Width = 498
            Height = 247
            BorderStyle = bsNone
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 4
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
        object CategoryPanel4: TCategoryPanel
          Top = 1094
          Caption = 'Activit'#233's r'#233'alis'#233'es sur le v'#233'hicule'
          Color = clWhite
          TabOrder = 1
          object SpeedButton3: TSpeedButton
            Left = 23
            Top = 131
            Width = 79
            Height = 38
            Caption = 'Valider'
            OnClick = SpeedButton3Click
          end
          object SpeedButton6: TSpeedButton
            Left = 129
            Top = 131
            Width = 79
            Height = 38
            Caption = 'effacer'
          end
          object travaux: TEdit
            Left = 24
            Top = 16
            Width = 185
            Height = 23
            TabOrder = 0
            TextHint = 'Designation'
          end
          object CRDBGrid1: TCRDBGrid
            Left = 246
            Top = 16
            Width = 498
            Height = 153
            BorderStyle = bsNone
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
        object CategoryPanel5: TCategoryPanel
          Top = 830
          Height = 264
          Caption = 'D'#233'tails sur le v'#233'hicule'
          Color = clWhite
          TabOrder = 2
          object SpeedButton2: TSpeedButton
            Left = 23
            Top = 176
            Width = 80
            Height = 38
            Caption = 'valider'
            OnClick = SpeedButton2Click
          end
          object SpeedButton9: TSpeedButton
            Left = 130
            Top = 176
            Width = 78
            Height = 38
            Caption = 'effacer'
          end
          object Numchassi: TEdit
            Left = 24
            Top = 14
            Width = 185
            Height = 23
            BevelOuter = bvNone
            TabOrder = 0
            TextHint = 'Numero de chassi'
          end
          object Km: TEdit
            Left = 23
            Top = 54
            Width = 185
            Height = 23
            BevelOuter = bvNone
            TabOrder = 1
            TextHint = 'Kilom'#233'trage'
          end
          object Marque: TEdit
            Left = 24
            Top = 97
            Width = 185
            Height = 23
            BevelOuter = bvNone
            TabOrder = 2
            TextHint = 'Marque'
          end
          object Immatriculation: TEdit
            Left = 24
            Top = 135
            Width = 185
            Height = 23
            TabOrder = 3
            Text = 'Immatriculation'
            TextHint = 'Immatriculation'
          end
          object CRDBGrid3: TCRDBGrid
            Left = 247
            Top = 14
            Width = 498
            Height = 200
            BorderStyle = bsNone
            DataSource = DM.T_TEMPVOITUREDS
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 4
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
        object CategoryPanel3: TCategoryPanel
          Top = 530
          Height = 300
          Caption = 'D'#233'tails sur le client'
          Color = clWhite
          TabOrder = 3
          object Panel_nouveau_client: TPanel
            AlignWithMargins = True
            Left = 194
            Top = 3
            Width = 568
            Height = 268
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitWidth = 638
            object Label10: TLabel
              Left = 24
              Top = 204
              Width = 84
              Height = 15
              Caption = 'Email du client :'
            end
            object Label6: TLabel
              Left = 24
              Top = 159
              Width = 171
              Height = 15
              Caption = 'Num'#233'ro de t'#233'l'#233'phone du client :'
            end
            object Label7: TLabel
              Left = 24
              Top = 114
              Width = 99
              Height = 15
              Caption = 'Adresse du client : '
            end
            object Label8: TLabel
              Left = 24
              Top = 66
              Width = 129
              Height = 15
              Caption = 'Num'#233'ro fiscal du client :'
            end
            object Label9: TLabel
              Left = 24
              Top = 24
              Width = 82
              Height = 15
              Caption = 'Nom du client :'
            end
            object NomClient: TEdit
              Left = 245
              Top = 21
              Width = 217
              Height = 23
              BevelOuter = bvNone
              TabOrder = 0
            end
            object NumeroFiscalClient: TEdit
              Left = 245
              Top = 65
              Width = 217
              Height = 23
              BevelOuter = bvNone
              ImeName = 'French'
              TabOrder = 1
            end
            object AdresseClient: TEdit
              Left = 245
              Top = 111
              Width = 217
              Height = 23
              BevelOuter = bvNone
              TabOrder = 2
            end
            object TelClient: TEdit
              Left = 245
              Top = 156
              Width = 217
              Height = 23
              ImeName = 'French'
              TabOrder = 3
            end
            object EMailClient: TEdit
              Left = 245
              Top = 201
              Width = 217
              Height = 23
              TabOrder = 4
            end
          end
          object Panel_client_existant: TPanel
            AlignWithMargins = True
            Left = 194
            Top = 3
            Width = 568
            Height = 268
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 2
            ExplicitWidth = 638
            object ClientSelection: TDBLookupComboBox
              Left = 52
              Top = 20
              Width = 215
              Height = 23
              BevelInner = bvNone
              BevelOuter = bvNone
              KeyField = 'Idclient'
              ListField = 'Nomclient'
              ListSource = DM.Q_CLIENTDS
              TabOrder = 0
              OnCloseUp = ClientSelectionCloseUp
            end
            object GroupBox1: TGroupBox
              Left = 51
              Top = 64
              Width = 501
              Height = 202
              Caption = 'D'#233'tails sur le Client'
              TabOrder = 1
              object Label15: TLabel
                Left = 22
                Top = 29
                Width = 99
                Height = 15
                Caption = 'Nom et pr'#233'noms : '
              end
              object Label16: TLabel
                Left = 22
                Top = 64
                Width = 44
                Height = 15
                Caption = 'Adresse:'
              end
              object Label17: TLabel
                Left = 22
                Top = 135
                Width = 119
                Height = 15
                Caption = 'Num'#233'ro de t'#233'l'#233'phone:'
              end
              object Label18: TLabel
                Left = 22
                Top = 171
                Width = 38
                Height = 15
                Caption = 'Email : '
              end
              object Nom_holder: TLabel
                Left = 216
                Top = 29
                Width = 22
                Height = 15
                Caption = 'N/A'
                StyleName = 'Windows'
              end
              object Adresse_holder: TLabel
                Left = 215
                Top = 64
                Width = 22
                Height = 15
                Caption = 'N/A'
              end
              object TelHolder: TLabel
                Left = 216
                Top = 135
                Width = 22
                Height = 15
                Caption = 'N/A'
                StyleName = 'Windows'
              end
              object EmailHolder: TLabel
                Left = 216
                Top = 172
                Width = 22
                Height = 15
                Caption = 'N/A'
              end
              object Label19: TLabel
                Left = 22
                Top = 99
                Width = 76
                Height = 15
                Caption = 'Numero Fiscal'
              end
              object NumFholder: TLabel
                Left = 216
                Top = 99
                Width = 22
                Height = 15
                Caption = 'N/A'
              end
            end
          end
          object Panel3: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 185
            Height = 268
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Nouveau_Client: TRadioButton
              Left = 16
              Top = 24
              Width = 169
              Height = 17
              Caption = 'Nouveau Client'
              TabOrder = 0
              OnClick = Nouveau_ClientClick
            end
            object Client_Existant: TRadioButton
              Left = 16
              Top = 64
              Width = 169
              Height = 17
              Caption = 'Client Existant'
              TabOrder = 1
              OnClick = Client_ExistantClick
            end
          end
        end
        object CategoryPanel2: TCategoryPanel
          Top = 305
          Height = 225
          Caption = 'D'#233'tails de la facture'
          Color = clWhite
          DoubleBuffered = True
          ParentDoubleBuffered = False
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
          object Numfacture: TEdit
            Left = 245
            Top = 24
            Width = 217
            Height = 23
            BevelOuter = bvNone
            TabOrder = 0
          end
          object Reffacture: TEdit
            Left = 245
            Top = 68
            Width = 217
            Height = 23
            BevelOuter = bvNone
            TabOrder = 1
          end
          object BCN: TEdit
            Left = 244
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
          Height = 305
          Caption = 'D'#233'tails de la soci'#233't'#233
          Color = clWhite
          TabOrder = 5
          object Label1: TLabel
            Left = 24
            Top = 18
            Width = 140
            Height = 15
            Caption = 'D'#233'signation de la soci'#233't'#233' : '
          end
          object SocieteSelection: TDBLookupComboBox
            Left = 246
            Top = 20
            Width = 218
            Height = 23
            KeyField = 'idsociete'
            ListField = 'nom'
            ListSource = DM.Q_SOCIETEDS
            TabOrder = 0
            OnCloseUp = SocieteSelectionCloseUp
          end
          object GroupBox2: TGroupBox
            Left = 245
            Top = 49
            Width = 501
            Height = 223
            Caption = 'Details sur la soci'#233't'#233
            TabOrder = 1
            object Label20: TLabel
              Left = 20
              Top = 27
              Width = 58
              Height = 15
              Caption = 'numfiscal :'
            end
            object Label21: TLabel
              Left = 20
              Top = 60
              Width = 69
              Height = 15
              Caption = 'D'#233'signation :'
            end
            object Label22: TLabel
              Left = 20
              Top = 96
              Width = 40
              Height = 15
              Caption = 'RCCM :'
            end
            object Label23: TLabel
              Left = 20
              Top = 129
              Width = 47
              Height = 15
              Caption = 'Adresse :'
            end
            object Label24: TLabel
              Left = 20
              Top = 162
              Width = 60
              Height = 15
              Caption = 'T'#233'l'#233'phone :'
            end
            object Label25: TLabel
              Left = 20
              Top = 192
              Width = 35
              Height = 15
              Caption = 'Email :'
            end
            object NumFiscalHolder: TLabel
              Left = 213
              Top = 27
              Width = 22
              Height = 15
              Caption = 'N/A'
            end
            object DesiHolder: TLabel
              Left = 213
              Top = 60
              Width = 22
              Height = 15
              Caption = 'N/A'
            end
            object RCCMHolder: TLabel
              Left = 213
              Top = 96
              Width = 22
              Height = 15
              Caption = 'N/A'
            end
            object AdresseHolder: TLabel
              Left = 213
              Top = 129
              Width = 22
              Height = 15
              Caption = 'N/A'
            end
            object TelSHolder: TLabel
              Left = 213
              Top = 162
              Width = 22
              Height = 15
              Caption = 'N/A'
            end
            object EmailSHolder: TLabel
              Left = 213
              Top = 192
              Width = 22
              Height = 15
              Caption = 'N/A'
            end
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 764
        Width = 788
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 858
        object SpeedButton4: TSpeedButton
          AlignWithMargins = True
          Left = 647
          Top = 3
          Width = 138
          Height = 35
          Cursor = crHandPoint
          Align = alRight
          Caption = 'enregistrer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          StyleName = 'Windows'
          OnClick = SpeedButton4Click
          ExplicitLeft = 657
          ExplicitTop = 6
        end
        object SpeedButton5: TSpeedButton
          AlignWithMargins = True
          Left = 498
          Top = 3
          Width = 143
          Height = 35
          Cursor = crHandPoint
          Align = alRight
          Caption = 'annuler'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          StyleName = 'Windows'
          ExplicitTop = 6
        end
      end
    end
  end
end
