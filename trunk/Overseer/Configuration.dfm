object ConfigurationForm: TConfigurationForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
  ClientHeight = 239
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 202
    Width = 594
    Height = 37
    Align = alBottom
    BevelEdges = [beTop]
    BevelKind = bkTile
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 0
    object btnApply: TButton
      Left = 334
      Top = 5
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = Action_Apply
      Default = True
      TabOrder = 1
    end
    object btnClose: TButton
      Left = 421
      Top = 5
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = Action_Close
      Cancel = True
      TabOrder = 2
    end
    object btnHelp: TButton
      Left = 508
      Top = 5
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = Action_Help
      TabOrder = 3
    end
    object btnDefaults: TButton
      Left = 5
      Top = 5
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = Action_Defaults
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 1
    object gbHeader: TGroupBox
      Left = 5
      Top = 5
      Width = 584
      Height = 45
      Align = alClient
      Caption = ' '#1053#1072#1089#1090#1088#1086#1081#1082#1080': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cbPage: TComboBox
        Left = 9
        Top = 15
        Width = 510
        Height = 21
        Style = csDropDownList
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnSelect = cbPageSelect
        Items.Strings = (
          ' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1072
          ' '#1074#1077#1076#1077#1085#1080#1103' '#1087#1088#1086#1090#1086#1082#1086#1083#1072' '#1088#1072#1073#1086#1090#1099
          ' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1086#1090#1095#1105#1090#1086#1074
          ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' MySQL-'#1089#1077#1088#1074#1077#1088#1091' OVERSEERSERVER'
          ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' MySQL-'#1089#1077#1088#1074#1077#1088#1091' STATSERVER'
          ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' MySQL-'#1089#1077#1088#1074#1077#1088#1091' DBSERVER'
          ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' MySQL-'#1089#1077#1088#1074#1077#1088#1091' RNE4SERVER'
          ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' FTP-'#1089#1077#1088#1074#1077#1088#1091' '#1040#1057#1050#1056)
      end
      object btnNextPage: TButton
        Left = 553
        Top = 15
        Width = 22
        Height = 22
        Cursor = crHandPoint
        Action = Action_NextPage
        Images = MainForm.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object btnPreviousPage: TButton
        Left = 525
        Top = 15
        Width = 22
        Height = 22
        Cursor = crHandPoint
        Action = Action_PreviousPage
        Images = MainForm.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 55
    Width = 594
    Height = 147
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object gbPage: TGroupBox
      Left = 5
      Top = 5
      Width = 584
      Height = 137
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 5
        Top = 4
        Width = 574
        Height = 129
        ActivePage = ts2
        Align = alCustom
        Style = tsButtons
        TabOrder = 0
        TabStop = False
        object ts1: TTabSheet
          Caption = ' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1072
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object vleInterface: TValueListEditor
            Left = 0
            Top = 0
            Width = 566
            Height = 117
            Align = alTop
            Strings.Strings = (
              #1042#1089#1077#1075#1076#1072' '#1086#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1080#1082#1086#1085#1082#1091' '#1074' '#1090#1088#1077#1077'='#1053#1077#1090
              #1058#1088#1077#1073#1086#1074#1072#1090#1100' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1087#1088#1080' '#1074#1099#1093#1086#1076#1077' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'='#1044#1072
              #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1083#1086#1075#1080#1085' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'='#1053#1077#1090
              #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1087#1072#1088#1086#1083#1100' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'='#1053#1077#1090
              #1042#1099#1087#1086#1083#1085#1103#1090#1100' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080#1081' '#1074#1093#1086#1076'='#1053#1077#1090
              #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1074#1085#1077#1096#1085#1102#1102' '#1087#1088#1086#1075#1088#1072#1084#1084#1091' '#1074#1077#1076#1077#1085#1080#1103' '#1087#1088#1086#1090#1086#1082#1086#1083#1072'='#1053#1077#1090
              #1042#1099#1073#1088#1072#1090#1100' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102'='
              #1055#1088#1086#1082#1088#1091#1095#1080#1074#1072#1090#1100' '#1086#1082#1085#1086' '#1087#1088#1086#1090#1086#1082#1086#1083#1072' '#1082' '#1087#1086#1089#1083#1077#1076#1085#1077#1084#1091' '#1101#1083#1077#1084#1077#1085#1090#1091' '#1089#1087#1080#1089#1082#1072'='#1044#1072
              #1047#1072#1087#1091#1089#1082#1072#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1091' '#1087#1088#1080' '#1089#1090#1072#1088#1090#1077' Windows='#1044#1072
              #1047#1072#1087#1091#1089#1082#1072#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1091' '#1074' '#1074#1080#1076#1077' '#1079#1085#1072#1095#1082#1072' '#1074' '#1090#1088#1077#1077'='#1044#1072
              #1055#1086#1076#1072#1074#1072#1090#1100' '#1079#1074#1091#1082#1086#1074#1086#1081' '#1089#1080#1075#1085#1072#1083' '#1087#1088#1080' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1080' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1076#1077#1081#1089#1090#1074#1080#1103'='#1044#1072
              #1042#1099#1074#1086#1076#1080#1090#1100' '#1087#1086#1076#1089#1082#1072#1079#1082#1091' '#1074' '#1090#1088#1077#1077' '#1087#1088#1080' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1080' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1076#1077#1081#1089#1090#1074#1080#1103'='#1044#1072)
            TabOrder = 0
            TitleCaptions.Strings = (
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
              #1047#1085#1072#1095#1077#1085#1080#1077)
            ColWidths = (
              289
              254)
          end
        end
        object ts4: TTabSheet
          Caption = ' '#1074#1077#1076#1077#1085#1080#1103' '#1087#1088#1086#1090#1086#1082#1086#1083#1072' '#1088#1072#1073#1086#1090#1099
          ImageIndex = 2
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label2: TLabel
            Left = 285
            Top = 0
            Width = 254
            Height = 13
            Caption = #1057#1073#1088#1072#1089#1099#1074#1072#1090#1100' '#1087#1088#1086#1090#1086#1082#1086#1083' '#1088#1072#1073#1086#1090#1099' '#1074' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083':'
          end
          object Bevel1: TBevel
            Left = 0
            Top = 19
            Width = 273
            Height = 99
            Shape = bsFrame
          end
          object Label3: TLabel
            Left = 0
            Top = 0
            Width = 152
            Height = 13
            Caption = #1042#1077#1089#1090#1080' '#1083#1086#1075' '#1088#1072#1073#1086#1090#1099' '#1087#1088#1086#1075#1088#1072#1084#1084#1099':'
          end
          object Bevel2: TBevel
            Left = 285
            Top = 19
            Width = 273
            Height = 99
            Shape = bsFrame
          end
          object chkbxKeepInfoLog: TCheckBox
            Left = 9
            Top = 26
            Width = 257
            Height = 17
            Caption = #1074#1099#1074#1086#1076#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1099#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
            TabOrder = 0
          end
          object chkbxKeepWarningLog: TCheckBox
            Left = 9
            Top = 43
            Width = 257
            Height = 17
            Caption = #1074#1099#1074#1086#1076#1080#1090#1100' '#1074#1072#1078#1085#1099#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
            TabOrder = 1
          end
          object chkbxKeepErrorLog: TCheckBox
            Left = 9
            Top = 60
            Width = 257
            Height = 17
            Caption = #1074#1099#1074#1086#1076#1080#1090#1100' '#1089#1086#1086#1073#1097#1077#1085#1080#1103' '#1086#1073' '#1086#1096#1080#1073#1082#1072#1093
            TabOrder = 2
          end
          object chkbxKeepSQLLog: TCheckBox
            Left = 9
            Top = 77
            Width = 257
            Height = 17
            Caption = #1074#1099#1074#1086#1076#1080#1090#1100' '#1090#1077#1082#1089#1090' SQL-'#1079#1072#1087#1088#1086#1089#1086#1074
            TabOrder = 3
          end
          object chkbxFlushLogOnStringsQuantity: TCheckBox
            Left = 294
            Top = 49
            Width = 195
            Height = 17
            Caption = #1087#1088#1080' '#1076#1086#1089#1090#1080#1078#1077#1085#1080#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1089#1090#1088#1086#1082
            TabOrder = 5
            OnClick = chkbxFlushLogOnStringsQuantityClick
          end
          object chkbxFlushLogOnExit: TCheckBox
            Left = 294
            Top = 26
            Width = 257
            Height = 17
            Caption = #1087#1088#1080' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1080' '#1088#1072#1073#1086#1090#1099' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
            TabOrder = 4
          end
          object edbxFlushLogOnStringsQuantity: TEdit
            Left = 495
            Top = 47
            Width = 56
            Height = 21
            TabOrder = 6
            Text = '10000'
            OnKeyPress = edbxFlushLogOnStringsQuantityKeyPress
          end
          object chkbxFlushLogOnClearingLog: TCheckBox
            Left = 294
            Top = 72
            Width = 257
            Height = 17
            Caption = #1087#1088#1080' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1086#1095#1080#1089#1090#1082#1080' '#1087#1088#1086#1090#1086#1082#1086#1083#1072
            TabOrder = 7
          end
          object chkbxFlushLogOnApply: TCheckBox
            Left = 294
            Top = 95
            Width = 257
            Height = 17
            Caption = #1087#1088#1080' '#1085#1072#1078#1072#1090#1080#1080' '#1082#1085#1086#1087#1082#1080' "'#1055#1088#1080#1084#1077#1085#1080#1090#1100'"'
            TabOrder = 8
          end
          object chkbxKeepDebugLog: TCheckBox
            Left = 9
            Top = 94
            Width = 257
            Height = 17
            Caption = #1074#1099#1074#1086#1076#1080#1090#1100' '#1086#1090#1083#1072#1076#1086#1095#1085#1091#1102' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
            TabOrder = 9
          end
        end
        object ts5: TTabSheet
          Caption = ' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1086#1090#1095#1105#1090#1086#1074
          ImageIndex = 3
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel3: TBevel
            Left = 0
            Top = 67
            Width = 566
            Height = 5
            Shape = bsBottomLine
          end
          object rbSaveIntoTheTempFolder: TRadioButton
            Left = 0
            Top = 0
            Width = 566
            Height = 17
            Caption = 'C'#1086#1093#1088#1072#1085#1103#1090#1100' '#1074#1086' '#1074#1088#1077#1084#1077#1085#1085#1086#1081' '#1087#1072#1087#1082#1077
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rbSaveIntoTheSelectedFolderClick
          end
          object rbSaveIntoTheSelectedFolder: TRadioButton
            Left = 0
            Top = 46
            Width = 177
            Height = 17
            Caption = #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1074' '#1091#1082#1072#1079#1072#1085#1085#1086#1081' '#1087#1072#1087#1082#1077
            TabOrder = 2
            OnClick = rbSaveIntoTheSelectedFolderClick
          end
          object rbSaveIntoTheApplicationFolder: TRadioButton
            Left = 0
            Top = 23
            Width = 566
            Height = 17
            Caption = #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1074' '#1088#1072#1073#1086#1095#1077#1081' '#1087#1072#1087#1082#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
            TabOrder = 1
            OnClick = rbSaveIntoTheSelectedFolderClick
          end
          object chkbxAskForFileName: TCheckBox
            Left = 0
            Top = 100
            Width = 566
            Height = 17
            Caption = #1047#1072#1087#1088#1072#1096#1080#1074#1072#1090#1100' '#1080#1084#1103' '#1092#1072#1081#1083#1072' '#1087#1077#1088#1077#1076' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084
            TabOrder = 6
          end
          object edbxSelectedFolder: TEdit
            Left = 183
            Top = 44
            Width = 355
            Height = 21
            ReadOnly = True
            TabOrder = 3
          end
          object btnSelectFolder: TButton
            Left = 544
            Top = 44
            Width = 22
            Height = 21
            Cursor = crHandPoint
            Action = Action_ChooseReportFolder
            TabOrder = 4
          end
          object chkbxDontDemandOverwriteConfirmation: TCheckBox
            Left = 0
            Top = 77
            Width = 566
            Height = 17
            Caption = #1053#1077' '#1090#1088#1077#1073#1086#1074#1072#1090#1100' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103' '#1087#1088#1080'  '#1087#1077#1088#1077#1079#1072#1087#1080#1089#1080' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1077#1075#1086' '#1092#1072#1081#1083#1072
            TabOrder = 5
          end
        end
        object ts2: TTabSheet
          Caption = ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' MySQL-'#1089#1077#1088#1074#1077#1088#1091' OVERSEERSERVER'
          ImageIndex = 1
          TabVisible = False
          object vleOVERSEERSERVER: TValueListEditor
            Left = 0
            Top = 0
            Width = 566
            Height = 117
            Align = alTop
            Strings.Strings = (
              #1048#1084#1103' '#1093#1086#1089#1090#1072' '#1080#1083#1080' IP-'#1072#1076#1088#1077#1089'=OVERSEERSERVER'
              #1053#1086#1084#1077#1088' '#1087#1086#1088#1090#1072'=3306'
              #1042#1088#1077#1084#1103' '#1086#1078#1080#1076#1072#1085#1080#1103'=30'
              #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1089#1078#1072#1090#1080#1103' '#1076#1072#1085#1085#1099#1093'='#1044#1072
              #1048#1084#1103' '#1088#1072#1073#1086#1095#1077#1081' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093'=overseer')
            TabOrder = 0
            TitleCaptions.Strings = (
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
              #1047#1085#1072#1095#1077#1085#1080#1077)
            ColWidths = (
              302
              258)
          end
        end
        object ts3: TTabSheet
          Caption = ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' MySQL-'#1089#1077#1088#1074#1077#1088#1091' DBSERVER'
          ImageIndex = 4
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object vleDBSERVER: TValueListEditor
            Left = 0
            Top = 0
            Width = 566
            Height = 117
            Align = alTop
            Strings.Strings = (
              #1048#1084#1103' '#1093#1086#1089#1090#1072' '#1080#1083#1080' IP-'#1072#1076#1088#1077#1089'=DBSERVER'
              #1053#1086#1084#1077#1088' '#1087#1086#1088#1090#1072'=3306'
              #1042#1088#1077#1084#1103' '#1086#1078#1080#1076#1072#1085#1080#1103'=30'
              #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1089#1078#1072#1090#1080#1103' '#1076#1072#1085#1085#1099#1093'='#1044#1072
              #1048#1084#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1081' '#1090#1072#1073#1083#1080#1094#1099' ird_'#1075#1075#1075#1075#1084#1084#1076#1076'=statistika'
              #1048#1084#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1081' '#1090#1072#1073#1083#1080#1094#1099' ord_'#1075#1075#1075#1075#1084#1084#1076#1076'=statistika'
              #1048#1084#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1081' '#1090#1072#1073#1083#1080#1094#1091' prijave=test'
              #1048#1084#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1081' '#1090#1072#1073#1083#1080#1094#1091' prijave_q=test'
              #1048#1084#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1081' '#1090#1072#1073#1083#1080#1094#1091' t_day=MyStat')
            TabOrder = 0
            TitleCaptions.Strings = (
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
              #1047#1085#1072#1095#1077#1085#1080#1077)
            ColWidths = (
              304
              239)
          end
        end
        object ts7: TTabSheet
          Caption = ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' MySQL-'#1089#1077#1088#1074#1077#1088#1091' STATSERVER'
          ImageIndex = 6
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object vleSTATSERVER: TValueListEditor
            Left = 0
            Top = 0
            Width = 566
            Height = 117
            Align = alTop
            Strings.Strings = (
              #1048#1084#1103' '#1093#1086#1089#1090#1072' '#1080#1083#1080' IP-'#1072#1076#1088#1077#1089'=STATSERVER'
              #1053#1086#1084#1077#1088' '#1087#1086#1088#1090#1072'=3306'
              #1042#1088#1077#1084#1103' '#1086#1078#1080#1076#1072#1085#1080#1103'=30'
              #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1089#1078#1072#1090#1080#1103' '#1076#1072#1085#1085#1099#1093'='#1044#1072
              #1048#1084#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1081' '#1090#1072#1073#1083#1080#1094#1099' ird_'#1075#1075#1075#1075#1084#1084#1076#1076'=ird'
              #1048#1084#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1081' '#1090#1072#1073#1083#1080#1094#1099' ord_'#1075#1075#1075#1075#1084#1084#1076#1076'=ord'
              #1048#1084#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1081' '#1090#1072#1073#1083#1080#1094#1099' irda_'#1075#1075#1075#1075#1084#1084'=irda'
              #1048#1084#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1081' '#1090#1072#1073#1083#1080#1094#1099' ord_'#1075#1075#1075#1075#1084#1084'=orda'
              #1048#1084#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1081' '#1090#1072#1073#1083#1080#1094#1099' prijave_'#1075#1075#1075#1075#1084#1084#1076#1076'=prijaves'
              #1048#1084#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1081' '#1090#1072#1073#1083#1080#1094#1099' prijave_q_'#1075#1075#1075#1075#1084#1084#1076#1076'=prijaves')
            TabOrder = 0
            TitleCaptions.Strings = (
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
              #1047#1085#1072#1095#1077#1085#1080#1077)
            ColWidths = (
              302
              241)
          end
        end
        object ts8: TTabSheet
          Caption = ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' MySQL-'#1089#1077#1088#1074#1077#1088#1091' RNE4SERVER'
          ImageIndex = 7
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object vleRNE4SERVER: TValueListEditor
            Left = 0
            Top = 0
            Width = 566
            Height = 117
            Align = alTop
            Strings.Strings = (
              #1048#1084#1103' '#1093#1086#1089#1090#1072' '#1080#1083#1080' IP-'#1072#1076#1088#1077#1089'=RNE4SERVER'
              #1053#1086#1084#1077#1088' '#1087#1086#1088#1090#1072'=3306'
              #1042#1088#1077#1084#1103' '#1086#1078#1080#1076#1072#1085#1080#1103'=30'
              #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' '#1089#1078#1072#1090#1080#1103' '#1076#1072#1085#1085#1099#1093'='#1044#1072
              #1048#1084#1103' '#1088#1072#1073#1086#1095#1077#1081' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093'=rne4')
            TabOrder = 0
            TitleCaptions.Strings = (
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
              #1047#1085#1072#1095#1077#1085#1080#1077)
            ColWidths = (
              302
              258)
          end
        end
        object ts6: TTabSheet
          Caption = ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' FTP-'#1089#1077#1088#1074#1077#1088#1091' '#1040#1057#1050#1056
          ImageIndex = 5
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ValueListEditor1: TValueListEditor
            Left = 0
            Top = 0
            Width = 566
            Height = 117
            Align = alTop
            Strings.Strings = (
              #1048#1084#1103' '#1093#1086#1089#1090#1072' '#1080#1083#1080' IP-'#1072#1076#1088#1077#1089'=10.247.1.5'
              #1053#1086#1084#1077#1088' '#1087#1086#1088#1090#1072'=21'
              #1051#1086#1075#1080#1085' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'=123'
              #1055#1072#1088#1086#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'=123'
              #1050#1072#1090#1072#1083#1086#1075'=/mgts/009/in/'
              #1042#1099#1089#1090#1072#1074#1083#1103#1090#1100' '#1072#1090#1090#1088#1080#1073#1091#1090#1099' '#1087#1086#1083#1085#1086#1075#1086' '#1076#1086#1089#1090#1091#1087#1072'='#1044#1072)
            TabOrder = 0
            TitleCaptions.Strings = (
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
              #1047#1085#1072#1095#1077#1085#1080#1077)
            ColWidths = (
              302
              241)
          end
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = MainForm.ImageList1
    Left = 160
    Top = 208
    StyleName = 'Platform Default'
    object Action_PreviousPage: TAction
      Hint = 
        #1050' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1081' '#1089#1090#1088#1072#1085#1080#1094#1077'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1081' '#1089#1090#1088#1072#1085#1080#1094 +
        #1099' '#1085#1072#1089#1090#1088#1086#1077#1082' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      ImageIndex = 25
      OnExecute = Action_PreviousPageExecute
    end
    object Action_NextPage: TAction
      Hint = 
        #1050' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1089#1090#1088#1072#1085#1080#1094#1077'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1089#1090#1088#1072#1085#1080#1094#1099' ' +
        #1085#1072#1089#1090#1088#1086#1077#1082' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      ImageIndex = 24
      OnExecute = Action_NextPageExecute
    end
    object Action_Help: TAction
      Caption = #1057#1087'&'#1088#1072#1074#1082#1072
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1082#1091'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1082#1088#1099#1090#1080#1103' '#1089#1087#1088#1072#1074#1086#1095#1085#1086#1075#1086' '#1092#1072#1081#1083#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      ImageIndex = 5
      OnExecute = Action_HelpExecute
    end
    object Action_Defaults: TAction
      Caption = '&'#1057#1073#1088#1086#1089
      Hint = 
        #1057#1073#1088#1086#1089#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1089#1073#1088#1086#1089#1072' '#1074#1089#1077#1093' '#1085#1072#1089#1090#1088#1086#1077#1082' '#1082' '#1079#1085#1072#1095#1077#1085#1080#1103#1084' ' +
        #1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      OnExecute = Action_DefaultsExecute
    end
    object Action_Close: TAction
      Caption = '&'#1047#1072#1082#1088#1099#1090#1100
      Hint = 
        #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1084#1077#1085#1099' '#1074#1089#1077#1093' '#1074#1085#1077#1089#1105#1085#1085#1099#1093' '#1074' '#1082#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1102' '#1080#1079 +
        #1084#1077#1085#1077#1085#1080#1081' '#1080' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1086#1082#1085#1072
      OnExecute = Action_CloseExecute
    end
    object Action_Apply: TAction
      Caption = '&'#1055#1088#1080#1084#1077#1085#1080#1090#1100
      Hint = 
        #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1087#1088#1080#1084#1077#1085#1077#1085#1080#1103' '#1074#1089#1077#1093' '#1074#1085#1077#1089#1105#1085#1085#1099#1093' '#1074' '#1082#1086#1085#1092 +
        #1080#1075#1091#1088#1072#1094#1080#1102' '#1080#1079#1084#1077#1085#1077#1085#1080#1081' '#1080' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1086#1082#1085#1072
      OnExecute = Action_ApplyExecute
    end
    object Action_ChooseReportFolder: TAction
      Caption = '...'
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1072#1087#1082#1091'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1074#1099#1073#1086#1088#1072' '#1087#1072#1087#1082#1080' '#1080#1079' '#1076#1077#1088#1077#1074#1072
      OnExecute = Action_ChooseReportFolderExecute
    end
  end
end