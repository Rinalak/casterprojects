object ArchivariusMainForm: TArchivariusMainForm
  Left = 0
  Top = 0
  BorderWidth = 6
  Caption = #1040#1056#1052' '#1072#1088#1093#1080#1074#1072#1088#1080#1091#1089#1072
  ClientHeight = 550
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    AlignWithMargins = True
    Left = 0
    Top = 531
    Width = 772
    Height = 19
    Margins.Left = 0
    Margins.Top = 2
    Margins.Right = 0
    Margins.Bottom = 0
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 25
    Width = 772
    Height = 504
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 2
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    object TabSheet4: TTabSheet
      AlignWithMargins = True
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = #1057#1086#1076#1077#1088#1078#1080#1084#1086#1077' '#1072#1088#1093#1080#1074#1072
      ImageIndex = 3
      object cxSplitter1: TcxSplitter
        AlignWithMargins = True
        Left = 6
        Top = 308
        Width = 752
        Height = 8
        Margins.Left = 6
        Margins.Top = 0
        Margins.Right = 6
        Margins.Bottom = 0
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = cxGroupBox1
      end
      object cxGroupBox1: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 316
        Margins.Top = 0
        Margins.Right = 5
        Align = alBottom
        Caption = ' '#1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1074' '#1082#1086#1088#1086#1073#1077' '
        TabOrder = 1
        Height = 157
        Width = 756
        object cxGrid1: TcxGrid
          AlignWithMargins = True
          Left = 8
          Top = 43
          Width = 740
          Height = 106
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1Column4: TcxGridDBColumn
              Caption = #8470' '#1087'/'#1087
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 105
            end
            object cxGrid1DBTableView1Column2: TcxGridDBColumn
              Caption = #1058#1080#1087
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 105
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = #1053#1086#1084#1077#1088
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 105
            end
            object cxGrid1DBTableView1Column3: TcxGridDBColumn
              Caption = #1040#1088#1093#1080#1074#1072#1090#1086#1088
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 105
            end
            object cxGrid1DBTableView1Column5: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1072#1088#1093#1080#1074#1072#1094#1080#1080
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 105
            end
            object cxGrid1DBTableView1Column6: TcxGridDBColumn
              Caption = #1057#1090#1072#1090#1091#1089
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 105
            end
            object cxGrid1DBTableView1Column7: TcxGridDBColumn
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 105
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object ToolBar2: TToolBar
          AlignWithMargins = True
          Left = 8
          Top = 18
          Width = 740
          Height = 22
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Caption = 'ToolBar1'
          Images = ImageList1
          GradientDirection = gdHorizontal
          GradientDrawingOptions = [gdoHotTrack]
          TabOrder = 1
          Transparent = True
          object ToolButton3: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
            Caption = 'ToolButton7'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton9: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object ToolButton12: TToolButton
            Left = 31
            Top = 0
            Cursor = crHandPoint
            Hint = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1074' '#1082#1086#1088#1086#1073#1077
            Caption = 'ToolButton5'
            ImageIndex = 16
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton14: TToolButton
            Left = 54
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object ToolButton15: TToolButton
            Left = 62
            Top = 0
            Cursor = crHandPoint
            Hint = #1055#1077#1095#1072#1090#1100
            Caption = 'ToolButton6'
            ImageIndex = 4
            ParentShowHint = False
            ShowHint = True
            Style = tbsDropDown
          end
          object ToolButton16: TToolButton
            Left = 100
            Top = 0
            Cursor = crHandPoint
            Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
            Caption = 'ToolButton8'
            ImageIndex = 6
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
      object cxGroupBox2: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        Caption = ' '#1050#1086#1088#1086#1073#1072' '
        TabOrder = 2
        Height = 308
        Width = 756
        object cxGrid2: TcxGrid
          AlignWithMargins = True
          Left = 8
          Top = 43
          Width = 740
          Height = 257
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
            OptionsView.GroupByBox = False
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBTableView1Column2: TcxGridDBColumn
              Caption = #1050#1086#1084#1087#1072#1085#1080#1103
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBTableView1Column3: TcxGridDBColumn
              Caption = #1058#1080#1087
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBTableView1Column4: TcxGridDBColumn
              Caption = #1043#1086#1076
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBTableView1Column5: TcxGridDBColumn
              Caption = #1053#1086#1084#1077#1088
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBTableView1Column6: TcxGridDBColumn
              Caption = #1057#1090#1072#1090#1091#1089
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object ToolBar1: TToolBar
          AlignWithMargins = True
          Left = 8
          Top = 18
          Width = 740
          Height = 22
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Caption = 'ToolBar1'
          Images = ImageList1
          GradientDirection = gdHorizontal
          GradientDrawingOptions = [gdoHotTrack]
          TabOrder = 1
          Transparent = True
          object ToolButton7: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
            Caption = 'ToolButton7'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton4: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object ToolButton2: TToolButton
            Left = 31
            Top = 0
            Cursor = crHandPoint
            Hint = #1055#1086#1080#1089#1082' '#1074' '#1072#1088#1093#1080#1074#1077
            Caption = 'ToolButton2'
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton13: TToolButton
            Left = 54
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object ToolButton1: TToolButton
            Left = 62
            Top = 0
            Cursor = crHandPoint
            Hint = #1055#1088#1080#1105#1084#1082#1072' '#1082#1086#1088#1086#1073#1086#1074' '#1074' '#1072#1088#1093#1080#1074
            Caption = 'ToolButton1'
            ImageIndex = 0
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton5: TToolButton
            Left = 85
            Top = 0
            Cursor = crHandPoint
            Hint = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103' '#1082#1086#1088#1086#1073#1086#1074
            Caption = 'ToolButton5'
            ImageIndex = 16
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton11: TToolButton
            Left = 108
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object ToolButton6: TToolButton
            Left = 116
            Top = 0
            Cursor = crHandPoint
            Hint = #1055#1077#1095#1072#1090#1100
            Caption = 'ToolButton6'
            ImageIndex = 4
            ParentShowHint = False
            ShowHint = True
            Style = tbsDropDown
          end
          object ToolButton8: TToolButton
            Left = 154
            Top = 0
            Cursor = crHandPoint
            Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
            Caption = 'ToolButton8'
            ImageIndex = 6
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1047#1072#1087#1088#1086#1089#1099' '#1085#1072' '#1074#1099#1076#1072#1095#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      TabVisible = False
      object cxGroupBox3: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        Caption = ' '#1047#1072#1087#1088#1086#1089#1099' '
        TabOrder = 0
        Height = 311
        Width = 756
        object cxGrid3: TcxGrid
          AlignWithMargins = True
          Left = 8
          Top = 43
          Width = 740
          Height = 260
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
            OptionsView.GroupByBox = False
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = #1053#1086#1084#1077#1088
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = #1057#1090#1072#1090#1091#1089
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = #1048#1085#1080#1094#1080#1072#1090#1086#1088
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object ToolBar4: TToolBar
          AlignWithMargins = True
          Left = 8
          Top = 18
          Width = 740
          Height = 22
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Caption = 'ToolBar1'
          Images = ImageList1
          GradientDirection = gdHorizontal
          GradientDrawingOptions = [gdoHotTrack]
          TabOrder = 1
          Transparent = True
          object ToolButton20: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
            Caption = 'ToolButton7'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton24: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object ToolButton25: TToolButton
            Left = 31
            Top = 0
            Cursor = crHandPoint
            Hint = #1055#1086#1080#1089#1082' '#1074' '#1079#1072#1087#1088#1086#1089#1072#1093
            Caption = 'ToolButton2'
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton26: TToolButton
            Left = 54
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object ToolButton28: TToolButton
            Left = 62
            Top = 0
            Hint = #1042#1099#1076#1072#1095#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1087#1086' '#1079#1072#1087#1088#1086#1089#1091
            ImageIndex = 22
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton27: TToolButton
            Left = 85
            Top = 0
            Cursor = crHandPoint
            Hint = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1079#1072#1087#1088#1086#1089#1072
            Caption = 'ToolButton1'
            ImageIndex = 21
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton29: TToolButton
            Left = 108
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object ToolButton30: TToolButton
            Left = 116
            Top = 0
            Cursor = crHandPoint
            Hint = #1055#1077#1095#1072#1090#1100
            Caption = 'ToolButton6'
            ImageIndex = 4
            ParentShowHint = False
            ShowHint = True
            Style = tbsDropDown
          end
          object ToolButton31: TToolButton
            Left = 154
            Top = 0
            Cursor = crHandPoint
            Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
            Caption = 'ToolButton8'
            ImageIndex = 6
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
      object cxSplitter2: TcxSplitter
        AlignWithMargins = True
        Left = 6
        Top = 311
        Width = 752
        Height = 8
        Margins.Left = 6
        Margins.Top = 0
        Margins.Right = 6
        Margins.Bottom = 0
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = cxPageControl2
      end
      object cxPageControl2: TcxPageControl
        AlignWithMargins = True
        Left = 3
        Top = 322
        Width = 757
        Height = 151
        Margins.Right = 4
        Align = alBottom
        TabOrder = 2
        Properties.ActivePage = cxTabSheet5
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 147
        ClientRectLeft = 4
        ClientRectRight = 753
        ClientRectTop = 24
        object cxTabSheet5: TcxTabSheet
          Caption = #1050#1086#1088#1086#1073#1072' '#1074' '#1079#1072#1087#1088#1086#1089#1077
          ImageIndex = 1
          object ToolBar10: TToolBar
            AlignWithMargins = True
            Left = 6
            Top = 0
            Width = 737
            Height = 22
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Caption = 'ToolBar1'
            Images = ImageList1
            GradientDirection = gdHorizontal
            GradientDrawingOptions = [gdoHotTrack]
            TabOrder = 0
            Transparent = True
            object ToolButton60: TToolButton
              Left = 0
              Top = 0
              Cursor = crHandPoint
              Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
              Caption = 'ToolButton7'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton61: TToolButton
              Left = 23
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object ToolButton62: TToolButton
              Left = 31
              Top = 0
              Cursor = crHandPoint
              Hint = #1055#1077#1095#1072#1090#1100
              Caption = 'ToolButton6'
              ImageIndex = 4
              ParentShowHint = False
              ShowHint = True
              Style = tbsDropDown
            end
            object ToolButton63: TToolButton
              Left = 69
              Top = 0
              Cursor = crHandPoint
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
              Caption = 'ToolButton8'
              ImageIndex = 6
              ParentShowHint = False
              ShowHint = True
            end
          end
          object cxGrid9: TcxGrid
            AlignWithMargins = True
            Left = 6
            Top = 25
            Width = 737
            Height = 92
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 6
            Align = alClient
            TabOrder = 1
            object cxGridDBTableView8: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
              OptionsView.GroupByBox = False
              object cxGridDBColumn13: TcxGridDBColumn
                Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn38: TcxGridDBColumn
                Caption = #1050#1086#1084#1087#1072#1085#1080#1103
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn39: TcxGridDBColumn
                Caption = #1058#1080#1087
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn40: TcxGridDBColumn
                Caption = #1043#1086#1076
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn41: TcxGridDBColumn
                Caption = #1053#1086#1084#1077#1088
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn42: TcxGridDBColumn
                Caption = #1057#1090#1072#1090#1091#1089
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
            end
            object cxGridLevel8: TcxGridLevel
              GridView = cxGridDBTableView8
            end
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1074' '#1079#1072#1087#1088#1086#1089#1077
          ImageIndex = 2
          object ToolBar11: TToolBar
            AlignWithMargins = True
            Left = 6
            Top = 0
            Width = 737
            Height = 22
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Caption = 'ToolBar1'
            Images = ImageList1
            GradientDirection = gdHorizontal
            GradientDrawingOptions = [gdoHotTrack]
            TabOrder = 0
            Transparent = True
            object ToolButton64: TToolButton
              Left = 0
              Top = 0
              Cursor = crHandPoint
              Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
              Caption = 'ToolButton7'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton65: TToolButton
              Left = 23
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object ToolButton66: TToolButton
              Left = 31
              Top = 0
              Cursor = crHandPoint
              Hint = #1055#1077#1095#1072#1090#1100
              Caption = 'ToolButton6'
              ImageIndex = 4
              ParentShowHint = False
              ShowHint = True
              Style = tbsDropDown
            end
            object ToolButton67: TToolButton
              Left = 69
              Top = 0
              Cursor = crHandPoint
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
              Caption = 'ToolButton8'
              ImageIndex = 6
              ParentShowHint = False
              ShowHint = True
            end
          end
          object cxGrid10: TcxGrid
            AlignWithMargins = True
            Left = 6
            Top = 25
            Width = 737
            Height = 92
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 6
            Align = alClient
            TabOrder = 1
            object cxGridDBTableView9: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
              OptionsView.GroupByBox = False
              object cxGridDBColumn43: TcxGridDBColumn
                Caption = #8470' '#1087'/'#1087
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn44: TcxGridDBColumn
                Caption = #1058#1080#1087
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn45: TcxGridDBColumn
                Caption = #1053#1086#1084#1077#1088
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn46: TcxGridDBColumn
                Caption = #1040#1088#1093#1080#1074#1072#1090#1086#1088
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn47: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1072#1088#1093#1080#1074#1072#1094#1080#1080
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn48: TcxGridDBColumn
                Caption = #1057#1090#1072#1090#1091#1089
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn49: TcxGridDBColumn
                Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 108
              end
            end
            object cxGridLevel9: TcxGridLevel
              GridView = cxGridDBTableView9
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1047#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1086#1090#1073#1086#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      ImageIndex = 1
      TabVisible = False
      object cxGroupBox5: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        Caption = ' '#1047#1072#1076#1072#1085#1080#1103' '
        TabOrder = 0
        Height = 311
        Width = 756
        object cxGrid5: TcxGrid
          AlignWithMargins = True
          Left = 8
          Top = 43
          Width = 740
          Height = 260
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView4: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
            OptionsView.GroupByBox = False
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = #1053#1086#1084#1077#1088
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = #1057#1090#1072#1090#1091#1089
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn16: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn17: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 246
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBTableView4
          end
        end
        object ToolBar6: TToolBar
          AlignWithMargins = True
          Left = 8
          Top = 18
          Width = 740
          Height = 22
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Caption = 'ToolBar1'
          Images = ImageList1
          GradientDirection = gdHorizontal
          GradientDrawingOptions = [gdoHotTrack]
          TabOrder = 1
          Transparent = True
          object ToolButton34: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
            Caption = 'ToolButton7'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton35: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object ToolButton40: TToolButton
            Left = 31
            Top = 0
            Hint = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1086#1090#1073#1086#1088
            ImageIndex = 0
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton50: TToolButton
            Left = 54
            Top = 0
            Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1086#1090#1073#1086#1088
            Caption = 'ToolButton50'
            ImageIndex = 8
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton49: TToolButton
            Left = 77
            Top = 0
            Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1086#1090#1073#1086#1088
            Caption = 'ToolButton49'
            ImageIndex = 10
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton51: TToolButton
            Left = 100
            Top = 0
            Width = 8
            Caption = 'ToolButton51'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object ToolButton41: TToolButton
            Left = 108
            Top = 0
            Cursor = crHandPoint
            Hint = #1054#1090#1073#1086#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1089#1086#1075#1083#1072#1089#1085#1086' '#1079#1072#1076#1072#1085#1080#1103
            Caption = 'ToolButton1'
            ImageIndex = 23
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton42: TToolButton
            Left = 131
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object ToolButton36: TToolButton
            Left = 139
            Top = 0
            Cursor = crHandPoint
            Hint = #1055#1086#1080#1089#1082' '#1074' '#1079#1072#1076#1072#1085#1080#1103#1093' '#1085#1072' '#1086#1090#1073#1086#1088
            Caption = 'ToolButton2'
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton39: TToolButton
            Left = 162
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object ToolButton43: TToolButton
            Left = 170
            Top = 0
            Cursor = crHandPoint
            Hint = #1055#1077#1095#1072#1090#1100
            Caption = 'ToolButton6'
            ImageIndex = 4
            ParentShowHint = False
            ShowHint = True
            Style = tbsDropDown
          end
          object ToolButton44: TToolButton
            Left = 208
            Top = 0
            Cursor = crHandPoint
            Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
            Caption = 'ToolButton8'
            ImageIndex = 6
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
      object cxSplitter3: TcxSplitter
        AlignWithMargins = True
        Left = 6
        Top = 311
        Width = 752
        Height = 8
        Margins.Left = 6
        Margins.Top = 0
        Margins.Right = 6
        Margins.Bottom = 0
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = cxPageControl1
      end
      object cxPageControl1: TcxPageControl
        AlignWithMargins = True
        Left = 3
        Top = 322
        Width = 757
        Height = 151
        Margins.Right = 4
        Align = alBottom
        TabOrder = 2
        Properties.ActivePage = cxTabSheet4
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 147
        ClientRectLeft = 4
        ClientRectRight = 753
        ClientRectTop = 24
        object cxTabSheet4: TcxTabSheet
          Caption = #1047#1072#1087#1088#1086#1089#1099' '#1074' '#1079#1072#1076#1072#1085#1080#1080
          ImageIndex = 0
          object ToolBar13: TToolBar
            AlignWithMargins = True
            Left = 6
            Top = 0
            Width = 737
            Height = 22
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Caption = 'ToolBar1'
            Images = ImageList1
            GradientDirection = gdHorizontal
            GradientDrawingOptions = [gdoHotTrack]
            TabOrder = 0
            Transparent = True
            object ToolButton82: TToolButton
              Left = 0
              Top = 0
              Cursor = crHandPoint
              Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
              Caption = 'ToolButton7'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton83: TToolButton
              Left = 23
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object ToolButton84: TToolButton
              Left = 31
              Top = 0
              Cursor = crHandPoint
              Hint = #1055#1077#1095#1072#1090#1100
              Caption = 'ToolButton6'
              ImageIndex = 4
              ParentShowHint = False
              ShowHint = True
              Style = tbsDropDown
            end
            object ToolButton85: TToolButton
              Left = 69
              Top = 0
              Cursor = crHandPoint
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
              Caption = 'ToolButton8'
              ImageIndex = 6
              ParentShowHint = False
              ShowHint = True
            end
          end
          object cxGrid12: TcxGrid
            AlignWithMargins = True
            Left = 6
            Top = 25
            Width = 737
            Height = 92
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 6
            Align = alClient
            TabOrder = 1
            object cxGridDBTableView11: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
              OptionsView.GroupByBox = False
              object cxGridDBColumn12: TcxGridDBColumn
                Caption = #1053#1086#1084#1077#1088
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn50: TcxGridDBColumn
                Caption = #1057#1090#1072#1090#1091#1089
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn51: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn52: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn53: TcxGridDBColumn
                Caption = #1048#1085#1080#1094#1080#1072#1090#1086#1088
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn54: TcxGridDBColumn
                Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
            end
            object cxGridLevel11: TcxGridLevel
              GridView = cxGridDBTableView11
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = #1050#1086#1088#1086#1073#1072' '#1074' '#1079#1072#1076#1072#1085#1080#1080
          ImageIndex = 1
          object ToolBar9: TToolBar
            AlignWithMargins = True
            Left = 6
            Top = 0
            Width = 737
            Height = 22
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Caption = 'ToolBar1'
            Images = ImageList1
            GradientDirection = gdHorizontal
            GradientDrawingOptions = [gdoHotTrack]
            TabOrder = 0
            Transparent = True
            object ToolButton56: TToolButton
              Left = 0
              Top = 0
              Cursor = crHandPoint
              Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
              Caption = 'ToolButton7'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton57: TToolButton
              Left = 23
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object ToolButton58: TToolButton
              Left = 31
              Top = 0
              Cursor = crHandPoint
              Hint = #1055#1077#1095#1072#1090#1100
              Caption = 'ToolButton6'
              ImageIndex = 4
              ParentShowHint = False
              ShowHint = True
              Style = tbsDropDown
            end
            object ToolButton59: TToolButton
              Left = 69
              Top = 0
              Cursor = crHandPoint
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
              Caption = 'ToolButton8'
              ImageIndex = 6
              ParentShowHint = False
              ShowHint = True
            end
          end
          object cxGrid8: TcxGrid
            AlignWithMargins = True
            Left = 6
            Top = 25
            Width = 737
            Height = 92
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 6
            Align = alClient
            TabOrder = 1
            object cxGridDBTableView7: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
              OptionsView.GroupByBox = False
              object cxGridDBColumn26: TcxGridDBColumn
                Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn32: TcxGridDBColumn
                Caption = #1050#1086#1084#1087#1072#1085#1080#1103
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn33: TcxGridDBColumn
                Caption = #1058#1080#1087
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn34: TcxGridDBColumn
                Caption = #1043#1086#1076
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn35: TcxGridDBColumn
                Caption = #1053#1086#1084#1077#1088
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn36: TcxGridDBColumn
                Caption = #1057#1090#1072#1090#1091#1089
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
            end
            object cxGridLevel7: TcxGridLevel
              GridView = cxGridDBTableView7
            end
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1074' '#1079#1072#1076#1072#1085#1080#1080
          ImageIndex = 2
          object ToolBar8: TToolBar
            AlignWithMargins = True
            Left = 6
            Top = 0
            Width = 737
            Height = 22
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Caption = 'ToolBar1'
            Images = ImageList1
            GradientDirection = gdHorizontal
            GradientDrawingOptions = [gdoHotTrack]
            TabOrder = 0
            Transparent = True
            object ToolButton52: TToolButton
              Left = 0
              Top = 0
              Cursor = crHandPoint
              Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
              Caption = 'ToolButton7'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton53: TToolButton
              Left = 23
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object ToolButton54: TToolButton
              Left = 31
              Top = 0
              Cursor = crHandPoint
              Hint = #1055#1077#1095#1072#1090#1100
              Caption = 'ToolButton6'
              ImageIndex = 4
              ParentShowHint = False
              ShowHint = True
              Style = tbsDropDown
            end
            object ToolButton55: TToolButton
              Left = 69
              Top = 0
              Cursor = crHandPoint
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
              Caption = 'ToolButton8'
              ImageIndex = 6
              ParentShowHint = False
              ShowHint = True
            end
          end
          object cxGrid6: TcxGrid
            AlignWithMargins = True
            Left = 6
            Top = 25
            Width = 737
            Height = 92
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 6
            Align = alClient
            TabOrder = 1
            object cxGridDBTableView5: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
              OptionsView.GroupByBox = False
              object cxGridDBColumn20: TcxGridDBColumn
                Caption = #8470' '#1087'/'#1087
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn21: TcxGridDBColumn
                Caption = #1058#1080#1087
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn22: TcxGridDBColumn
                Caption = #1053#1086#1084#1077#1088
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn23: TcxGridDBColumn
                Caption = #1040#1088#1093#1080#1074#1072#1090#1086#1088
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn24: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1072#1088#1093#1080#1074#1072#1094#1080#1080
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn25: TcxGridDBColumn
                Caption = #1057#1090#1072#1090#1091#1089
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn37: TcxGridDBColumn
                Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 108
              end
            end
            object cxGridLevel5: TcxGridLevel
              GridView = cxGridDBTableView5
            end
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1042#1099#1076#1072#1085#1085#1099#1077
      ImageIndex = 4
      TabVisible = False
      object cxGroupBox4: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 0
        Margins.Top = 0
        Margins.Right = 5
        Align = alClient
        Caption = ' '#1044#1086#1082#1091#1084#1077#1085#1090#1099' '
        TabOrder = 0
        Height = 473
        Width = 756
        object ToolBar5: TToolBar
          AlignWithMargins = True
          Left = 8
          Top = 18
          Width = 740
          Height = 22
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Caption = 'ToolBar1'
          Images = ImageList1
          GradientDirection = gdHorizontal
          GradientDrawingOptions = [gdoHotTrack]
          TabOrder = 0
          Transparent = True
          object ToolButton32: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
            Caption = 'ToolButton7'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton33: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object ToolButton45: TToolButton
            Left = 31
            Top = 0
            Hint = #1055#1086#1080#1089#1082
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton46: TToolButton
            Left = 54
            Top = 0
            Width = 8
            Caption = 'ToolButton46'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object ToolButton37: TToolButton
            Left = 62
            Top = 0
            Cursor = crHandPoint
            Hint = #1042#1086#1079#1074#1088#1072#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1074' '#1072#1088#1093#1080#1074
            Caption = 'ToolButton1'
            ImageIndex = 22
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton68: TToolButton
            Left = 85
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object ToolButton69: TToolButton
            Left = 93
            Top = 0
            Cursor = crHandPoint
            Hint = #1055#1077#1095#1072#1090#1100
            Caption = 'ToolButton6'
            ImageIndex = 4
            ParentShowHint = False
            ShowHint = True
            Style = tbsDropDown
          end
          object ToolButton70: TToolButton
            Left = 131
            Top = 0
            Cursor = crHandPoint
            Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
            Caption = 'ToolButton8'
            ImageIndex = 6
            ParentShowHint = False
            ShowHint = True
          end
        end
        object cxGrid4: TcxGrid
          AlignWithMargins = True
          Left = 2
          Top = 43
          Width = 752
          Height = 425
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          object cxGridDBTableView3: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.NoDataToDisplayInfoText = '<'#1044#1072#1085#1085#1099#1077' '#1085#1077' '#1085#1072#1081#1076#1077#1085#1099'>'
            OptionsView.GroupByBox = False
            Bands = <
              item
                Caption = #1044#1086#1082#1091#1084#1077#1085#1090
                Width = 202
              end
              item
                Caption = #1050#1086#1088#1086#1073
                Width = 284
              end
              item
                Caption = #1047#1072#1087#1088#1086#1089
                Width = 264
              end
              item
                Caption = #1053#1086#1084#1077#1088
                Position.BandIndex = 2
                Position.ColIndex = 0
              end
              item
                Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080
                Position.BandIndex = 2
                Position.ColIndex = 2
                Width = 72
              end
              item
                Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
                Position.BandIndex = 0
                Position.ColIndex = 2
                Width = 74
              end
              item
                Caption = #1048#1085#1080#1094#1080#1072#1090#1086#1088
                Position.BandIndex = 2
                Position.ColIndex = 3
                Width = 61
              end
              item
                Caption = #1057#1090#1072#1090#1091#1089
                Position.BandIndex = 2
                Position.ColIndex = 1
              end
              item
                Caption = #1053#1086#1084#1077#1088
                Position.BandIndex = 1
                Position.ColIndex = 4
              end
              item
                Caption = #1050#1086#1084#1087#1072#1085#1080#1103
                Position.BandIndex = 1
                Position.ColIndex = 1
                Width = 55
              end
              item
                Caption = #1058#1080#1087
                Position.BandIndex = 1
                Position.ColIndex = 2
              end
              item
                Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
                Position.BandIndex = 1
                Position.ColIndex = 0
                Width = 63
              end
              item
                Caption = #1043#1086#1076
                Position.BandIndex = 1
                Position.ColIndex = 3
              end
              item
                Caption = #1053#1086#1084#1077#1088
                Position.BandIndex = 0
                Position.ColIndex = 0
              end
              item
                Caption = #1058#1080#1087
                Position.BandIndex = 0
                Position.ColIndex = 1
              end>
            object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGrid1DBBandedTableView1
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      ImageIndex = 2
      TabVisible = False
      object cxGroupBox6: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        Caption = ' '#1047#1072#1076#1072#1085#1080#1103' '
        TabOrder = 0
        Height = 311
        Width = 756
        object cxGrid11: TcxGrid
          AlignWithMargins = True
          Left = 8
          Top = 43
          Width = 740
          Height = 260
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView10: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
            OptionsView.GroupByBox = False
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = #1053#1086#1084#1077#1088
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = #1057#1090#1072#1090#1091#1089
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 123
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 246
            end
          end
          object cxGridLevel10: TcxGridLevel
            GridView = cxGridDBTableView10
          end
        end
        object ToolBar12: TToolBar
          AlignWithMargins = True
          Left = 8
          Top = 18
          Width = 740
          Height = 22
          Margins.Left = 6
          Margins.Top = 0
          Margins.Right = 6
          Caption = 'ToolBar1'
          Images = ImageList1
          GradientDirection = gdHorizontal
          GradientDrawingOptions = [gdoHotTrack]
          TabOrder = 1
          Transparent = True
          object ToolButton38: TToolButton
            Left = 0
            Top = 0
            Cursor = crHandPoint
            Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
            Caption = 'ToolButton7'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton71: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object ToolButton72: TToolButton
            Left = 31
            Top = 0
            Hint = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
            ImageIndex = 0
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton73: TToolButton
            Left = 54
            Top = 0
            Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
            Caption = 'ToolButton50'
            ImageIndex = 8
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton74: TToolButton
            Left = 77
            Top = 0
            Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
            Caption = 'ToolButton49'
            ImageIndex = 10
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton75: TToolButton
            Left = 100
            Top = 0
            Width = 8
            Caption = 'ToolButton51'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object ToolButton76: TToolButton
            Left = 108
            Top = 0
            Cursor = crHandPoint
            Hint = #1054#1090#1073#1086#1088' '#1082#1086#1088#1086#1073#1086#1074' '#1089#1086#1075#1083#1072#1089#1085#1086' '#1079#1072#1076#1072#1085#1080#1103
            Caption = 'ToolButton1'
            ImageIndex = 23
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton77: TToolButton
            Left = 131
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object ToolButton78: TToolButton
            Left = 139
            Top = 0
            Cursor = crHandPoint
            Hint = #1055#1086#1080#1089#1082' '#1074' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
            Caption = 'ToolButton2'
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton79: TToolButton
            Left = 162
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object ToolButton80: TToolButton
            Left = 170
            Top = 0
            Cursor = crHandPoint
            Hint = #1055#1077#1095#1072#1090#1100
            Caption = 'ToolButton6'
            ImageIndex = 4
            ParentShowHint = False
            ShowHint = True
            Style = tbsDropDown
          end
          object ToolButton81: TToolButton
            Left = 208
            Top = 0
            Cursor = crHandPoint
            Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
            Caption = 'ToolButton8'
            ImageIndex = 6
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
      object cxPageControl3: TcxPageControl
        AlignWithMargins = True
        Left = 3
        Top = 322
        Width = 757
        Height = 151
        Margins.Right = 4
        Align = alBottom
        TabOrder = 1
        Properties.ActivePage = cxTabSheet7
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 147
        ClientRectLeft = 4
        ClientRectRight = 753
        ClientRectTop = 24
        object cxTabSheet7: TcxTabSheet
          Caption = #1050#1086#1088#1086#1073#1072' '#1074' '#1079#1072#1076#1072#1085#1080#1080
          ImageIndex = 1
          object ToolBar14: TToolBar
            AlignWithMargins = True
            Left = 6
            Top = 0
            Width = 737
            Height = 22
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Caption = 'ToolBar1'
            Images = ImageList1
            GradientDirection = gdHorizontal
            GradientDrawingOptions = [gdoHotTrack]
            TabOrder = 0
            Transparent = True
            object ToolButton86: TToolButton
              Left = 0
              Top = 0
              Cursor = crHandPoint
              Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
              Caption = 'ToolButton7'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton87: TToolButton
              Left = 23
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object ToolButton88: TToolButton
              Left = 31
              Top = 0
              Cursor = crHandPoint
              Hint = #1055#1077#1095#1072#1090#1100
              Caption = 'ToolButton6'
              ImageIndex = 4
              ParentShowHint = False
              ShowHint = True
              Style = tbsDropDown
            end
            object ToolButton89: TToolButton
              Left = 69
              Top = 0
              Cursor = crHandPoint
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
              Caption = 'ToolButton8'
              ImageIndex = 6
              ParentShowHint = False
              ShowHint = True
            end
          end
          object cxGrid13: TcxGrid
            AlignWithMargins = True
            Left = 6
            Top = 25
            Width = 737
            Height = 92
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 6
            Align = alClient
            TabOrder = 1
            object cxGridDBTableView12: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
              OptionsView.GroupByBox = False
              object cxGridDBColumn55: TcxGridDBColumn
                Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn56: TcxGridDBColumn
                Caption = #1050#1086#1084#1087#1072#1085#1080#1103
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn57: TcxGridDBColumn
                Caption = #1058#1080#1087
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn58: TcxGridDBColumn
                Caption = #1043#1086#1076
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn59: TcxGridDBColumn
                Caption = #1053#1086#1084#1077#1088
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
              object cxGridDBColumn60: TcxGridDBColumn
                Caption = #1057#1090#1072#1090#1091#1089
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 122
              end
            end
            object cxGridLevel12: TcxGridLevel
              GridView = cxGridDBTableView12
            end
          end
        end
        object cxTabSheet8: TcxTabSheet
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1074' '#1079#1072#1076#1072#1085#1080#1080
          ImageIndex = 2
          object ToolBar15: TToolBar
            AlignWithMargins = True
            Left = 6
            Top = 0
            Width = 737
            Height = 22
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Caption = 'ToolBar1'
            Images = ImageList1
            GradientDirection = gdHorizontal
            GradientDrawingOptions = [gdoHotTrack]
            TabOrder = 0
            Transparent = True
            object ToolButton90: TToolButton
              Left = 0
              Top = 0
              Cursor = crHandPoint
              Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
              Caption = 'ToolButton7'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton91: TToolButton
              Left = 23
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object ToolButton92: TToolButton
              Left = 31
              Top = 0
              Cursor = crHandPoint
              Hint = #1055#1077#1095#1072#1090#1100
              Caption = 'ToolButton6'
              ImageIndex = 4
              ParentShowHint = False
              ShowHint = True
              Style = tbsDropDown
            end
            object ToolButton93: TToolButton
              Left = 69
              Top = 0
              Cursor = crHandPoint
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
              Caption = 'ToolButton8'
              ImageIndex = 6
              ParentShowHint = False
              ShowHint = True
            end
          end
          object cxGrid14: TcxGrid
            AlignWithMargins = True
            Left = 6
            Top = 25
            Width = 737
            Height = 92
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 6
            Align = alClient
            TabOrder = 1
            object cxGridDBTableView13: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
              OptionsView.GroupByBox = False
              object cxGridDBColumn61: TcxGridDBColumn
                Caption = #8470' '#1087'/'#1087
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn62: TcxGridDBColumn
                Caption = #1058#1080#1087
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn63: TcxGridDBColumn
                Caption = #1053#1086#1084#1077#1088
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn64: TcxGridDBColumn
                Caption = #1040#1088#1093#1080#1074#1072#1090#1086#1088
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn65: TcxGridDBColumn
                Caption = #1044#1072#1090#1072' '#1072#1088#1093#1080#1074#1072#1094#1080#1080
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn66: TcxGridDBColumn
                Caption = #1057#1090#1072#1090#1091#1089
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 104
              end
              object cxGridDBColumn67: TcxGridDBColumn
                Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 108
              end
            end
            object cxGridLevel13: TcxGridLevel
              GridView = cxGridDBTableView13
            end
          end
        end
      end
      object cxSplitter4: TcxSplitter
        AlignWithMargins = True
        Left = 6
        Top = 311
        Width = 752
        Height = 8
        Margins.Left = 6
        Margins.Top = 0
        Margins.Right = 6
        Margins.Bottom = 0
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = cxPageControl3
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1042#1099#1076#1072#1095#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      ImageIndex = 5
      object cxPageControl4: TcxPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 758
        Height = 470
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 466
        ClientRectLeft = 4
        ClientRectRight = 754
        ClientRectTop = 24
        object cxTabSheet10: TcxTabSheet
          Caption = #1047#1072#1087#1088#1086#1089#1099' '#1085#1072' '#1074#1099#1076#1072#1095#1091
          ImageIndex = 2
          object cxPageControl5: TcxPageControl
            AlignWithMargins = True
            Left = 3
            Top = 288
            Width = 743
            Height = 151
            Margins.Right = 4
            Align = alBottom
            TabOrder = 0
            Properties.ActivePage = cxTabSheet11
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 147
            ClientRectLeft = 4
            ClientRectRight = 739
            ClientRectTop = 24
            object cxTabSheet11: TcxTabSheet
              Caption = #1050#1086#1088#1086#1073#1072' '#1074' '#1079#1072#1087#1088#1086#1089#1077
              ImageIndex = 1
              object ToolBar16: TToolBar
                AlignWithMargins = True
                Left = 6
                Top = 0
                Width = 723
                Height = 22
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Caption = 'ToolBar1'
                Images = ImageList1
                GradientDirection = gdHorizontal
                GradientDrawingOptions = [gdoHotTrack]
                TabOrder = 0
                Transparent = True
                object ToolButton100: TToolButton
                  Left = 0
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
                  Caption = 'ToolButton7'
                  ImageIndex = 5
                  ParentShowHint = False
                  ShowHint = True
                end
                object ToolButton101: TToolButton
                  Left = 23
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton4'
                  ImageIndex = 3
                  Style = tbsSeparator
                end
                object ToolButton102: TToolButton
                  Left = 31
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1055#1077#1095#1072#1090#1100
                  Caption = 'ToolButton6'
                  ImageIndex = 4
                  ParentShowHint = False
                  ShowHint = True
                  Style = tbsDropDown
                end
                object ToolButton103: TToolButton
                  Left = 69
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
                  Caption = 'ToolButton8'
                  ImageIndex = 6
                  ParentShowHint = False
                  ShowHint = True
                end
              end
              object cxGrid16: TcxGrid
                AlignWithMargins = True
                Left = 6
                Top = 25
                Width = 723
                Height = 92
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Margins.Bottom = 6
                Align = alClient
                TabOrder = 1
                object cxGridDBTableView15: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
                  OptionsView.GroupByBox = False
                  object cxGridDBColumn18: TcxGridDBColumn
                    Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn27: TcxGridDBColumn
                    Caption = #1050#1086#1084#1087#1072#1085#1080#1103
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn28: TcxGridDBColumn
                    Caption = #1058#1080#1087
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn29: TcxGridDBColumn
                    Caption = #1043#1086#1076
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn30: TcxGridDBColumn
                    Caption = #1053#1086#1084#1077#1088
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn31: TcxGridDBColumn
                    Caption = #1057#1090#1072#1090#1091#1089
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                end
                object cxGridLevel15: TcxGridLevel
                  GridView = cxGridDBTableView15
                end
              end
            end
            object cxTabSheet12: TcxTabSheet
              Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1074' '#1079#1072#1087#1088#1086#1089#1077
              ImageIndex = 2
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object ToolBar17: TToolBar
                AlignWithMargins = True
                Left = 6
                Top = 0
                Width = 723
                Height = 22
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Caption = 'ToolBar1'
                Images = ImageList1
                GradientDirection = gdHorizontal
                GradientDrawingOptions = [gdoHotTrack]
                TabOrder = 0
                Transparent = True
                object ToolButton104: TToolButton
                  Left = 0
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
                  Caption = 'ToolButton7'
                  ImageIndex = 5
                  ParentShowHint = False
                  ShowHint = True
                end
                object ToolButton105: TToolButton
                  Left = 23
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton4'
                  ImageIndex = 3
                  Style = tbsSeparator
                end
                object ToolButton106: TToolButton
                  Left = 31
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1055#1077#1095#1072#1090#1100
                  Caption = 'ToolButton6'
                  ImageIndex = 4
                  ParentShowHint = False
                  ShowHint = True
                  Style = tbsDropDown
                end
                object ToolButton107: TToolButton
                  Left = 69
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
                  Caption = 'ToolButton8'
                  ImageIndex = 6
                  ParentShowHint = False
                  ShowHint = True
                end
              end
              object cxGrid17: TcxGrid
                AlignWithMargins = True
                Left = 6
                Top = 25
                Width = 723
                Height = 92
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Margins.Bottom = 6
                Align = alClient
                TabOrder = 1
                object cxGridDBTableView16: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
                  OptionsView.GroupByBox = False
                  object cxGridDBColumn68: TcxGridDBColumn
                    Caption = #8470' '#1087'/'#1087
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 102
                  end
                  object cxGridDBColumn69: TcxGridDBColumn
                    Caption = #1058#1080#1087
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 102
                  end
                  object cxGridDBColumn70: TcxGridDBColumn
                    Caption = #1053#1086#1084#1077#1088
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 102
                  end
                  object cxGridDBColumn71: TcxGridDBColumn
                    Caption = #1040#1088#1093#1080#1074#1072#1090#1086#1088
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 102
                  end
                  object cxGridDBColumn72: TcxGridDBColumn
                    Caption = #1044#1072#1090#1072' '#1072#1088#1093#1080#1074#1072#1094#1080#1080
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 102
                  end
                  object cxGridDBColumn73: TcxGridDBColumn
                    Caption = #1057#1090#1072#1090#1091#1089
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 102
                  end
                  object cxGridDBColumn74: TcxGridDBColumn
                    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 102
                  end
                end
                object cxGridLevel16: TcxGridLevel
                  GridView = cxGridDBTableView16
                end
              end
            end
          end
          object cxSplitter5: TcxSplitter
            AlignWithMargins = True
            Left = 6
            Top = 277
            Width = 738
            Height = 8
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 0
            HotZoneClassName = 'TcxMediaPlayer9Style'
            AlignSplitter = salBottom
            Control = cxPageControl5
          end
          object cxGroupBox7: TcxGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            Caption = ' '#1047#1072#1087#1088#1086#1089#1099' '
            TabOrder = 2
            Height = 277
            Width = 742
            object cxGrid18: TcxGrid
              AlignWithMargins = True
              Left = 8
              Top = 43
              Width = 726
              Height = 226
              Margins.Left = 6
              Margins.Top = 0
              Margins.Right = 6
              Margins.Bottom = 6
              Align = alClient
              TabOrder = 0
              object cxGridDBTableView17: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
                OptionsView.GroupByBox = False
                object cxGridDBColumn75: TcxGridDBColumn
                  Caption = #1053#1086#1084#1077#1088
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 120
                end
                object cxGridDBColumn76: TcxGridDBColumn
                  Caption = #1057#1090#1072#1090#1091#1089
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 120
                end
                object cxGridDBColumn77: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 120
                end
                object cxGridDBColumn78: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 120
                end
                object cxGridDBColumn79: TcxGridDBColumn
                  Caption = #1048#1085#1080#1094#1080#1072#1090#1086#1088
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 120
                end
                object cxGridDBColumn80: TcxGridDBColumn
                  Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
                  FooterAlignmentHorz = taCenter
                  GroupSummaryAlignment = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 120
                end
              end
              object cxGridLevel17: TcxGridLevel
                GridView = cxGridDBTableView17
              end
            end
            object ToolBar18: TToolBar
              AlignWithMargins = True
              Left = 8
              Top = 18
              Width = 726
              Height = 22
              Margins.Left = 6
              Margins.Top = 0
              Margins.Right = 6
              Caption = 'ToolBar1'
              Images = ImageList1
              GradientDirection = gdHorizontal
              GradientDrawingOptions = [gdoHotTrack]
              TabOrder = 1
              Transparent = True
              object ToolButton108: TToolButton
                Left = 0
                Top = 0
                Cursor = crHandPoint
                Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
                Caption = 'ToolButton7'
                ImageIndex = 5
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton109: TToolButton
                Left = 23
                Top = 0
                Width = 8
                Caption = 'ToolButton4'
                ImageIndex = 3
                Style = tbsSeparator
              end
              object ToolButton110: TToolButton
                Left = 31
                Top = 0
                Cursor = crHandPoint
                Hint = #1055#1086#1080#1089#1082' '#1074' '#1079#1072#1087#1088#1086#1089#1072#1093
                Caption = 'ToolButton2'
                ImageIndex = 1
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton111: TToolButton
                Left = 54
                Top = 0
                Width = 8
                Caption = 'ToolButton13'
                ImageIndex = 7
                Style = tbsSeparator
              end
              object ToolButton112: TToolButton
                Left = 62
                Top = 0
                Hint = #1042#1099#1076#1072#1095#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1087#1086' '#1079#1072#1087#1088#1086#1089#1091
                ImageIndex = 22
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton113: TToolButton
                Left = 85
                Top = 0
                Cursor = crHandPoint
                Hint = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '#1079#1072#1087#1088#1086#1089#1072
                Caption = 'ToolButton1'
                ImageIndex = 21
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton114: TToolButton
                Left = 108
                Top = 0
                Width = 8
                Caption = 'ToolButton11'
                ImageIndex = 8
                Style = tbsSeparator
              end
              object ToolButton115: TToolButton
                Left = 116
                Top = 0
                Cursor = crHandPoint
                Hint = #1055#1077#1095#1072#1090#1100
                Caption = 'ToolButton6'
                ImageIndex = 4
                ParentShowHint = False
                ShowHint = True
                Style = tbsDropDown
              end
              object ToolButton116: TToolButton
                Left = 154
                Top = 0
                Cursor = crHandPoint
                Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
                Caption = 'ToolButton8'
                ImageIndex = 6
                ParentShowHint = False
                ShowHint = True
              end
            end
          end
        end
        object cxTabSheet13: TcxTabSheet
          Caption = #1047#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1086#1090#1073#1086#1088
          ImageIndex = 3
          object cxGroupBox8: TcxGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            Caption = ' '#1047#1072#1076#1072#1085#1080#1103' '
            TabOrder = 0
            Height = 277
            Width = 742
            object cxGrid19: TcxGrid
              AlignWithMargins = True
              Left = 8
              Top = 43
              Width = 726
              Height = 226
              Margins.Left = 6
              Margins.Top = 0
              Margins.Right = 6
              Margins.Bottom = 6
              Align = alClient
              TabOrder = 0
              ExplicitHeight = 391
              object cxGridDBTableView18: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
                OptionsView.GroupByBox = False
                object cxGridDBColumn81: TcxGridDBColumn
                  Caption = #1053#1086#1084#1077#1088
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 144
                end
                object cxGridDBColumn82: TcxGridDBColumn
                  Caption = #1057#1090#1072#1090#1091#1089
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 144
                end
                object cxGridDBColumn83: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 144
                end
                object cxGridDBColumn84: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 144
                end
                object cxGridDBColumn85: TcxGridDBColumn
                  Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
                  FooterAlignmentHorz = taCenter
                  GroupSummaryAlignment = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 144
                end
              end
              object cxGridLevel18: TcxGridLevel
                GridView = cxGridDBTableView18
              end
            end
            object ToolBar19: TToolBar
              AlignWithMargins = True
              Left = 8
              Top = 18
              Width = 726
              Height = 22
              Margins.Left = 6
              Margins.Top = 0
              Margins.Right = 6
              Caption = 'ToolBar1'
              Images = ImageList1
              GradientDirection = gdHorizontal
              GradientDrawingOptions = [gdoHotTrack]
              TabOrder = 1
              Transparent = True
              object ToolButton117: TToolButton
                Left = 0
                Top = 0
                Cursor = crHandPoint
                Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
                Caption = 'ToolButton7'
                ImageIndex = 5
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton118: TToolButton
                Left = 23
                Top = 0
                Width = 8
                Caption = 'ToolButton4'
                ImageIndex = 3
                Style = tbsSeparator
              end
              object ToolButton119: TToolButton
                Left = 31
                Top = 0
                Hint = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1086#1090#1073#1086#1088
                ImageIndex = 0
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton120: TToolButton
                Left = 54
                Top = 0
                Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1086#1090#1073#1086#1088
                Caption = 'ToolButton50'
                ImageIndex = 8
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton121: TToolButton
                Left = 77
                Top = 0
                Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1086#1090#1073#1086#1088
                Caption = 'ToolButton49'
                ImageIndex = 10
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton122: TToolButton
                Left = 100
                Top = 0
                Width = 8
                Caption = 'ToolButton51'
                ImageIndex = 7
                Style = tbsSeparator
              end
              object ToolButton123: TToolButton
                Left = 108
                Top = 0
                Cursor = crHandPoint
                Hint = #1054#1090#1073#1086#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1089#1086#1075#1083#1072#1089#1085#1086' '#1079#1072#1076#1072#1085#1080#1103
                Caption = 'ToolButton1'
                ImageIndex = 23
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton124: TToolButton
                Left = 131
                Top = 0
                Width = 8
                Caption = 'ToolButton11'
                ImageIndex = 8
                Style = tbsSeparator
              end
              object ToolButton125: TToolButton
                Left = 139
                Top = 0
                Cursor = crHandPoint
                Hint = #1055#1086#1080#1089#1082' '#1074' '#1079#1072#1076#1072#1085#1080#1103#1093' '#1085#1072' '#1086#1090#1073#1086#1088
                Caption = 'ToolButton2'
                ImageIndex = 1
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton126: TToolButton
                Left = 162
                Top = 0
                Width = 8
                Caption = 'ToolButton13'
                ImageIndex = 7
                Style = tbsSeparator
              end
              object ToolButton127: TToolButton
                Left = 170
                Top = 0
                Cursor = crHandPoint
                Hint = #1055#1077#1095#1072#1090#1100
                Caption = 'ToolButton6'
                ImageIndex = 4
                ParentShowHint = False
                ShowHint = True
                Style = tbsDropDown
              end
              object ToolButton128: TToolButton
                Left = 208
                Top = 0
                Cursor = crHandPoint
                Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
                Caption = 'ToolButton8'
                ImageIndex = 6
                ParentShowHint = False
                ShowHint = True
              end
            end
          end
          object cxPageControl6: TcxPageControl
            AlignWithMargins = True
            Left = 3
            Top = 288
            Width = 743
            Height = 151
            Margins.Right = 4
            Align = alBottom
            TabOrder = 1
            Properties.ActivePage = cxTabSheet14
            Properties.CustomButtons.Buttons = <>
            ExplicitLeft = 7
            ExplicitTop = 291
            ClientRectBottom = 147
            ClientRectLeft = 4
            ClientRectRight = 739
            ClientRectTop = 24
            object cxTabSheet14: TcxTabSheet
              Caption = #1047#1072#1087#1088#1086#1089#1099' '#1074' '#1079#1072#1076#1072#1085#1080#1080
              ImageIndex = 0
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 749
              ExplicitHeight = 0
              object ToolBar20: TToolBar
                AlignWithMargins = True
                Left = 6
                Top = 0
                Width = 723
                Height = 22
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Caption = 'ToolBar1'
                Images = ImageList1
                GradientDirection = gdHorizontal
                GradientDrawingOptions = [gdoHotTrack]
                TabOrder = 0
                Transparent = True
                ExplicitWidth = 737
                object ToolButton129: TToolButton
                  Left = 0
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
                  Caption = 'ToolButton7'
                  ImageIndex = 5
                  ParentShowHint = False
                  ShowHint = True
                end
                object ToolButton130: TToolButton
                  Left = 23
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton4'
                  ImageIndex = 3
                  Style = tbsSeparator
                end
                object ToolButton131: TToolButton
                  Left = 31
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1055#1077#1095#1072#1090#1100
                  Caption = 'ToolButton6'
                  ImageIndex = 4
                  ParentShowHint = False
                  ShowHint = True
                  Style = tbsDropDown
                end
                object ToolButton132: TToolButton
                  Left = 69
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
                  Caption = 'ToolButton8'
                  ImageIndex = 6
                  ParentShowHint = False
                  ShowHint = True
                end
              end
              object cxGrid20: TcxGrid
                AlignWithMargins = True
                Left = 6
                Top = 25
                Width = 723
                Height = 92
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Margins.Bottom = 6
                Align = alClient
                TabOrder = 1
                ExplicitWidth = 737
                object cxGridDBTableView19: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
                  OptionsView.GroupByBox = False
                  object cxGridDBColumn86: TcxGridDBColumn
                    Caption = #1053#1086#1084#1077#1088
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn87: TcxGridDBColumn
                    Caption = #1057#1090#1072#1090#1091#1089
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn88: TcxGridDBColumn
                    Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn89: TcxGridDBColumn
                    Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn90: TcxGridDBColumn
                    Caption = #1048#1085#1080#1094#1080#1072#1090#1086#1088
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn91: TcxGridDBColumn
                    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                end
                object cxGridLevel19: TcxGridLevel
                  GridView = cxGridDBTableView19
                end
              end
            end
            object cxTabSheet15: TcxTabSheet
              Caption = #1050#1086#1088#1086#1073#1072' '#1074' '#1079#1072#1076#1072#1085#1080#1080
              ImageIndex = 1
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object ToolBar21: TToolBar
                AlignWithMargins = True
                Left = 6
                Top = 0
                Width = 723
                Height = 22
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Caption = 'ToolBar1'
                Images = ImageList1
                GradientDirection = gdHorizontal
                GradientDrawingOptions = [gdoHotTrack]
                TabOrder = 0
                Transparent = True
                object ToolButton133: TToolButton
                  Left = 0
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
                  Caption = 'ToolButton7'
                  ImageIndex = 5
                  ParentShowHint = False
                  ShowHint = True
                end
                object ToolButton134: TToolButton
                  Left = 23
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton4'
                  ImageIndex = 3
                  Style = tbsSeparator
                end
                object ToolButton135: TToolButton
                  Left = 31
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1055#1077#1095#1072#1090#1100
                  Caption = 'ToolButton6'
                  ImageIndex = 4
                  ParentShowHint = False
                  ShowHint = True
                  Style = tbsDropDown
                end
                object ToolButton136: TToolButton
                  Left = 69
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
                  Caption = 'ToolButton8'
                  ImageIndex = 6
                  ParentShowHint = False
                  ShowHint = True
                end
              end
              object cxGrid21: TcxGrid
                AlignWithMargins = True
                Left = 6
                Top = 25
                Width = 723
                Height = 92
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Margins.Bottom = 6
                Align = alClient
                TabOrder = 1
                object cxGridDBTableView20: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
                  OptionsView.GroupByBox = False
                  object cxGridDBColumn92: TcxGridDBColumn
                    Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn93: TcxGridDBColumn
                    Caption = #1050#1086#1084#1087#1072#1085#1080#1103
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn94: TcxGridDBColumn
                    Caption = #1058#1080#1087
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn95: TcxGridDBColumn
                    Caption = #1043#1086#1076
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn96: TcxGridDBColumn
                    Caption = #1053#1086#1084#1077#1088
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn97: TcxGridDBColumn
                    Caption = #1057#1090#1072#1090#1091#1089
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                end
                object cxGridLevel20: TcxGridLevel
                  GridView = cxGridDBTableView20
                end
              end
            end
            object cxTabSheet16: TcxTabSheet
              Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1074' '#1079#1072#1076#1072#1085#1080#1080
              ImageIndex = 2
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object ToolBar22: TToolBar
                AlignWithMargins = True
                Left = 6
                Top = 0
                Width = 723
                Height = 22
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Caption = 'ToolBar1'
                Images = ImageList1
                GradientDirection = gdHorizontal
                GradientDrawingOptions = [gdoHotTrack]
                TabOrder = 0
                Transparent = True
                object ToolButton137: TToolButton
                  Left = 0
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
                  Caption = 'ToolButton7'
                  ImageIndex = 5
                  ParentShowHint = False
                  ShowHint = True
                end
                object ToolButton138: TToolButton
                  Left = 23
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton4'
                  ImageIndex = 3
                  Style = tbsSeparator
                end
                object ToolButton139: TToolButton
                  Left = 31
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1055#1077#1095#1072#1090#1100
                  Caption = 'ToolButton6'
                  ImageIndex = 4
                  ParentShowHint = False
                  ShowHint = True
                  Style = tbsDropDown
                end
                object ToolButton140: TToolButton
                  Left = 69
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
                  Caption = 'ToolButton8'
                  ImageIndex = 6
                  ParentShowHint = False
                  ShowHint = True
                end
              end
              object cxGrid22: TcxGrid
                AlignWithMargins = True
                Left = 6
                Top = 25
                Width = 723
                Height = 92
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Margins.Bottom = 6
                Align = alClient
                TabOrder = 1
                object cxGridDBTableView21: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
                  OptionsView.GroupByBox = False
                  object cxGridDBColumn98: TcxGridDBColumn
                    Caption = #8470' '#1087'/'#1087
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                  object cxGridDBColumn99: TcxGridDBColumn
                    Caption = #1058#1080#1087
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                  object cxGridDBColumn100: TcxGridDBColumn
                    Caption = #1053#1086#1084#1077#1088
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                  object cxGridDBColumn101: TcxGridDBColumn
                    Caption = #1040#1088#1093#1080#1074#1072#1090#1086#1088
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                  object cxGridDBColumn102: TcxGridDBColumn
                    Caption = #1044#1072#1090#1072' '#1072#1088#1093#1080#1074#1072#1094#1080#1080
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                  object cxGridDBColumn103: TcxGridDBColumn
                    Caption = #1057#1090#1072#1090#1091#1089
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                  object cxGridDBColumn104: TcxGridDBColumn
                    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                end
                object cxGridLevel21: TcxGridLevel
                  GridView = cxGridDBTableView21
                end
              end
            end
          end
          object cxSplitter6: TcxSplitter
            AlignWithMargins = True
            Left = 6
            Top = 277
            Width = 738
            Height = 8
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 0
            HotZoneClassName = 'TcxMediaPlayer9Style'
            AlignSplitter = salBottom
            Control = cxPageControl6
            ExplicitTop = 280
          end
        end
        object cxTabSheet9: TcxTabSheet
          Caption = #1042#1099#1076#1072#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ToolBar7: TToolBar
            AlignWithMargins = True
            Left = 6
            Top = 0
            Width = 738
            Height = 22
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Caption = 'ToolBar1'
            Images = ImageList1
            GradientDirection = gdHorizontal
            GradientDrawingOptions = [gdoHotTrack]
            TabOrder = 0
            Transparent = True
            object ToolButton47: TToolButton
              Left = 0
              Top = 0
              Cursor = crHandPoint
              Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
              Caption = 'ToolButton7'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton48: TToolButton
              Left = 23
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object ToolButton94: TToolButton
              Left = 31
              Top = 0
              Hint = #1055#1086#1080#1089#1082
              ImageIndex = 1
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton95: TToolButton
              Left = 54
              Top = 0
              Width = 8
              Caption = 'ToolButton46'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object ToolButton96: TToolButton
              Left = 62
              Top = 0
              Cursor = crHandPoint
              Hint = #1042#1086#1079#1074#1088#1072#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1074' '#1072#1088#1093#1080#1074
              Caption = 'ToolButton1'
              ImageIndex = 22
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton97: TToolButton
              Left = 85
              Top = 0
              Width = 8
              Caption = 'ToolButton11'
              ImageIndex = 8
              Style = tbsSeparator
            end
            object ToolButton98: TToolButton
              Left = 93
              Top = 0
              Cursor = crHandPoint
              Hint = #1055#1077#1095#1072#1090#1100
              Caption = 'ToolButton6'
              ImageIndex = 4
              ParentShowHint = False
              ShowHint = True
              Style = tbsDropDown
            end
            object ToolButton99: TToolButton
              Left = 131
              Top = 0
              Cursor = crHandPoint
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
              Caption = 'ToolButton8'
              ImageIndex = 6
              ParentShowHint = False
              ShowHint = True
            end
          end
          object cxGrid15: TcxGrid
            AlignWithMargins = True
            Left = 0
            Top = 25
            Width = 750
            Height = 414
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Align = alClient
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            ExplicitTop = 28
            object cxGridDBTableView14: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxGridDBBandedTableView2: TcxGridDBBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = '<'#1044#1072#1085#1085#1099#1077' '#1085#1077' '#1085#1072#1081#1076#1077#1085#1099'>'
              OptionsView.GroupByBox = False
              Bands = <
                item
                  Caption = #1044#1086#1082#1091#1084#1077#1085#1090
                  Width = 181
                end
                item
                  Caption = #1050#1086#1088#1086#1073
                  Width = 292
                end
                item
                  Caption = #1047#1072#1087#1088#1086#1089
                  Width = 275
                end
                item
                  Caption = #1053#1086#1084#1077#1088
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                end
                item
                  Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080
                  Position.BandIndex = 2
                  Position.ColIndex = 2
                  Width = 72
                end
                item
                  Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Width = 74
                end
                item
                  Caption = #1048#1085#1080#1094#1080#1072#1090#1086#1088
                  Position.BandIndex = 2
                  Position.ColIndex = 3
                  Width = 61
                end
                item
                  Caption = #1057#1090#1072#1090#1091#1089
                  Position.BandIndex = 2
                  Position.ColIndex = 1
                end
                item
                  Caption = #1053#1086#1084#1077#1088
                  Position.BandIndex = 1
                  Position.ColIndex = 4
                end
                item
                  Caption = #1050#1086#1084#1087#1072#1085#1080#1103
                  Position.BandIndex = 1
                  Position.ColIndex = 1
                  Width = 55
                end
                item
                  Caption = #1058#1080#1087
                  Position.BandIndex = 1
                  Position.ColIndex = 2
                end
                item
                  Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Width = 63
                end
                item
                  Caption = #1043#1086#1076
                  Position.BandIndex = 1
                  Position.ColIndex = 3
                end
                item
                  Caption = #1053#1086#1084#1077#1088
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                end
                item
                  Caption = #1058#1080#1087
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                end>
              object cxGridDBBandedColumn1: TcxGridDBBandedColumn
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
            end
            object cxGridLevel14: TcxGridLevel
              GridView = cxGridDBBandedTableView2
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = #1048#1089#1090#1086#1088#1080#1103' '#1074#1099#1076#1072#1095#1080
          ImageIndex = 0
          object cxGrid7: TcxGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 744
            Height = 436
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            object cxGridDBTableView6: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxGridDBBandedTableView1: TcxGridDBBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = '<'#1044#1072#1085#1085#1099#1077' '#1085#1077' '#1085#1072#1081#1076#1077#1085#1099'>'
              OptionsView.GroupByBox = False
              Bands = <
                item
                  Caption = #1044#1086#1082#1091#1084#1077#1085#1090
                end
                item
                  Caption = #1050#1086#1088#1086#1073
                end
                item
                  Caption = #1047#1072#1087#1088#1086#1089
                end
                item
                  Caption = #1053#1086#1084#1077#1088
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                end
                item
                  Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080
                  Position.BandIndex = 2
                  Position.ColIndex = 2
                  Width = 72
                end
                item
                  Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
                  Position.BandIndex = 2
                  Position.ColIndex = 3
                  Width = 97
                end
                item
                  Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Width = 89
                end
                item
                  Caption = #1048#1085#1080#1094#1080#1072#1090#1086#1088
                  Position.BandIndex = 2
                  Position.ColIndex = 4
                  Width = 61
                end
                item
                  Caption = #1057#1090#1072#1090#1091#1089
                  Position.BandIndex = 2
                  Position.ColIndex = 1
                end
                item
                  Caption = #1053#1086#1084#1077#1088
                  Position.BandIndex = 1
                  Position.ColIndex = 4
                end
                item
                  Caption = #1050#1086#1084#1087#1072#1085#1080#1103
                  Position.BandIndex = 1
                  Position.ColIndex = 1
                  Width = 55
                end
                item
                  Caption = #1058#1080#1087
                  Position.BandIndex = 1
                  Position.ColIndex = 2
                end
                item
                  Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Width = 63
                end
                item
                  Caption = #1043#1086#1076
                  Position.BandIndex = 1
                  Position.ColIndex = 3
                end
                item
                  Caption = #1053#1086#1084#1077#1088
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                end
                item
                  Caption = #1057#1090#1072#1090#1091#1089' '#1074#1086#1079#1074#1088#1072#1090#1072
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Width = 92
                end
                item
                  Caption = #1058#1080#1087
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                end>
            end
            object cxGridLevel6: TcxGridLevel
              GridView = cxGridDBBandedTableView1
            end
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      ImageIndex = 6
      object cxPageControl7: TcxPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 758
        Height = 470
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet24
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 466
        ClientRectLeft = 4
        ClientRectRight = 754
        ClientRectTop = 24
        object cxTabSheet24: TcxTabSheet
          Caption = #1042#1086#1079#1074#1088#1072#1097#1105#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
          ImageIndex = 1
          object ToolBar30: TToolBar
            AlignWithMargins = True
            Left = 6
            Top = 0
            Width = 738
            Height = 22
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Caption = 'ToolBar1'
            Images = ImageList1
            GradientDirection = gdHorizontal
            GradientDrawingOptions = [gdoHotTrack]
            TabOrder = 0
            Transparent = True
            object ToolButton182: TToolButton
              Left = 0
              Top = 0
              Cursor = crHandPoint
              Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
              Caption = 'ToolButton7'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton183: TToolButton
              Left = 23
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object ToolButton184: TToolButton
              Left = 31
              Top = 0
              Hint = #1055#1086#1080#1089#1082
              ImageIndex = 1
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton185: TToolButton
              Left = 54
              Top = 0
              Width = 8
              Caption = 'ToolButton46'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object ToolButton186: TToolButton
              Left = 62
              Top = 0
              Cursor = crHandPoint
              Hint = #1042#1086#1079#1074#1088#1072#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1074' '#1072#1088#1093#1080#1074
              Caption = 'ToolButton1'
              ImageIndex = 22
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton187: TToolButton
              Left = 85
              Top = 0
              Width = 8
              Caption = 'ToolButton11'
              ImageIndex = 8
              Style = tbsSeparator
            end
            object ToolButton188: TToolButton
              Left = 93
              Top = 0
              Cursor = crHandPoint
              Hint = #1055#1077#1095#1072#1090#1100
              Caption = 'ToolButton6'
              ImageIndex = 4
              ParentShowHint = False
              ShowHint = True
              Style = tbsDropDown
            end
            object ToolButton189: TToolButton
              Left = 131
              Top = 0
              Cursor = crHandPoint
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
              Caption = 'ToolButton8'
              ImageIndex = 6
              ParentShowHint = False
              ShowHint = True
            end
          end
          object cxGrid30: TcxGrid
            AlignWithMargins = True
            Left = 0
            Top = 25
            Width = 750
            Height = 414
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Align = alClient
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            object cxGridDBTableView29: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxGridDBBandedTableView3: TcxGridDBBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = '<'#1044#1072#1085#1085#1099#1077' '#1085#1077' '#1085#1072#1081#1076#1077#1085#1099'>'
              OptionsView.GroupByBox = False
              Bands = <
                item
                  Caption = #1044#1086#1082#1091#1084#1077#1085#1090
                  Width = 199
                end
                item
                  Caption = #1050#1086#1088#1086#1073
                  Width = 284
                end
                item
                  Caption = #1047#1072#1087#1088#1086#1089
                  Width = 264
                end
                item
                  Caption = #1053#1086#1084#1077#1088
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                end
                item
                  Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080
                  Position.BandIndex = 2
                  Position.ColIndex = 2
                  Width = 72
                end
                item
                  Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Width = 74
                end
                item
                  Caption = #1048#1085#1080#1094#1080#1072#1090#1086#1088
                  Position.BandIndex = 2
                  Position.ColIndex = 3
                  Width = 61
                end
                item
                  Caption = #1057#1090#1072#1090#1091#1089
                  Position.BandIndex = 2
                  Position.ColIndex = 1
                end
                item
                  Caption = #1053#1086#1084#1077#1088
                  Position.BandIndex = 1
                  Position.ColIndex = 4
                end
                item
                  Caption = #1050#1086#1084#1087#1072#1085#1080#1103
                  Position.BandIndex = 1
                  Position.ColIndex = 1
                  Width = 55
                end
                item
                  Caption = #1058#1080#1087
                  Position.BandIndex = 1
                  Position.ColIndex = 2
                end
                item
                  Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Width = 63
                end
                item
                  Caption = #1043#1086#1076
                  Position.BandIndex = 1
                  Position.ColIndex = 3
                end
                item
                  Caption = #1053#1086#1084#1077#1088
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                end
                item
                  Caption = #1058#1080#1087
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                end>
              object cxGridDBBandedColumn2: TcxGridDBBandedColumn
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
            end
            object cxGridLevel29: TcxGridLevel
              GridView = cxGridDBBandedTableView3
            end
          end
        end
        object cxTabSheet20: TcxTabSheet
          Caption = #1047#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1091
          ImageIndex = 3
          object cxGroupBox9: TcxGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            Caption = ' '#1047#1072#1076#1072#1085#1080#1103' '
            TabOrder = 0
            Height = 277
            Width = 742
            object cxGrid23: TcxGrid
              AlignWithMargins = True
              Left = 8
              Top = 43
              Width = 726
              Height = 226
              Margins.Left = 6
              Margins.Top = 0
              Margins.Right = 6
              Margins.Bottom = 6
              Align = alClient
              TabOrder = 0
              object cxGridDBTableView22: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
                OptionsView.GroupByBox = False
                object cxGridDBColumn105: TcxGridDBColumn
                  Caption = #1053#1086#1084#1077#1088
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 144
                end
                object cxGridDBColumn106: TcxGridDBColumn
                  Caption = #1057#1090#1072#1090#1091#1089
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 144
                end
                object cxGridDBColumn107: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 144
                end
                object cxGridDBColumn108: TcxGridDBColumn
                  Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
                  HeaderAlignmentHorz = taCenter
                  HeaderAlignmentVert = vaCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 144
                end
                object cxGridDBColumn109: TcxGridDBColumn
                  Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
                  FooterAlignmentHorz = taCenter
                  GroupSummaryAlignment = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Width = 144
                end
              end
              object cxGridLevel22: TcxGridLevel
                GridView = cxGridDBTableView22
              end
            end
            object ToolBar23: TToolBar
              AlignWithMargins = True
              Left = 8
              Top = 18
              Width = 726
              Height = 22
              Margins.Left = 6
              Margins.Top = 0
              Margins.Right = 6
              Caption = 'ToolBar1'
              Images = ImageList1
              GradientDirection = gdHorizontal
              GradientDrawingOptions = [gdoHotTrack]
              TabOrder = 1
              Transparent = True
              object ToolButton141: TToolButton
                Left = 0
                Top = 0
                Cursor = crHandPoint
                Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
                Caption = 'ToolButton7'
                ImageIndex = 5
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton142: TToolButton
                Left = 23
                Top = 0
                Width = 8
                Caption = 'ToolButton4'
                ImageIndex = 3
                Style = tbsSeparator
              end
              object ToolButton143: TToolButton
                Left = 31
                Top = 0
                Hint = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
                ImageIndex = 0
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton144: TToolButton
                Left = 54
                Top = 0
                Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
                Caption = 'ToolButton50'
                ImageIndex = 8
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton145: TToolButton
                Left = 77
                Top = 0
                Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
                Caption = 'ToolButton49'
                ImageIndex = 10
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton146: TToolButton
                Left = 100
                Top = 0
                Width = 8
                Caption = 'ToolButton51'
                ImageIndex = 7
                Style = tbsSeparator
              end
              object ToolButton147: TToolButton
                Left = 108
                Top = 0
                Cursor = crHandPoint
                Hint = #1054#1090#1073#1086#1088' '#1082#1086#1088#1086#1073#1086#1074' '#1089#1086#1075#1083#1072#1089#1085#1086' '#1079#1072#1076#1072#1085#1080#1103
                Caption = 'ToolButton1'
                ImageIndex = 23
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton148: TToolButton
                Left = 131
                Top = 0
                Width = 8
                Caption = 'ToolButton11'
                ImageIndex = 8
                Style = tbsSeparator
              end
              object ToolButton149: TToolButton
                Left = 139
                Top = 0
                Cursor = crHandPoint
                Hint = #1055#1086#1080#1089#1082' '#1074' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
                Caption = 'ToolButton2'
                ImageIndex = 1
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton150: TToolButton
                Left = 162
                Top = 0
                Width = 8
                Caption = 'ToolButton13'
                ImageIndex = 7
                Style = tbsSeparator
              end
              object ToolButton151: TToolButton
                Left = 170
                Top = 0
                Cursor = crHandPoint
                Hint = #1055#1077#1095#1072#1090#1100
                Caption = 'ToolButton6'
                ImageIndex = 4
                ParentShowHint = False
                ShowHint = True
                Style = tbsDropDown
              end
              object ToolButton152: TToolButton
                Left = 208
                Top = 0
                Cursor = crHandPoint
                Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
                Caption = 'ToolButton8'
                ImageIndex = 6
                ParentShowHint = False
                ShowHint = True
              end
            end
          end
          object cxSplitter7: TcxSplitter
            AlignWithMargins = True
            Left = 6
            Top = 277
            Width = 738
            Height = 8
            Margins.Left = 6
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 0
            HotZoneClassName = 'TcxMediaPlayer9Style'
            AlignSplitter = salBottom
            Control = cxPageControl8
          end
          object cxPageControl8: TcxPageControl
            AlignWithMargins = True
            Left = 3
            Top = 288
            Width = 743
            Height = 151
            Margins.Right = 4
            Align = alBottom
            TabOrder = 2
            Properties.ActivePage = cxTabSheet17
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 147
            ClientRectLeft = 4
            ClientRectRight = 739
            ClientRectTop = 24
            object cxTabSheet17: TcxTabSheet
              Caption = #1050#1086#1088#1086#1073#1072' '#1074' '#1079#1072#1076#1072#1085#1080#1080
              ImageIndex = 1
              object ToolBar24: TToolBar
                AlignWithMargins = True
                Left = 6
                Top = 0
                Width = 723
                Height = 22
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Caption = 'ToolBar1'
                Images = ImageList1
                GradientDirection = gdHorizontal
                GradientDrawingOptions = [gdoHotTrack]
                TabOrder = 0
                Transparent = True
                object ToolButton153: TToolButton
                  Left = 0
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
                  Caption = 'ToolButton7'
                  ImageIndex = 5
                  ParentShowHint = False
                  ShowHint = True
                end
                object ToolButton154: TToolButton
                  Left = 23
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton4'
                  ImageIndex = 3
                  Style = tbsSeparator
                end
                object ToolButton155: TToolButton
                  Left = 31
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1055#1077#1095#1072#1090#1100
                  Caption = 'ToolButton6'
                  ImageIndex = 4
                  ParentShowHint = False
                  ShowHint = True
                  Style = tbsDropDown
                end
                object ToolButton156: TToolButton
                  Left = 69
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
                  Caption = 'ToolButton8'
                  ImageIndex = 6
                  ParentShowHint = False
                  ShowHint = True
                end
              end
              object cxGrid24: TcxGrid
                AlignWithMargins = True
                Left = 6
                Top = 25
                Width = 723
                Height = 92
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Margins.Bottom = 6
                Align = alClient
                TabOrder = 1
                object cxGridDBTableView23: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
                  OptionsView.GroupByBox = False
                  object cxGridDBColumn110: TcxGridDBColumn
                    Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn111: TcxGridDBColumn
                    Caption = #1050#1086#1084#1087#1072#1085#1080#1103
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn112: TcxGridDBColumn
                    Caption = #1058#1080#1087
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn113: TcxGridDBColumn
                    Caption = #1043#1086#1076
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn114: TcxGridDBColumn
                    Caption = #1053#1086#1084#1077#1088
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                  object cxGridDBColumn115: TcxGridDBColumn
                    Caption = #1057#1090#1072#1090#1091#1089
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 120
                  end
                end
                object cxGridLevel23: TcxGridLevel
                  GridView = cxGridDBTableView23
                end
              end
            end
            object cxTabSheet18: TcxTabSheet
              Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1074' '#1079#1072#1076#1072#1085#1080#1080
              ImageIndex = 2
              object ToolBar25: TToolBar
                AlignWithMargins = True
                Left = 6
                Top = 0
                Width = 723
                Height = 22
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Caption = 'ToolBar1'
                Images = ImageList1
                GradientDirection = gdHorizontal
                GradientDrawingOptions = [gdoHotTrack]
                TabOrder = 0
                Transparent = True
                object ToolButton157: TToolButton
                  Left = 0
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072
                  Caption = 'ToolButton7'
                  ImageIndex = 5
                  ParentShowHint = False
                  ShowHint = True
                end
                object ToolButton158: TToolButton
                  Left = 23
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton4'
                  ImageIndex = 3
                  Style = tbsSeparator
                end
                object ToolButton159: TToolButton
                  Left = 31
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1055#1077#1095#1072#1090#1100
                  Caption = 'ToolButton6'
                  ImageIndex = 4
                  ParentShowHint = False
                  ShowHint = True
                  Style = tbsDropDown
                end
                object ToolButton160: TToolButton
                  Left = 69
                  Top = 0
                  Cursor = crHandPoint
                  Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1074' Microsoft Office Excel'
                  Caption = 'ToolButton8'
                  ImageIndex = 6
                  ParentShowHint = False
                  ShowHint = True
                end
              end
              object cxGrid25: TcxGrid
                AlignWithMargins = True
                Left = 6
                Top = 25
                Width = 723
                Height = 92
                Margins.Left = 6
                Margins.Top = 0
                Margins.Right = 6
                Margins.Bottom = 6
                Align = alClient
                TabOrder = 1
                object cxGridDBTableView24: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
                  OptionsView.GroupByBox = False
                  object cxGridDBColumn116: TcxGridDBColumn
                    Caption = #8470' '#1087'/'#1087
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                  object cxGridDBColumn117: TcxGridDBColumn
                    Caption = #1058#1080#1087
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                  object cxGridDBColumn118: TcxGridDBColumn
                    Caption = #1053#1086#1084#1077#1088
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                  object cxGridDBColumn119: TcxGridDBColumn
                    Caption = #1040#1088#1093#1080#1074#1072#1090#1086#1088
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                  object cxGridDBColumn120: TcxGridDBColumn
                    Caption = #1044#1072#1090#1072' '#1072#1088#1093#1080#1074#1072#1094#1080#1080
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                  object cxGridDBColumn121: TcxGridDBColumn
                    Caption = #1057#1090#1072#1090#1091#1089
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                  object cxGridDBColumn122: TcxGridDBColumn
                    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
                    FooterAlignmentHorz = taCenter
                    GroupSummaryAlignment = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderAlignmentVert = vaCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Width = 103
                  end
                end
                object cxGridLevel24: TcxGridLevel
                  GridView = cxGridDBTableView24
                end
              end
            end
          end
        end
      end
    end
  end
  object ToolBar3: TToolBar
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 772
    Height = 22
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Caption = 'ToolBar1'
    Images = ImageList1
    GradientDirection = gdHorizontal
    GradientDrawingOptions = [gdoHotTrack]
    TabOrder = 2
    Transparent = True
    object ToolButton19: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Hint = #1047#1072#1074#1077#1088#1096#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099' '#1084#1086#1076#1091#1083#1103
      Caption = 'ToolButton1'
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton18: TToolButton
      Left = 23
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton17: TToolButton
      Left = 31
      Top = 0
      Cursor = crHandPoint
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1084#1086#1076#1091#1083#1103
      Caption = 'ToolButton7'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton21: TToolButton
      Left = 54
      Top = 0
      Width = 8
      Caption = 'ToolButton21'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object ToolButton23: TToolButton
      Left = 62
      Top = 0
      Cursor = crHandPoint
      Hint = #1057#1087#1088#1072#1074#1086#1095#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1088#1072#1073#1086#1090#1077' '#1084#1086#1076#1091#1083#1103
      Caption = 'ToolButton23'
      ImageIndex = 18
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton22: TToolButton
      Left = 85
      Top = 0
      Cursor = crHandPoint
      Hint = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1084#1086#1076#1091#1083#1077
      Caption = 'ToolButton22'
      ImageIndex = 17
      ParentShowHint = False
      ShowHint = True
    end
  end
  object ImageList1: TImageList
    Left = 296
    Top = 296
    Bitmap = {
      494C010118001802400110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000007000000001002000000000000070
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006000000060000000600000006000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006600004D4D
      4D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080000000A0200000A02000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005F6172005F61720065688200656882005F6172000000
      0000000000000000000000000000000000000000000071717100717171007171
      71006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D0000000000000000000000
      0000000000000000000000000000000000000000000000000000006600000066
      00004D4D4D004D4D4D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080000000A0400000C04000008000000060000000600000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000656882004553B9001F35DB000E24CC000A1EB7004652B00064698B006A6A
      6A005F6172000000000000000000000000006D6D6D00B1654D008C5036008C50
      36008C5036008C5036006C554C006A635F00717171006D6D6D006D6D6D006D6D
      6D006D6D6D0071717100717171006D6D6D000000000000000000006600000D90
      1A00026F0400165D0E004D4D4D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080000040A0400040C040000080000000A0200000800000000000000000
      0000000000000000000000000000000000000000000000000000000000006568
      8200122BEB00142EF500142EF500142EF500142EF500132DF0000E24CC004A56
      AA0065688200656882000000000000000000E0664200DC513100F9635000FD72
      5C00F1684E00D7744500F1684E00D24C270035593800355938002F982D004890
      37002F982D0025662500355938006D6D6D0000000000000000000066000014A0
      270016AB2B0007840F00056303004D4D4D004D4D4D0000000000000000000000
      0000000000000000000000000000000000000060000000600000006000000060
      00000080000040C0400040C06000008000000060000000600000006000000060
      0000000000000000000000000000000000000000000000000000142EF500142E
      F500142EF500223BF5000F26D6000F26D6000E25D100142EF500142EF5000F26
      D6004F5AA7006D6D6D000000000000000000D5885500F9635000FD7C6400FC8B
      6D00D5885500FFCF9C00F36D5300FD6A5700917930004DB34D006AA9660063CA
      630052C252003CB73C00239023006D6D6D0000000000000000000066000019A5
      32001CB5360017B02D000C951700016A02001A5C11004D4D4D00000000000000
      0000000000000000000000000000000000000080000040C0600040C0600040C0
      600040C0600040C0600040C0600040A0400000A0400000A0200000A020000080
      0000000000000000000000000000000000000000000000000000142EF500142E
      F500142EF50000000000000000000000000000000000223AF500142EF500142E
      F5000D22C6005F617200656882000000000000000000E0664200FD846900EB80
      5900FFCF9C00FFCF9C00EF765600FD6B580080AB670080B38000FFEFDF004DB3
      4D0075D275004FC14F00489037006D6D6D000000000000000000006600001FAB
      3D0022BB44001CB5360017B02D000FA51E0003790600096105004D4D4D000000
      0000000000000000000000000000000000000080000040E0800040E0800040E0
      800040E0800040E0600040C0600040C0600040C0400000C0400000A040000080
      00000060000000600000000000000000000000000000142EF500142EF5000F26
      D60000000000000000000000000000000000223AF500132DF000142EF500142E
      F500122BEB005760A5005F617200000000000000000000000000B1654D004C21
      4F002E3457007F4C6E00B1654D00917930007CD77C008FE08F00FFF7E800BFD9
      AC005BC55B0044A64400000000000000000000000000000000000066000023B0
      460029C2520022BB44001CB5360017B02D000FA91F0005880B00016A01004D4D
      4D004D4D4D000000000000000000000000000080000000A0200000A0200000A0
      20000080200040E0800040C06000008020000080200000802000008020000080
      000000A0200000800000000000000000000000000000233BF600142EF5000F26
      D600000000000000000000000000223AF500132DF000233BF600000000000F26
      D600142EF5004553B9006568820000000000000000001717170005070E000D29
      6800143AA000102F9500081D6C00545454006AA96600427399001579BA00247D
      B600377D57004D4D4D00000000000000000000000000000000000066000026B3
      4D0030C9600029C2520022BB44001CB5360017B02D000FA91F00089B10000271
      030011610B004D4D4D00000000000000000000000000000000000080000040E0
      80000080000040E0800040E080000080000040C0600040C0600040C0400000C0
      400000A0400000800000006000000060000000000000142EF500142EF5000F26
      D6000000000000000000223AF500142EF500233BF60000000000000000000F26
      D600142EF5005561BF0065688200000000003F3F3F001A1A1A00102C5B001A4D
      B3001C56BC001B51B700102F950054545400699AAE002C92F1003399FF003399
      FF002C92F1002C586F00848484000000000000000000000000000066000027B3
      4D0033CC660030C9600029C2520022BB44001CB5360017B02D000EA41D00037D
      0600066404004D4D4D00000000000000000000000000000000000080000000A0
      20000080000040E0800040E080000080000040C0600000802000008020000080
      2000008020000080000000A020000080000000000000142EF500142EF5000E25
      D10000000000223AF500142EF500233BF6000000000000000000000000000F26
      D600142EF5005763BC00000000000000000012121200282828000F2D93002774
      DA002671D7002671D7001E5AC0005A6064003F95C30040A6FF0040A6FF0040A6
      FF003DA2FF002385C6006D6D6D00000000000000000000000000006600002DB9
      530035CE680033CC660030C9600029C2520022BB440015A12800036F0500165D
      0E00000000000000000000000000000000000000000000000000000000000000
      00000080000040E0800040E080000080000040E080000080000040C0600040C0
      600040C0400000C0400000A040000080000000000000142EF500142EF500142E
      F500223AF500132DF000233BF60000000000000000000000000000000000142E
      F500132DF0006568820000000000000000002C2C2C00363636002C586F003191
      F9003399FF003694F700246AD0005A606400479FD0004BB1FF004BB1FF004DB3
      FF0049AFFF002D92E600666666000000000000000000000000000066000032BE
      58003CD56F0035CE680033CC660030C960001494280005630300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080000040A0400040A040000080000040E080000080000040C060000080
      2000008020000080200000802000008000000000000000000000142EF500142E
      F500142EF500132DF00000000000000000000000000000000000233BF600142E
      F500142EF5000000000000000000000000006D6D6D004A4A4A003F3F3F004646
      4600143FA4002060C600135F88007E7E7E0057A9D7004DB3F2004DB3F20055BB
      FF0051B7FF0043A8ED006D6D6D000000000000000000000000000066000036C2
      5C0043DC76003CD56F002BBB55000A7913000F5F090000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000080000040E0800040E080000080000040E080000080
      0000000000000000000000000000000000000000000000000000142EF500142E
      F500142EF5000F26D6000F26D6000C21C1000F26D600142EF500142EF500142E
      F500000000000000000000000000000000000000000038383800666666008F8F
      8F00A4A4A4004D4D4D00464646000000000063ABD200247DB60057A9D70063AB
      D200479FD0001372A200699AAE00000000000000000000000000006600003DC9
      630049E27C0025A84200046D07002D581E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000080000040A0400040A040000080000040E080000080
      000000000000000000000000000000000000000000000000000000000000142E
      F500142EF500142EF500142EF500142EF500142EF500142EF500142EF5000000
      00000000000000000000000000000000000000000000000000006D6D6D00605E
      5E00605E5E00666666000000000000000000000000003A8BB70084C0E400A3D0
      EA00479FD000699AAE0000000000000000000000000000000000006600003CC5
      5F00158721000961050000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000040E0800040E080000080
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000142EF500142EF500142EF500142EF50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003A8BB7003A8B
      B7003A8BB7000000000000000000000000000000000000000000006600000066
      0000245E19000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000040A0400040A040000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000660000245E
      1900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000085695E008F6F5B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005346450053464500534645005346450053464500534645000000
      000000000000000000000000000000000000FEFEFE01EBEBEB14B3B3B34C9B9B
      9B64C4C4C43BEAEAEA15FCFCFC03000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7988D00C9998E00C798
      8D00C6968C00C3928B00C3928B00C3928B00C3928B00C3928B00C3928B00C393
      8C0090827B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000966B4B00CE9F6F00AB784D0085695E000000
      000000000000000000000000000000000000000000000000000000000000B58E
      7B00B5928400F7E3D600EFE3DE00EFE3DE00F7E7DE00F7E3D600BDA69C005346
      450053464500000000000000000000000000C5C5C53A555C64B62375E1FF252D
      FAFF2524BFFB4D4E63C19F9FA061D4D4D42BEFEFEF10FCFCFC03000000000000
      00000000000000000000000000000000000000000000E2E3E300FBDFC800FBDD
      C5008C5B5A008C5B5A00C2988A00A2746D00A2736C00A3716600C3917700FCCB
      9F0090827B000000000000000000000000000000000000000000000000000000
      00000000000000000000966B4B00CAAA8700FFF7C4009463410085695E000000
      0000000000000000000000000000000000000000000000000000BDA69C00F7E7
      DE00FFF3F700E7DBD600DEB29C00D6A68C00E7C7BD00EFEBEF00F7F3F700F7E3
      D600E7CBBD00534645000000000000000000335D8DF42696FFFF2081F3FF262D
      DDFF251EE1FF251FFBFF2128F8FF4F4355E7635E57AD9D9C9B65D3D3D32CF1F1
      F10EFDFDFD0200000000000000000000000000000000E3E4E400FCE1CB00FBE0
      C9008C5B5A008C5B5A00FBDCBF00FAD9BC00FBD3AD00FCC99100FCC99100FDCF
      AF008F817A000000000000000000000000000000000000000000000000000000
      0000937565008A644C00E7CAA800FFDCB300FFDCB300AF87640055280E006844
      360085695E0000000000000000000000000000000000BDA69C00F7EBE7000000
      0000C68E7300BD5D2900BD5D2900DEB29C00BD5D2900BD5D2900D69E8400F7F3
      F700F7E7DE00D6C7BD0053464500000000003974B6FF3193F6FF268EF7FF252D
      D7FF261FDAFF251EE2FF1C1AF4FF865F7EFFDE9437FFC08338FF694E31E76366
      61A6A3A3A25ED1D1D12EE9E9E916FDFDFD0200000000E6E7E700FCE4CF00FBE2
      CD008C5B5A008C5B5A00D0AA9A00B88F8400B9876D00B9876D00CFA69300FDD2
      BF008F817A000000000000000000000000000000000000000000BAA79D00BAA7
      9D00D2B69900E7CAA800FDE4BF00FFE9C700FFF8D100F5D6B300D8B89300AD89
      64005E2F150085695E00000000000000000000000000BDA69C0000000000CE6D
      4200BD5D2900BD5D2900C6A2940000000000E7825200BD5D2900BD5D2900D696
      7300FFFBF700F7E3D60053464500000000003B7BBAFF3FA1F9FF3CA5FBFF272F
      C6FF261FCCFF261FD8FF1D18EDFF83587CFFC78231FFC38335FFDB8A3EFF5799
      0EFF458D02FF406022E94F5847C5E8E8E81700000000E8E9E900FCE6D400FCE5
      D1008C5B5A008C5B5A00FBDFC700FBDCC300FDC88900FBD9BE00FAD9BC00FDD2
      BF008F817A0000000000000000000000000000000000C9B6A700E8DBC700EDD5
      B800FFEBCC00F8D6B700C0704F00E9956300DD8D5C00DFA67B00FFE7C300F4D6
      B100D7B6940073472900896F650000000000BDA69C00FFFBFF00DE9E7B00BD5D
      2900CE653100CE653100CE693900D68A6300CE653100CE653100BD5D2900BD5D
      2900E7CBBD00F7EFEF00DECBC600534645004482B4FF4DB1FFFF338BF6FF234C
      E4FF2530D3FF2823C9FF1A12DAFF7C5176FFC5802DFFC48135FFD1853AFF4E89
      0FFF448900FF499800FF4FA601FFE1E1E11E00000000EAEBEB002900DF002900
      DF009070D900532DDC00532DDB005B3F6E00556E6600B66037005D33AD00FDD2
      BF008F817A00000000000000000000000000CBB8A200E8DBC700EED8C100FFEF
      D100FFEECF00FFFFE200B4816200790000008F2E0600F7E5C400FFEDCB00FFE7
      C300F5D7B700DABD9B005B2D140000000000D6C7BD00FFF7F700C6613100BD5D
      2900CE653100BD5D2900CE866300F7E7DE00D6693900BD5D2900CE653100BD5D
      2900CE71420000000000E7CBBD00534645009CB8CC7A3C70ABD51B64D3FF2678
      FFFF094BFBFF3356E9FA7D7DC7F2B3825EF5C07D2DFFC17E31FFD18139FF4E88
      0EFF448900FF489500FF4B9E02FFE2E2E21D00000000EDEDED002900DF002900
      DF00FCE7D600FCE5D300FCE4CF00FCE3CD00AB702C00FFE9D300FDCEA100D881
      2A00AD733D00000000000000000000000000C5B2A000E8DBC700FFF0D700FFEC
      D200FFE7CE00FFFFED00CFB295006F000000A4583700FFFFF000FFE7C900FFE5
      C600FFEAC900FCE3C500AD8A6B0090766D00D6C7BD00F7DFD600BD5D2900CE65
      3100CE653100BD5D2900D6825200FFFBFF00E7AE9400BD5D2900BD5D2900CE65
      3100BD5D2900FFEFEF00F7DFD600534645000000000000000000F6F8F9099498
      9D6DE3E4B4FDFDDFA3FEF9DBAAFECC9351FEBF792BFFC07B2DFFCF7F34FF4E85
      0FFE448501FE468E01FE4B9803FFDFDFDF2000000000EFF0F000FDEDE100FDEC
      DD008C5B5A008C5B5A00C39F9600A2777200A2767100B4714B00C2670C00F5D1
      AC00F5CCA400AEAEB30028289B0000000000CFBFAE00F8E7D500FFF4DF00FFEC
      D600FFECD600FFFFF300CDAF940074000000A5573600FFFFF100FFE8CF00FFE5
      CA00FFEACF00FFEBD100E4CAAF00886A5C00D6C7BD00F7D7CE00CE653100CE65
      3100CE653100CE653100BD5D2900DEAA9400FFF7F700EF9E7300BD5D2900CE65
      3100BD5D2900F7F3EF00EFE3DE0053464500000000000000000000000000B5B3
      AD6BE8E8BBFFFAE1B2FFFCE4B6FFC88C4DFFB76E23FFBA752AFFCA7A31FF4D85
      0FFF438500FF458E00FF4A9702FFE1E1E11E00000000F1F2F200FDF0E500FDEE
      E1008C5B5A008C5B5A00FCE9D800FCE7D600FCE6D300FBE3D000FBE2CD00FDD2
      BF00AD733D0050509C001746C70000000000CFC2B700FDEFE000FFF4E300FFEF
      DE00FFF0DC0000000000D6C1AA0077000000A6583600FFFFF800FFEDD500FFE9
      D000FFECD200FFF2D900ECD7C000866A5C00D6C7BD00FFEFE700D6693900CE65
      3100CE653100BD5D2900BD5D2900BD5D2900E7CFC60000000000D6693900CE65
      3100CE693900FFFBFF00F7DFD60053464500000000000000000000000000B8B6
      B266EAEAC4FFF9E4B8FFFFECBDFFC6894CFFB1671EFFB66E25FFC77B2CFF4C83
      10FF428300FF458C00FF4A9502FFDFDFDF2000000000F3F4F400FDF2E900FDF1
      E6008C5B5A008C5B5A00D1B3AA00B9938C00B9938C00B9938B00D1B0A500FDD2
      BF008F817A00000000000000000000000000D0C7BD00FDF5E900FFF8EB00FFF2
      E600FFFDEF00EFE6DA008C3D1E00650000008C3C2300FFFFFE00FFF0DD00FFEB
      D600FFEED900FFFAE500F2DEC900977E7200D6C7BD0000000000F79A6B00D669
      3900CE8E6B00F7EBE700D6825200BD5D2900D696730000000000E78E5A00BD5D
      2900EF92630000000000D6C7BD0053464500000000000000000000000000C7C6
      C44DEEEFD1FFF7E9C4FFFFF2C9FFC28545FFAA5C16FFB1651DFFB96D29FB4C83
      11FF418200FF448B00FF499402FFE1E1E11E00000000F5F6F600FDF5ED00FEF3
      EA008C5B5A008C5B5A00FDEEE100FDECDE00FDEADB00FCE8D700FCE6D400FDD2
      BF008F817A00000000000000000000000000DFD4C800F7F4EF00FFFFF900FFF6
      EC00FFFFF900E6D9C900B3938200BAA59A00C2AEA300FFFFF800FFF4E300FFEE
      DC00FFFAEB00FFFFFC00E2CAB400977E720000000000D6C7BD00FFEBDE00EF86
      5200E7825200F7F7F70000000000DEBAAD0000000000F7F7F700DE714200D671
      3900FFF3EF00F7E7E7005346450000000000000000000000000000000000E2E1
      E02B9D9687E1B59B77F1CEA265F8DDA960FBD19F52FAAC8840F898803CF55083
      0EFF428400FF458C00FF4A9502FFE2E2E21D00000000F7F8F700FEF7F100FEF5
      EE00FEF4EB00FDF1E800FDF0E500FDEEE100FDECDE00FDEBDC00FCE9D800FDD2
      BF0090827B0000000000000000000000000000000000E4E5E50000000000FFFF
      FA00FFFBF30000000000FFFFFA00F9C8A600FFFEEE0000000000FFF5E800FFFA
      EF000000000000000000AF9787000000000000000000D6C7BD0000000000FFEF
      D600FFAA7300EFAA8C00EFE3DE00EFEFEF00F7E7E700FFA67B00F78E5A00F7DB
      CE0000000000D6C7BD000000000000000000000000000000000000000000FAFA
      FA0700000000000000000000000090B263F8A3D767FFA6D669FFABD472FF517B
      0AFF428300FF448C00FF499502FFE2E2E21D00000000FBFBFB008C5B5A008C5B
      5A00E9DAD400E7D5CE00E7D3CC00E6D2C900E6D2C900E5B69100E4923A00D683
      330090827B0000000000000000000000000000000000ECE7E200EDEDEF000000
      000000000000000000008E574E005D0000009A45280000000000000000000000
      000000000000D1BDAD0000000000000000000000000000000000D6C7BD000000
      000000000000FFF3C600FFDFAD00FFD39C00FFC79400FFD7AD00000000000000
      0000D6C7BD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009ABA69F6A5D367FFA5D368FFABD372FF3D6E
      00FF3F7900FF438600FF498F02FFDDDDDD2200000000FDFDFD00FFFCF900FEFA
      F700FEF8F300FEF7F100FEF4ED00FDF3EA00FEF1E700EBC7A800FEB554009082
      7B00000000000000000000000000000000000000000000000000F1EBE600F2F4
      F5000000000000000000D7CEC90062414400C5B5AF000000000000000000FFFF
      FE00E8DED500000000000000000000000000000000000000000000000000D6C7
      BD00D6C7BD0000000000000000000000000000000000FFFBFF00DECBC600D6C7
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8CA76E5AAD46EF9ACCE71FBA0CC68FF42AD
      0DFF47A909FF48B30CFF4CBE0CFFE2E2E21D0000000000000000FBFBFB00F7F8
      F700F3F4F400EFF0F000EBECEC00E8E9E900E4E5E400EED1B00097857B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAE3DC00F6F3EF00000000000000000000000000FBF8F400D8CBC3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DECBC600D6C7BD00D6C7BD00D6C7BD00D6C7BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F9EF14E2EDDB25C2E5B351B3DD9F66B4DE
      A164E3F0DD24E8F1E41CEFF4EC14FEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000083838300838383008383
      8300838383000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000097433F009743
      3F00C2999900C2999900C2999900C2999900C2999900C2999900C29999009230
      2F0097433F000000000000000000000000000000000000000000000000000000
      0000000000002C2C6C0005056300000065000000600000004F00000000000000
      000000000000000000000000000000000000ECD9D900CCACA000907A75006F65
      6500595959005959590083838300838383008383830083838300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000004B5000004B5000000000097433F00CD666600C663
      6300E4E0E400922B2B00922B2B00E6E5E700E5E3E500E4E0E400CECACC00922B
      2B009E43410097433F0000000000000000000000000000000000000000002929
      AC000000840000008E0000008E0000008F0000008C0000008800000081000101
      540000000000000000000000000000000000EBD2CC00E8B59A00FAC99B00F2C0
      9A00E6B39900BD978900987F790076696900605D5D0059595900787878008383
      830083838300838383000000000000000000000000000004B5000004B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000004B5000004B500000000000000000097433F00CD656600C162
      6200E5E3E500922B2B00922B2B00E4E0E400E6E5E700E4E0E400CECBCC00922B
      2B009E43410097433F00000000000000000000000000000000002929AC000000
      96000000970000009B0000009F000000A00000009D000000970000008F000000
      880000006200000000000000000000000000F1D8CC00F9C79B00F5CFA600FFDE
      AB00FFD8A500FED2A000FACA9C00F3C09A00E7B49900C79D8D00A98981008673
      71006F656500595959008383830000000000000000000004B5000004B5000004
      B500000000000000000000000000000000000000000000000000000000000000
      00000004B5000004B50000000000000000000000000097433F00CD656600C162
      6200E5E3E500922B2B00922B2B00E4E0E400E6E5E700E6E5E700CECBCC00922B
      2B009E43410097433F000000000000000000000000002929AC000101A3000808
      9E009999D4006868D0000000AC000000AE000000A9004848B800B7B7E3002727
      A50000008C00010152000000000000000000F2DFD200FFE0AD00F9D6A900F9E9
      BC00FFF2BF00FFECB900FFE6B300FFDFAC00FFD9A600FFD3A000FCCB9C00F5C3
      9A00EBB89900B18B89008383830000000000000000000004B5000004B5000004
      B5000004B5000000000000000000000000000000000000000000000000000004
      B5000004B5000000000000000000000000000000000097433F00CD656600C162
      6200E6E5E700E6E5E700E4E0E400E4E0E400E4E0E400E4E0E400CECBCC00922B
      2B009E43410097433F000000000000000000000000002929AC000000AB002828
      A300DEDED200FEFEFF006464D4000000B3004646C000E7E7EC00FFFFF7005E5E
      B70000009A00020287000000000000000000F2E4D700FFF8C500FFF3C000F5E2
      B900FCF9CF00FFFECF00FFFCCA00FFF8C500FFF3C000FFEDBA00FFE6B300FFDF
      AC00EDBE9D00BA938900838383000000000000000000000000000004D6000004
      BD000004B5000004B500000000000000000000000000000000000004B5000004
      B500000000000000000000000000000000000000000097433F00CD656600C663
      6300C8676700C6717000C6717000C86A6A00C4636300C86C6C00CA666600C463
      6300CD65660097433F0000000000000000004B4BD3000707B1000303B9000000
      C2004C4CA700E6E6D900FCFCFF009E9EE600E8E9F400FFFFF1007575B9000606
      B1000101AB000202A00013145D0000000000F2E5DB00FFFFD300FFFFD000FFFE
      CD00F2E5C600FFFFE100FFFFDD00FFFFD800FFFFD400FFFFD000FFFDCB00F5E0
      B600FBCD9E00C7A28A0083838300000000000000000000000000000000000000
      00000004B5000004B5000004B500000000000004B5000004B5000004B5000000
      0000000000000000000000000000000000000000000097433F00B8646400C47C
      7B00C89E9E00CAA8A800CAA8A800CAA8A800C9A0A000C9A0A000CAA8A800CAA8
      A800CC66660097433F0000000000000000004B4BD3000808BB000707C8000505
      D1000000C8005353B600F2F2ED0000000000FFFFFC007575C9000000BE000101
      C3000303B8000303AC0010106F0000000000F2E6DE00FFFFDF00FFFFDC00FFFF
      D900FFFFD600EFDFD200FFFFF000FFFFEB00FFFFE700FFFFE200F5EBCB00FCE9
      B900FFE8B500C9AE950083838300000000000000000000000000000000000000
      0000000000000004B5000004C6000004C6000004CE000004B500000000000000
      0000000000000000000000000000000000000000000097433F00CC666600F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800CC66660097433F0000000000000000004B4BD3000C0CC9000D0DD8000B0B
      DC000000D6003C3DCE00EEEFED0000000000FFFFFD005858DB000000CA000303
      CB000606C5000606B8001212790000000000F2E6E000FFFFE900FFFFE700F2F2
      DC00BFDFDD00A7E6F200C3DDE500E2E2E300F2E6E000E3D6CF00FCF9CD00FFFF
      CF00FFFDCB00C9BAA00083838300000000000000000000000000000000000000
      000000000000000000000004C6000004C6000004DE0000000000000000000000
      0000000000000000000000000000000000000000000097433F00CC666600F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800CC66660097433F0000000000000000004B4BD3001414D8001717EA000B0B
      F1004343DB00E4E4EA00FDFDF500BABAD400EAEAE800FEFEFF006363E5000303
      D7000A0ACF000A0AC30021217F0000000000F2E6E300F9F2E900C5DDDF00D0F1
      F200F0FEFF00F0FFFF00DEFCFF00BFF5FF00ACEFFF00ADEFFF00C3D9D700FFFF
      D900FFFFD700C9BCA70083838300000000000000000000000000000000000000
      0000000000000004B5000004D6000004CE000004DE000004EF00000000000000
      0000000000000000000000000000000000000000000097433F00CC666600F8F8
      F800CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00F8F8
      F800CC66660097433F0000000000000000004B4BD3002626E5002222FB003F3F
      E900DCDCE500FDFDEE007373C5000303D7005151B000E3E3D600FFFFFE006161
      E5000808DB000F0FCA001212790000000000ECD9D900B2D0D900B7DCF1000000
      000000000000FAFFFF00F5FFFF00EEFFFF00E8FFFF00E2FFFF00C8F8FF00C4D9
      DB00FFFFE200C9BCAC0083838300000000000000000000000000000000000000
      00000004E7000004DE000004D60000000000000000000004E7000004EF000000
      0000000000000000000000000000000000000000000097433F00CC666600F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800CC66660097433F000000000000000000000000003131FB003232FF005252
      ED00B3B3C2007777CA000000EA000000EC000000E8005252B400ADADB0004D4D
      E1001818ED001818B100000000000000000000000000DFE3E6009BDAF8000000
      00000000000000000000FEFFFF00C1E0F500BCE0F600A9C7DD00ABC9E30071B4
      F100BFC7DE00C9BCB10097979700000000000000000000000000000000000004
      FF000004DE000004EF00000000000000000000000000000000000004FF000004
      F700000000000000000000000000000000000000000097433F00CC666600F8F8
      F800CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00F8F8
      F800CC66660097433F000000000000000000000000003131FB003E3EFB005353
      FF006868EF005757F9003838FF002525FD002929FF003838FC004242EB003232
      FF001F1FE9003131FB0000000000000000000000000000000000D9E5F2008FCF
      F80097DDFC0074CBF90080CDFA0094D2FF0091CCFF008CC5FF008BBDF90095B2
      E60090ADE600BFA5AB00000000000000000000000000000000000004F7000004
      F7000004FF000000000000000000000000000000000000000000000000000004
      F7000004F7000000000000000000000000000000000097433F00CC666600F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800CC66660097433F00000000000000000000000000000000003131FB004949
      FD006E6EFF009191FF009393FF008484FF007676FF006767FF005151FF003131
      FB003131FB00000000000000000000000000000000000000000000000000E2EB
      EC009BF3F90097F0FF0096E7FF0095DFFF0094D5FF0092CEFF008EC8FF0094B6
      E600D5D2E000000000000000000000000000000000000004F7000004F7000004
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000004F7000000000000000000000000000000000097433F00F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F80097433F000000000000000000000000000000000000000000000000003131
      FB003131FB006969FE008787FF009292FF007676FF005353FF005151F3003131
      FB00000000000000000000000000000000000000000000000000000000000000
      0000E2ECEC009CF6F90098F3FF0097EAFF0095E2FF0098D5F900B3C0D500D5D2
      E000000000000000000000000000000000000004F7000004F7000004F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003131FB003131FB003131FB003131FB003131FB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFECEC00B8E4E600A5DEE600BBD5DF00E8E8EC00000000000000
      0000000000000000000000000000000000000004F7000004F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8858500B885
      8500B8858500B8858500B8858500B8858500B8858500B8858500B8858500B885
      8500B88585000000000000000000000000000000000000000000000000000000
      0000000000000000000054B082C7309F68F0309F68F054B082C7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAEEECFFD5E3D5FFD6E4
      D6FFD7E4D7FFD7E4D8FFD7E4D7FFD8E6D8FFD8E5D7FFD6E6D6FFD5E5D6FFD4E3
      D4FFD5E4D4FFD5E3D5FFEAEEECFF0000000000000000FFEEDA00FFF6EB00FFF0
      E800FFECD500FFE7D500FFEAD000FFE5CF00FFE5D000FFE6D100FFEDCD00FFF2
      CE00B88585000000000000000000000000000000000000000000000000000000
      00002E9E66F3249A5FFF249A5FFF249A5FFF249A5FFF249A5FFF249A5FFF2E9E
      66F3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAF1ECFF84B584FF107310FF1073
      10FF187318FF187318FF187B18FF187B18FF107B10FF088408FF087B08FF087B
      08FF007B00FF007300FF84B584FFEAEFECFF00000000FFE3DC00F7C18C00E491
      3A00EFB98C00ECAD7900ECAD7900F9B17600F5A56400EDA66800DA812B00FFEB
      D100B8858500000000000000000000000000000000000000000000000000249A
      5FFF249A5FFF249A5FFF249A5FFF249A5FFF249A5FFF249A5FFF249A5FFF249A
      5FFF249A5FFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D7EAD7FF107B10FF218C21FF2994
      29FF319431FF299429FF299429FF299C29FF219C21FF18A518FF10A510FF08A5
      08FF009C00FF009400FF007300FFD6E4D5FF00000000FFEADE00F9C89F00E89A
      4A00F6C79900F2BF8E00FEC69800483532006698B600DCA08300DF8B3D00FFE8
      D400B88585000000000000000000000000000000000000000000269D62FF269D
      62FF269D62FF269D62FF269D62FF269D62FF269D62FF269D62FF269D62FF269D
      62FF269D62FF269D62FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D7EBD7FF188C18FF299429FF399C
      39FF399C39FF399C39FF39A539FFA5D6A5FFFFFFFFFF21AD21FF18AD18FF10B5
      10FF08AD08FF009C00FF007B00FFD5E4D5FF00000000FFE9DD00FFE1CD00FACF
      AD00F6C49900F4C19500F6C08A00ECAF7E00B2A08A00FFDDAD00C1835800FFEE
      DB00B88585000000000000000000000000000000000033A36CF3299F65FF299F
      65FF299F65FF299F65FF51AF81FFF9FBFAFF51AF81FF299F65FF299F65FF299F
      65FF299F65FF299F65FF33A36CF3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8EBD8FF218C21FF399C39FF42A5
      42FF4AA54AFF42A542FF42A542FFFFFFFFFFFFFFFFFFFFFFFFFF21B521FF18B5
      18FF08B508FF08A508FF007B00FFD5E4D5FF00000000FFF4EA00FBD0A900F2A9
      5C00FFF0F100FFE9E200FFEAE500FFEEDB00F1D4C700DAB8AE00FFDEBB00EC9B
      520046394100000000000000000000000000000000002DA36AFF2DA36AFF2CA3
      69FF2DA36AFF54B385FFF0F7F4FFF8FBFAFFEFF6F3FF44AD7AFF2DA36AFF2DA3
      6AFF2DA36AFF2DA36AFF2DA36AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9EBD9FF299429FF42A542FF4AA5
      4AFF52A552FF4AA54AFF42A542FF42AD42FFFFFFFFFFFFFFFFFFFFFFFFFF18AD
      18FF10AD10FF10A510FF088408FFD6E5D6FF00000000FFF2E600FFEADB00FCD8
      BB00F9CFA900F9C89F00F7CBA200F5C29700F6C29600F9C39200C5A28D00ECD3
      C200FFB97C000D00000000000000000000005FBB8EC731A76EFF31A76EFF31A7
      6EFF58B789FFF7FAF9FFEDF6F2FFC6E1D4FFF2F8F6FFEDF6F1FF47B07DFF31A7
      6EFF31A76EFF31A76EFF31A76EFF000000000000000000000000000094000000
      9400000094000000940000009400000094000000940000009400000094000000
      940000009400000094000000000000000000DBECDBFF319431FF4AA54AFF52AD
      52FF52A552FF4AAD4AFF4AA54AFF42A542FF39AD39FFFFFFFFFFFFFFFFFFFFFF
      FFFF18AD18FF18A518FF107B10FFD7E6D7FF00000000FFFDF300FFDBBC00FBBE
      8100FCD9BB00FCD5B400FAD1AD00F8CEA800F6C59D00F7C9A300F6B47000C79E
      9C00F3D1BF00FFDB9800534538000000000041B07DF035AB74FF31A76EFF69BE
      95FFFCFDFDFFDCEEE5FF68BC94FF35AB74FF5BB98DFFF5F9F7FFE6F4EEFF4CB5
      84FF35AB74FF36AC75FF36AC75FF40AF7CF00000000000000000000094000000
      FF000000FF000000FF000000FF000000FF000000E1000000E1000000BF000000
      BF000000BF00000094000000000000000000DBECDBFF429C42FF52AD52FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF219C21FF188418FFD7E5D8FF00000000FFFFF400FFDEC200FCC1
      7A00FDD9BB00FDD9B800FBD4B000FCD2AE00FACFA900FBCCA600F3B47500FFFD
      EE006B413D00E5C0A20091C1FF000913510047B381F03CAF7AFF31A76EFFF4F9
      F7FF8FCFB0FF32A86FFF31A76EFF31A76EFF31A76EFF58B789FFF6F9F8FFE3F2
      EBFF47B07DFF3CAF7AFF3CAF7AFF47B381F00000000000000000000094000000
      FF000000FF000000FF000000FF000000FF000000FF000000E1000000E1000000
      BF000000BF00000094000000000000000000DBECDBFF429C42FF5AAD5AFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF219C21FF188418FFD7E5D8FF00000000FFFEF000FFFDFD00FFF7
      F700FFFCFC00FFF2EF00FFF2EE00FFF2EE00FFEEE800FFEBE400FFEBE400FFF5
      E700B88585002C221B00151D4A0026242A006AC39BC742B481FF35AB74FF36AC
      75FF35AB74FF36AC75FF35AB74FF35AB74FF36AC75FF35AB74FF5CBA8EFFF8FA
      FAFFCDE9DCFF41B380FF41B380FF6AC39BC70000000000000000000094000000
      9400000094000000940000009400000094000000940000009400000094000000
      940000009400000094000000000000000000DCEDDCFF52A552FF63B563FF63AD
      63FF5AAD5AFF52A552FF4AA54AFF429C42FF319C31FFFFFFFFFFFFFFFFFFFFFF
      FFFF219C21FF299429FF217B21FFD8E5D7FF00000000FFFFF900FFFDFC00FFFC
      FB00FFF7F200FFF9F500FFF4EE00FFEDE400FFF0EA00FFEEE700FFE9DE00FFFD
      F100B88585000000000000000000000000000000000048B886FF48B886FF48B8
      86FF48B886FF48B886FF48B886FF48B886FF48B886FF48B886FF48B886FF76C8
      A4FFEFF6F3FF48B886FF48B886FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFEEDFFF52A552FF6BB56BFF6BB5
      6BFF5AAD5AFF52A552FF4AA54AFF429C42FFFFFFFFFFFFFFFFFFFFFFFFFF2994
      29FF299C29FF299429FF217B21FFD9E5D9FF00000000FFFFF70000000000FFFA
      F800FFFBFA00FFF7F200FFF5F100FFFAF700FFEEE600FFF0E900FFFEFF000000
      0000B88585000000000000000000000000000000000056BF91F34EBC8CFF4EBC
      8CFF4EBC8CFF4EBC8CFF48B886FF48B886FF4EBC8CFF4EBC8CFF4FBD8DFF4EBC
      8CFF4EBC8CFF4EBC8CFF56BF91F3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0EFE0FF5AAD5AFF7BBD7BFF73B5
      73FF63B563FF5AAD5AFF52A552FFFFFFFFFFFFFFFFFFFFFFFFFF319431FF319C
      31FF319431FF319431FF217B21FFD9E5D9FF00000000FFFFFD00000000000000
      000000000000FFFBF800FFFCFA00FFF7F200FFFBF900FAE5D400EE986200FE90
      5F006C565500000000000000000000000000000000000000000055C092FF54C0
      91FF55C092FF54C091FF4EBC8CFF4EBC8CFF54C091FF54C091FF55C092FF54C0
      91FF54C091FF55C092FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0EFE0FF6BB56BFF8CC68CFF84C6
      84FF73B573FF6BB56BFF63AD63FFB5DEB5FFFFFFFFFF4AA54AFF4AA54AFF42A5
      42FF399C39FF319431FF187B18FFD8E5D8FF0000000000000000000000000000
      0000000000000000000000000000FFFBF900FFFAF700F0DCD300FFBB4400CF9A
      5200000000000000000000000000000000000000000000000000000000005BC3
      97FF5BC397FF5BC397FF5BC397FF5CC498FF5BC397FF5BC397FF5CC498FF5BC3
      97FF5BC397FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3F2E3FF7BBD7BFF9CCE9CFF8CC6
      8CFF7BBD7BFF73BD73FF6BB56BFF63AD63FF63B563FF5AAD5AFF52AD52FF4AA5
      4AFF42A542FF319431FF187B18FFD7E4D7FF0000000000000000000000000000
      00000000000000000000000000000000000000000000FFFDEE00D0B08B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000067C89FF360C69BFF60C69BFF60C69BFF61C79DFF61C79DFF61C79DFF67C8
      9FF3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECF2EEFFB5DEB5FF73B573FF6BB5
      6BFF5AAD5AFF52A552FF52A552FF4AA54AFF4AA54AFF42A542FF429C42FF399C
      39FF319C31FF218C21FF8CBD8CFFE9EDEBFF00000000FDCFA100FDCFA100FDCF
      A100FDCFA100FDCFA100FDCFA100FDCFA100FDCFA100FDCFA100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000087D4B4C76FCCA5F06FCCA5F086D4B4C7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBF0EDFFE0F0E0FFE0EF
      E0FFDFEFDFFFDEEEDEFFDEEEDEFFDEEEDEFFDFEEDFFFDDEDDDFFDCEDDCFFDCED
      DCFFDAECDAFFD8E9D8FFEBF1EDFF000000000000000000000000000000000000
      000000000000000000008C8E8C0000000000000000008C8E8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000086622200805E21007D5B200079581F007455
      1E0071521E007B5A210088642500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737173004A494A00313031004241420042414200B5A6A500393839006361
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000006D655F006D655F006D655F006C66610075727000000000000000
      0000000000000000000000000000000000000000000000000000886322007756
      1E006F511C006A4E1B00775F3200826E47009D917300A8A08400B8B49F00CED2
      C300DAE2D400C2C1A9007A5A210000000000000000008596DC000F30B5001636
      B8001A39B8001A39B7001839BB001739B9001337BD000D35C0000A32C000072F
      BE00022CC0000026B6007F90D100000000000000000000000000000000004241
      4200EFEFEF00EFEFEF00B5B6B500BDAEAD007B696B007B797B00D6D7D600F7F7
      F700525152005A595A0000000000000000000000000000000000000000000000
      0000C06F2A00A6653000BD601800B1521100AB4F1800B6682E00000000000000
      0000000000000000000000000000000000001E6C1F001E6C1F0087A68800C5D2
      C600D3DCD200FAFFFC00F9FFFB00F8FFFA00F7FFFA00F6FFF900F4FFF800F3FF
      F800F2FFF700C1D2BF007959210000000000000000001138D4001F44D9002A4D
      DA002F51DA002E51DB002C51DB002951DC00244FDF001C4BE0001547E0000D42
      E000053AE0000132D7000026B500000000000000000073717300C6C7C600F7F7
      F700EFEFEF00E7E7E700ADAEAD00B5B6B5006B696B005A595A007B797B009C9E
      9C00C6C7C600000000008C8E8C0000000000000000000000000000000000C06F
      2A00CB722000D77C2000B3652600000000000000000000000000000000000000
      0000000000000000000000000000000000001E6C1F009BB99D00C3D0C500FDFF
      FD00FCFFFD00FBFFFC00F9FFFB00F7FEF900F6FEF8008BC099000C6F32000C6F
      3200E8F8EF00D7E7DA007757200000000000000000001941DE002C50E1003759
      E3004464E5007E94ED00E2E8FB000000000000000000DCE4FB007192F100134B
      E9000A43E8000439E000022BBE000000000000000000D6D7D600F7F7F700EFEF
      EF00E7E7E700737173007B797B00A5A6A500B5B6B500B5B6B500B5B6B5009496
      9400313031007B797B008C8E8C00000000000000000000000000C06F2A00D078
      2500E8912B00B666210000000000000000000000000000000000000000000000
      00000000000000000000000000000000000020702100B6CDB80082A28500FDFF
      FE00B9DDBB007DBF81006CB771006CB7710060AE6900127336000C6F320058A6
      6800DCF2E000EEFBF2007456200000000000000000002248DF00385AE3004363
      E400A2B2F20000000000BBC8F600728FEE006F8FEF00BACAF8000000000098B1
      F6000E48E900083EE100052EC1000000000000000000CECFCE00E7E7E7007371
      7300CECFCE00D6D7D6009C9E9C00A5A6A5008486840073717300A5A6A500BDBE
      BD0073A68400737173008C8E8C00000000000000000000000000C06F2A00E58E
      2D00DC8427008355310000000000000000000000000000000000000000000000
      00000000000000000000000000000000000022732200BAD1BB003C744000FEFF
      FE00FDFFFE00BEE0C0006FB974006BB67000207E3F000C6F32005FA3770062AF
      6A009BCEA200F4FFF8007F65330000000000000000002C51E1004261E4008B9E
      EE00000000008398EE004669E6004066E7003763E8002C5DE9007294F1000000
      00006B8DF0000F43E1000B33C100000000000000000073717300E7E7E700DEDF
      DE00D6D7D600DEDFDE00E7E7E700EFEFEF00DEDFDE00B5B6B500B5B6B5009496
      9400636163007B797B008C8E8C00000000000000000000000000C06F2A00EA95
      3100DB8225007F4E2A0057514C00706963000000000000000000B25F1D00BA57
      06000000000000000000000000000000000025762400BBD2BC001D5F2200EAEF
      EB00FEFFFE00FDFFFE00DDEFDE00439658000C6F32001B7A3C00B7DDBC00F8FF
      FA00F7FFFA00F6FFF9008B754B0000000000000000003558E2004B68E500EBEF
      FC00BBC6F5004E6DE600496AE60000000000000000002D5CE8002456E800B6C7
      F800DBE3FB001848E0001238C2000000000000000000E7E7E700DEDFDE00D6D7
      D600CECFCE00D6D7D600EFEFEF00EFEFEF00BDBEBD00BDBEBD00E7E7E700E7E7
      E700CECFCE008C8E8C008C8E8C0000000000C06F2A00C76F2700E18B2F00EC97
      3200E48D2900C76E1D00BB5F1700A46F410000000000AE673000C7620200C964
      0000A9530F0000000000000000000000000027792600BBD2BC001E612300B6CB
      B700FFFFFF00FEFFFE00C1DBCC000F7134000F7134005AA965006CB77100A1D2
      A500F5FDF700F7FFFA009989640000000000000000003F5FE400536FE7000000
      00008195ED00506DE6004868E50000000000000000002C58E6002352E6006587
      EE00000000001F4CDF00183CC00000000000000000008C8E8C00D6D7D600D6D7
      D600B5B6B500D6D7D600F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7E700DEDF
      DE00ADAEAD0063616300000000000000000000000000C06F2A00ED9A3600EC97
      3100E8912B00DD832200B166260000000000C8640700C8640700CC660100CB65
      0000C7610100985018000000000000000000297D2700BBD2BC001F64240088A9
      8A00FFFFFF00EEF5F1000F7135000C6F32008EBDA000E1F0E2006CB771006CB7
      71008AC68E00E9F7EB00A89B7C0000000000000000004564E5005A75E8000000
      00008195ED00506CE6004867E50000000000000000002C55E4002450E4006483
      EC0000000000254EDE001D3FBF0000000000000000000000000000000000EFEF
      EF00EFEFEF00ADAEAD00BDBEBD00ADAEAD008C8E8C00A5A6A500E7E7E700B5B6
      B5007B797B000000000000000000000000000000000000000000C06F2A00EC97
      3100E58F2A00BD68210000000000C8640700BB5B0E00CB670600CB660100CA64
      0000C9630100BD5A0600AD6A3700000000002C802800D0E3D10074AB77008AB3
      8C00FFFFFF003D8C5B002D834E005EA37300FDFFFE00FDFFFD00FCFFFD00FBFF
      FC00FAFFFC00F9FFFB00BCB1950000000000000000004F6CE600637DE800EFF1
      FD00B7C2F500516CE6004865E40000000000000000002C52E200264EE200B0BF
      F500E0E6FB002A50DC002141BF0000000000000000000000000000000000BDB6
      B500FFB6A500FFC7BD00FFE7DE00EFEFEF00D6D7D600D6D7D6006B696B000000
      000000000000000000000000000000000000000000000000000000000000C06F
      2A00CC73230000000000C8640700A4735200A4735200C1723300C9640100CA64
      0000A9541200A4735200A4735200A4735200297C1D00D5E6D50085BA87007FB2
      8100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFE00FDFFFE00FDFFFD00FCFF
      FD00FBFFFC00FAFFFC00D2C9B0000000000000000000536FE7006C85EA0097A9
      F100000000008093ED004C67E5004261E4003A5BE3003054E2006C86EB000000
      0000728AEC002D51DC002342BE0000000000000000000000000000000000B58E
      8C00FFDFB500FFDFB500FFDFB500FFDFB500FFD7B5006B595A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B25F1D00C7620200C560
      02008D572E000000000000000000000000003B8D3700CFE4CE009ACA9C0082BB
      8400D1E4D100CADFCB00CBE0CB00CBE2CC00BBDABC00B3D6B400A2CFA40095CA
      9800D1E5D1006EAB6B00A8874A0000000000000000005E79E8007A91EC007089
      EB00A6B5F20000000000B1BDF4007086EA006B83E900B0BDF4000000000095A8
      F0003053E1002F52DB002342BD0000000000000000000000000000000000BD96
      8C00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE007B797B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B25F1D00CB660100BD59
      0600AD7142000000000000000000000000004F7D240099C69700E5F2E60090C8
      930090C8930090C8930090C8930090C8930090C8930090C8930090C8930094CA
      9700EBF7EB002E8D25000000000000000000000000006B85EA008DA1EF008097
      ED006F88EB0097A8F000EEF0FC000000000000000000E9EDFC00899DEE004162
      E4003A5CE3003053DC001E3EBC0000000000000000000000000000000000F7DF
      CE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00F7DFCE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000089837F00806B5E00A55F2800CA670700C35F0400AD71
      420000000000000000000000000000000000000000002A852200C0DDBF00E8F5
      E900AEDAB0009CD29F009CD29F009CD29F009CD29F009CD29F009CD29F0097CC
      9A00EBF7EB002E8D2500000000000000000000000000778EEC009DAEF1008CA0
      EF007990EC007089EB006A83E900657EE900627CE9005D78E8005673E7004E6C
      E6004162E4002F52DB001939BA00000000000000000000000000BD968C00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00A586840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF6D3100B6571500B9591200BF5D0F00BF621800AD7142000000
      00000000000000000000000000000000000000000000000000002E89240093C5
      9000D7EBD600EBF7EB00EBF7EB00EBF7EB00EBF7EB00EBF7EB00EBF7EB00EBF7
      EB00EBF7EB002E8D2500000000000000000000000000B2BFF400768DEC006781
      EA005B76E8005470E7004F6CE6004A69E6004B69E5004665E5003F60E3003B5D
      E3003154E2002347D8008A9BDE00000000000000000000000000EFE7DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004D7E
      270044993C002E8D25002E8D25002E8D25002E8D25002E8D25002E8D25002E8D
      25002E8D25002E8D250000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00575757007777
      7700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD02ECECEC13F2F2F20D989898678E8E8E71E0E0E01F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0E9EB16886F8C9E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB0073758900AA878E005F5B
      5B00777777000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F20D96847DC6E0B4B3F4B2958AEDF9C5C3FFFFCACAFF9393936CAAAAAA55C7C7
      C738000000000000000000000000000000000000000000000000000000000000
      0000F7F4F50B664E9FBF2603E6FF1431B0FF3C317FEB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003760700037607000376070003760700000000000000
      00000000000000000000000000000000000089B0CA004088DF007376A800AD89
      8E005F5B5B007777770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5F5F50ABDA1
      99CBEDB8B1FFFFC3C3FFE7B7AEFFFFC3C4FFFFC7C7FF9F8579F0FFC3C4FF8771
      71D6D1D1D12E0000000000000000000000000000000000000000FCFBFB047B61
      9CAA2506E4FF2A00E1FF2000E5FF463195FF1D1EB5FBBA2AB3D6994088C6FCFC
      FC03000000000000000000000000000000000000000000000000000000000000
      000000000000000000000376070018A430001AB3330003760700000000000000
      000000000000000000000000000000000000BDE3FF0052B8FF004385D9007979
      A700AD898E005F5B5B0077777700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB04B3988AE6B187
      87E9D4AA9AFFFFBCBDFFFFBCBCFFFFBCBCFFFFBCBCFFFFBDBEFFFFBCBCFFE5AB
      ABF5ECECEC13F8F8F807000000000000000000000000876E9F9C2309E1FF2A00
      E1FF1E00E4FF620696FFCD9D00FFC48B00FFC55378FFFC01FDFFC901DAFFEAE2
      E51D000000000000000000000000000000000000000000000000000000000000
      00000000000000000000037607001DA93A0020B9400003760700000000000000
      00000000000000000000000000000000000000000000A5D8FF0053B9FF004385
      D9007979A700AD898E005F5B5B00969696000000000000000000000000000000
      00000000000000000000000000000000000000000000C4A9A1BEF9B2AFFFFFB5
      B5FFFFB6B6FFFFB5B5FFFEB4B4FFF0B4AEFFF8B3B0FFFFB5B6FFFFB5B5FFA77F
      7FE1887977AE6564649EF8F8F80700000000230BD6FF2A00E2FF2600DCFF5508
      A9FFF62305FFFD2A00FFD3B300FFC18601FFDD5074FFFF00FFFFB400C6FFEBE3
      E61C000000000000000000000000000000000000000000000000000000000000
      000000000000000000000376070021AE430026BF4D0003760700000000000000
      00000000000000000000000000000000000000000000000000008CCCFF0053B8
      FE004483D6007979A700987D820081818100A1A1A1006C6C6C00575757005757
      5700626262008C8C8C00000000000000000000000000E5D9D845CDA895FFFFAF
      AFFFFFAEAEFFECA3A3F7F1F1F10E00000000E2D4D158CDA694FFFFAFB0FFFFAE
      AEFFFFAFAFFFCA9090EDD6D6D629000000002B00E5FF2700D5FF3700D2FFFE4D
      00FFF66300FFF85E00FFE4D900FFB87500FFD93C7AFFEE05F2FF9D00B3FFECE4
      E71BAE847C92AD837C92AB817C93F8F5F60A0000000000000000037607000376
      070003760700037607000376070029B953002EC75D0003760700037607000376
      0700037607000376070000000000000000000000000000000000000000008ECE
      FF0053B8FE00588CCF008B8B8E008B757500BC9A8600CEB09600E0C7AE00D2B4
      A4008B747200575757008C8C8C0000000000000000009B929086B79288F3FCA7
      A5FFFFA8A8FFA1A1A15E000000000000000000000000E0D0CE61D5A394FFFFA8
      A8FFFFA8A8FFD59F9FC6FEFEFE01000000002B00E4FF2800D9FF3600D1FFF38B
      00FFF18C00FFFD7700FFCE9F00FFEDE000FFC7299CFFB611C8FF8900A3FFE9E1
      E41EFDEF00FFF2DC00FFDBAC00FFAF87848A0000000000000000037607004DE5
      800048E17B0040D973003BD46E003BD46E0032CB64002DBF590021AD42001DA9
      3A0016A22B000376070000000000000000000000000000000000000000000000
      0000A5D8FF00C9D0D400AB8B8800F1CFA900FFF5C500FFFDD100FFFFDB00FFFF
      DC00F5EFE0009F858100575757008C8C8C0000000000D6A293FFFFA1A1FFFFA1
      A1FFFFA1A1FFCACACA3500000000000000000000000000000000CBAE9BFFFFA1
      A2FFFFA1A1FF6565659ABABABA45000000002B00E4FF2800D9FF3600D1FFFFAA
      00FF977600FF0CA400FF217D00FFBD03DEFFA512BDFFED4DF2FFAE29C2FFF0EB
      ED14C5964BBBDDB60EF2E0C20EF2BC9A987400000000000000000376070055ED
      88004DE5800048E17B0040D973003BD46E0032CB64002EC75D0026BF4D001FB8
      3D001AB333000376070000000000000000000000000000000000000000000000
      000000000000E2CECE00EFC9A600FFF2C000FFF7C400FFFFD800FFFFE800FFFF
      F80000000000F3EDDA007B6161006C6C6C0000000000D2A291FFFF9A9AFFFF9B
      9BFFFF9B9BFFADADAD5200000000000000000000000000000000C6A9A0CCF69A
      97FFFF9B9BFFFF9B9BFF585858A7000000002B00E4FF2800D9FF3003D1FF03D2
      00FF0FC900FF0AD600FF339600FFF8A8FAFFFFF1FFFFF7C9F5F5A48790952971
      07FEF0EAED1500000000000000000000000000000000000000000C7812000376
      070003760700037607000370060040D9730038D16B0003700600037006000370
      0600037006000370060000000000000000000000000000000000000000000000
      000000000000E0BDB300FFF1C200FFE4B100FFF9C600FFFFDB00FFFFEC00FFFF
      FB00FFFFF700FFFFDA00B79E8C00575757000000000000000000BEA598E8F394
      91FFFA9494FF6464649BFCFCFC03000000000000000000000000C2A69FC7F693
      92FFFA9494FFFC9394FF8484847B000000003509E6FF300CDBFF3210D3FF00FF
      00FF04E800FF23D117FF33AD0DFF4564C7FFDECAD437C6BCBA4C0ACD00FF55F3
      50FFDDD0D5300000000000000000000000000000000000000000000000000000
      000000000000000000000370060047E07A0040D9730003700600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5BDA300FFF5C900FFDDAA00FFF5C200FFFFD600FFFFE500FFFF
      EC00FFFFE700FFFFD900CCB299005757570000000000CEC1BD74EB928EFFF48E
      8EFFF48E8EFFAC6F6FE5ADADAD52000000000000000000000000C7AC98FFF58D
      8EFFF78B8DFE91918F7B00000000000000004C2AEAFF4326DEFF432ED3FF73D7
      5FFFB5FFB3FF72D06DFF0999CBFF007AB9FFB8A8A26505EF00FF57FF56FFC9B9
      BC4F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000037006004DE5800045DE780003700600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5BFA600FFF5C900FFE6B900FFEFBC00FFFFCD00FFFFD700FFFF
      DB00FFFFD800FFFCD100CCAC93006C6C6C0000000000C7A9A1C9E08B86FFED86
      86FFED8686FFEC8686FF875D5DDA86868679DEDEDE21A99994ACE68A86FFEC86
      86FFEC8686FF9F6566E2C7C7C738000000006349EEFF5741E1FF5D48E9FF5C44
      E0FF1F20A2FF00A1F1FF00ADF4FF0086CDFFEEE7E91873B965BCCEC0C2480000
      000000000000E1D5DB2B00000000000000000000000000000000000000000000
      000000000000000000000370060052EB85004DE5800003700600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0C0B600FFF6CD00FFF2D700FFE3B900FFF1BF00FFF5C200FFF9
      C700FFF7C400FFF6C600B79481008C8C8C0000000000FBFAFA08D8C4B8A0E5D0
      CF54CE9A8AFFE57F7FFFE57F7FFFE37F7FFEDA7E7DFBE67F7FFFE57F7FFFE47F
      7FFFE67E7FFFDA7C7CFAECECEC13000000007968F1FF6D5BE7FF4550C9FF1F3F
      E0FF1828EDFF02B7E7FF00CCF9FF0092E2FFF1EBED1400000000000000000000
      0000DECFD731F104FAFFA26A8F99000000000000000000000000000000000000
      0000000000000000000003700600037006000370060003700600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCC5C500EFDAC20000000000FFF7EA00FFECBF00FFDFAC00FFE3
      B000FFF0BD00F3D2A8009076760000000000000000000000000000000000C7B3
      AF94D6817BFFDE7878FFDE7676FFDE7878FFDE7878FFDE7777FFDE7878FFB271
      70F0C5A697E4EEE5E5240000000000000000606AE1FF546BCCFF7A7EF3FF566E
      E4FF01C6DEFF00E0F7FF10B2D2FF00C5ECFFF5F0F10F0000000000000000E1D5
      DB2BFF03FFFFE935EFFFBC8FB27B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D8BCBA00F1E5DD00FFFBE800FFF8CD00FFEEBC00FFF3
      C600F5CFA400B9938A000000000000000000000000000000000000000000D3BC
      B799CC8E81FFD96F70FFCBAE9DF9D67070FFD76E6FFFCAA08EFFD86F70FFD871
      71FFCBCBCB340000000000000000000000008795E5F37E92EBFF8592AA8F00FB
      FEFF26C1DAFF71F9FFFF6CA8BDBD000000000000000000000000E4D9DF27FF01
      FFFFE968EFFFBC93B27D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCC5C500D2B19E00CEA88E00E0B89E00DCB3
      A0008C8C8C000000000000000000000000000000000000000000000000000000
      0000F1EAE736F6F1F114C4A89CEACE6C6AFFD26667FFBEAAA4ACCA857DF0EAD9
      D937000000000000000000000000000000000000000000000000FAF9F90678B8
      CED784A7BBB60000000000000000000000000000000000000000C883C481DE89
      E6FFBA8DB086000000000000000000000000424D3E000000000000003E000000
      2800000040000000700000000100010000000000800300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F0FFFFFFFFFFCFFFF0FFFC1F807FC3FF
      F03FF0070000C1FFF03FE0030000C07F000FC0030000C03F000FC7818000C01F
      00038F01C003C00700038E218003C003C0008C610001C003C00088E30001C00F
      F00081E30001C03FF000C3C70001C07FFC0FC00F8101C0FFFC0FE01FC383C3FF
      FF0FF87FFFC7C7FFFF0FFFFFFFFFCFFFFFFFFF3FF81F01FF8007FE1FE007003F
      8007FC1FC00300078007F007900100008007C003A10100008007800100000000
      8007000100040000800700000000C000800100000000E000800104000040E000
      800700004044E000800700008281E0008007A44DA00BEE0080079C7BD837FE00
      800FCC67E78FFE00C01FF39FF83FFE00FFFFFFFF87FFFFFFC007F83F003FFFFC
      8003E00F00039FF98003C00700018FF380038003000187E7800380030001C3CF
      800300010001F11F800301010001F83F800301010001FC7F800300010001F83F
      800300011801F19F800380039C01E3CF80038003C003C7E78003C007E0078FFB
      C007E00FF00F1FFFFFFFF83FF83F3FFFC007FC3FFFFF80018007F00FFFFF0000
      8007E007FFFF00008007C003FFFF000080078001FFFF000080078001FFFF0000
      80030001C003000080010000C003000080000000C003000080000000C0030000
      80078001FFFF0000A0178001FFFF0000B807C003FFFF0000FE0FE007FFFF0000
      FF9FF00FFFFF0000803FFC3FFFFF8001FDBFFFFFFE01FFFFF00FF83FC0018001
      E003F03F000180018005E1FF000181818001C3FF000184218001C3FF00018811
      8001C0CF0001818180010087000191898003810300019189E007C20100018181
      E01FE40000018811E03FFF8700018421E03FFF8700038181E07FFC0F80038001
      C07FF81FC0038001DFFFFFFFE003FFFFFFFF8FFFF03FFCFFFFFF07FFE00FF07F
      FC3F03FFC007C00FFC3F01FF8003800FFC3F80FF8001000FFC3FC00381010000
      C003E00183810000C003F00083C10000C003F80883C10007C003F800C1C10007
      FC3FF80081C3000FFC3FF8008001001BFC3FF80080010071FC3FF901E0030061
      FFFFFC03E00701C3FFFFFE07F00FC7C700000000000000000000000000000000
      000000000000}
  end
end
