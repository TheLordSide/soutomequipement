object F_role: TF_role
  Left = 0
  Top = 0
  Caption = 'F_role'
  ClientHeight = 772
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleName = 'Windows'
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 772
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object GridPanel1: TGridPanel
      Left = 0
      Top = 65
      Width = 513
      Height = 707
      Align = alClient
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = RelativePanel1
          Row = 0
        end
        item
          Column = 0
          Control = CRDBGrid1
          Row = 1
        end>
      RowCollection = <
        item
          Value = 25.000000000000000000
        end
        item
          Value = 75.000000000000000000
        end
        item
          SizeStyle = ssAuto
        end>
      TabOrder = 0
      object RelativePanel1: TRelativePanel
        Left = 0
        Top = 0
        Width = 513
        Height = 177
        ControlCollection = <
          item
            Control = rolename
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = True
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = True
          end
          item
            Control = SpeedButton1
            AlignBottomWithPanel = True
            AlignHorizontalCenterWithPanel = True
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end>
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          513
          177)
        object rolename: TEdit
          Left = 77
          Top = 70
          Width = 359
          Height = 36
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImeName = 'French'
          ParentFont = False
          TabOrder = 0
          TextHint = 'Enregistrer un role'
        end
        object SpeedButton1: TSpeedButton
          Left = 208
          Top = 144
          Width = 97
          Height = 33
          Anchors = []
          Caption = 'Enregistrer'
          OnClick = SpeedButton1Click
        end
      end
      object CRDBGrid1: TCRDBGrid
        Left = 0
        Top = 177
        Width = 513
        Height = 530
        OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeStretch, dgeSummary]
        Align = alClient
        BorderStyle = bsNone
        DataSource = DM.UniDataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object RelativePanel2: TRelativePanel
      Left = 0
      Top = 0
      Width = 513
      Height = 65
      ControlCollection = <>
      Align = alTop
      BevelOuter = bvNone
      Caption = 'GESTION DES ROLES'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 409
    object Supprimerlerole1: TMenuItem
      Caption = 'Supprimer le role'
      OnClick = Supprimerlerole1Click
    end
    object Modifierlerole1: TMenuItem
      Caption = 'Modifier le role'
    end
  end
end
