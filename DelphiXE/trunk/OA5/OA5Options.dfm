object OptionsForm: TOptionsForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
  ClientHeight = 332
  ClientWidth = 634
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
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 295
    Width = 634
    Height = 37
    Align = alBottom
    BevelEdges = [beTop]
    BevelKind = bkTile
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 0
    object btnApply: TButton
      Left = 374
      Top = 5
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = Action_Apply
      Default = True
      TabOrder = 1
    end
    object btnClose: TButton
      Left = 461
      Top = 5
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = Action_Close
      Cancel = True
      TabOrder = 2
    end
    object btnHelp: TButton
      Left = 548
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
    object btnLineUp: TButton
      Left = 230
      Top = 7
      Width = 22
      Height = 22
      Cursor = crHandPoint
      Action = Action_LineDown
      Images = ilConfigurationFormSmallImages
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object btnLineDown: TButton
      Left = 202
      Top = 7
      Width = 22
      Height = 22
      Cursor = crHandPoint
      Action = Action_LineUp
      Images = ilConfigurationFormSmallImages
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 1
    object gbHeader: TGroupBox
      Left = 5
      Top = 5
      Width = 624
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
        Width = 550
        Height = 21
        Style = csDropDownList
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnSelect = cbPageSelect
        Items.Strings = (
          ' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1072
          ' '#1075#1083#1072#1074#1085#1086#1075#1086' '#1086#1082#1085#1072
          ' '#1087#1086#1083#1086#1078#1077#1085#1080#1103' '#1076#1080#1072#1083#1086#1075#1086#1074#1099#1093' '#1086#1082#1086#1085
          ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' '#1089#1077#1088#1074#1077#1088#1091' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075#1080
          ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' '#1089#1077#1088#1074#1077#1088#1091' '#1089#1080#1089#1090#1077#1084#1099' '#1086#1073#1084#1077#1085#1072' '#1089#1086#1086#1073#1097#1077#1085#1080#1103#1084#1080
          ' '#1087#1088#1086#1094#1077#1076#1091#1088#1099' '#1083#1086#1075#1080#1088#1086#1074#1072#1085#1080#1103
          ' '#1074#1077#1076#1077#1085#1080#1103' '#1087#1088#1086#1090#1086#1082#1086#1083#1072' '#1088#1072#1073#1086#1090#1099
          ' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1086#1090#1095#1105#1090#1086#1074
          ' '#1087#1088#1086#1095#1080#1077)
      end
      object btnNextPage: TButton
        Left = 593
        Top = 15
        Width = 22
        Height = 22
        Cursor = crHandPoint
        Action = Action_NextPage
        Images = ilConfigurationFormSmallImages
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object btnPreviousPage: TButton
        Left = 565
        Top = 15
        Width = 22
        Height = 22
        Cursor = crHandPoint
        Action = Action_PreviousPage
        Images = ilConfigurationFormSmallImages
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 55
    Width = 634
    Height = 240
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object gbPage: TGroupBox
      Left = 5
      Top = 5
      Width = 624
      Height = 230
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
        Top = 3
        Width = 614
        Height = 223
        ActivePage = ts10
        Align = alCustom
        Style = tsButtons
        TabOrder = 0
        TabStop = False
        object ts1: TTabSheet
          Caption = ' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1072
          TabVisible = False
          object vleInterface: TValueListEditor
            Left = 0
            Top = 0
            Width = 606
            Height = 212
            Align = alTop
            Strings.Strings = (
              #1053#1077' '#1086#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1086#1082#1085#1086' "'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'..." '#1087#1088#1080' '#1079#1072#1087#1091#1089#1082#1077'='#1053#1077#1090
              #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' ID '#1079#1072#1087#1080#1089#1077#1081' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093' '#1087#1088#1080' '#1088#1072#1073#1086#1090#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'='#1053#1077#1090
              #1058#1088#1077#1073#1086#1074#1072#1090#1100' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1087#1088#1080' '#1074#1099#1093#1086#1076#1077' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'='#1044#1072
              #1047#1072#1087#1091#1089#1082#1072#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1091' '#1087#1088#1080' '#1089#1090#1072#1088#1090#1077' Windows='#1044#1072
              
                #1055#1086#1076#1072#1074#1072#1090#1100' '#1079#1074#1091#1082#1086#1074#1086#1081' '#1089#1080#1075#1085#1072#1083' '#1087#1088#1080' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1080' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1076#1083#1080#1090#1077#1083#1100#1085#1086#1075#1086' '#1076 +
                #1077#1081#1089#1090#1074#1080#1103'='#1044#1072
              #1055#1088#1086#1082#1088#1091#1095#1080#1074#1072#1090#1100' '#1086#1082#1085#1086' '#1087#1088#1086#1090#1086#1082#1086#1083#1072' '#1082' '#1087#1086#1089#1083#1077#1076#1085#1077#1084#1091' '#1101#1083#1077#1084#1077#1085#1090#1091' '#1089#1087#1080#1089#1082#1072'='#1044#1072
              #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1091#1082#1072#1079#1072#1085#1085#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1099#1081' '#1092#1072#1081#1083'=')
            TabOrder = 0
            TitleCaptions.Strings = (
              #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
              #1047#1085#1072#1095#1077#1085#1080#1077)
            ColWidths = (
              414
              186)
          end
        end
        object ts4: TTabSheet
          Caption = ' '#1074#1077#1076#1077#1085#1080#1103' '#1087#1088#1086#1090#1086#1082#1086#1083#1072' '#1088#1072#1073#1086#1090#1099
          ImageIndex = 1
          TabVisible = False
          object Bevel4: TBevel
            Left = 0
            Top = 25
            Width = 606
            Height = 161
            Align = alTop
            Shape = bsBottomLine
          end
          object lblFlushLog: TLabel
            Left = 306
            Top = 32
            Width = 254
            Height = 13
            Caption = #1057#1073#1088#1072#1089#1099#1074#1072#1090#1100' '#1087#1088#1086#1090#1086#1082#1086#1083' '#1088#1072#1073#1086#1090#1099' '#1074' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083':'
          end
          object Bevel1: TBevel
            Left = 0
            Top = 51
            Width = 300
            Height = 124
            Shape = bsFrame
          end
          object lblShowData: TLabel
            Left = 0
            Top = 32
            Width = 184
            Height = 13
            Caption = #1042#1099#1074#1086#1076#1080#1090#1100' '#1074' '#1083#1086#1075' '#1091#1082#1072#1079#1072#1085#1085#1099#1077' '#1076#1072#1085#1085#1099#1077':'
          end
          object Bevel2: TBevel
            Left = 306
            Top = 51
            Width = 300
            Height = 124
            Shape = bsFrame
          end
          object Bevel5: TBevel
            Left = 0
            Top = 0
            Width = 606
            Height = 25
            Align = alTop
            Shape = bsBottomLine
          end
          object chkbxKeepInfoLog: TCheckBox
            Left = 10
            Top = 58
            Width = 257
            Height = 17
            Caption = #1074#1099#1074#1086#1076#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1099#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
            TabOrder = 0
          end
          object chkbxKeepWarningLog: TCheckBox
            Left = 10
            Top = 81
            Width = 257
            Height = 17
            Caption = #1074#1099#1074#1086#1076#1080#1090#1100' '#1074#1072#1078#1085#1099#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
            TabOrder = 1
          end
          object chkbxKeepErrorLog: TCheckBox
            Left = 10
            Top = 104
            Width = 257
            Height = 17
            Caption = #1074#1099#1074#1086#1076#1080#1090#1100' '#1089#1086#1086#1073#1097#1077#1085#1080#1103' '#1086#1073' '#1086#1096#1080#1073#1082#1072#1093
            TabOrder = 2
          end
          object chkbxKeepSQLLog: TCheckBox
            Left = 10
            Top = 127
            Width = 257
            Height = 17
            Caption = #1074#1099#1074#1086#1076#1080#1090#1100' '#1090#1077#1082#1089#1090' SQL-'#1079#1072#1087#1088#1086#1089#1086#1074
            TabOrder = 3
          end
          object chkbxFlushLogOnStringsQuantity: TCheckBox
            Left = 314
            Top = 81
            Width = 195
            Height = 17
            Caption = #1087#1088#1080' '#1076#1086#1089#1090#1080#1078#1077#1085#1080#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1089#1090#1088#1086#1082
            TabOrder = 5
            OnClick = chkbxFlushLogOnStringsQuantityClick
          end
          object chkbxFlushLogOnExit: TCheckBox
            Left = 314
            Top = 58
            Width = 257
            Height = 17
            Caption = #1087#1088#1080' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1080' '#1088#1072#1073#1086#1090#1099' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
            TabOrder = 4
          end
          object edbxFlushLogOnStringsQuantity: TEdit
            Left = 541
            Top = 79
            Width = 56
            Height = 21
            TabOrder = 6
            Text = '10000'
            OnKeyPress = edbxFlushLogOnStringsQuantityKeyPress
          end
          object chkbxFlushLogOnClearingLog: TCheckBox
            Left = 314
            Top = 104
            Width = 257
            Height = 17
            Caption = #1087#1088#1080' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1086#1095#1080#1089#1090#1082#1080' '#1087#1088#1086#1090#1086#1082#1086#1083#1072
            TabOrder = 7
          end
          object chkbxFlushLogOnApply: TCheckBox
            Left = 314
            Top = 127
            Width = 257
            Height = 17
            Caption = #1087#1088#1080' '#1085#1072#1078#1072#1090#1080#1080' '#1082#1085#1086#1087#1082#1080' "'#1055#1088#1080#1084#1077#1085#1080#1090#1100'"'
            TabOrder = 8
          end
          object chkbxKeepDebugLog: TCheckBox
            Left = 10
            Top = 150
            Width = 257
            Height = 17
            Caption = #1074#1099#1074#1086#1076#1080#1090#1100' '#1086#1090#1083#1072#1076#1086#1095#1085#1091#1102' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
            TabOrder = 9
          end
          object chkbxCustomLogClientFile: TCheckBox
            Left = 0
            Top = 194
            Width = 300
            Height = 17
            Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1074#1085#1077#1096#1085#1080#1081' '#1082#1083#1080#1077#1085#1090' '#1087#1088#1086#1090#1086#1082#1086#1083#1080#1088#1086#1074#1072#1085#1080#1103':'
            TabOrder = 10
            OnClick = chkbxCustomLogClientFileClick
          end
          object edbxCustomLogClientFile: TEdit
            Left = 306
            Top = 192
            Width = 272
            Height = 21
            Enabled = False
            ReadOnly = True
            TabOrder = 11
          end
          object btnChoiseCustomLogClientFile: TButton
            Left = 584
            Top = 192
            Width = 22
            Height = 21
            Cursor = crHandPoint
            Action = Action_ChooseLogClient
            TabOrder = 12
          end
          object chkbxUseLog: TCheckBox
            Left = 0
            Top = 0
            Width = 300
            Height = 17
            Caption = #1042#1077#1089#1090#1080' '#1083#1086#1075' '#1088#1072#1073#1086#1090#1099' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
            TabOrder = 13
            OnClick = chkbxUseLogClick
          end
        end
        object ts8: TTabSheet
          Caption = ' '#1087#1086#1083#1086#1078#1077#1085#1080#1103' '#1076#1080#1072#1083#1086#1075#1086#1074#1099#1093' '#1086#1082#1086#1085
          ImageIndex = 8
          TabVisible = False
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 606
            Height = 213
            HorzScrollBar.Range = 588
            VertScrollBar.Range = 327
            Align = alClient
            AutoScroll = False
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 0
            object lblLoginFormPosition: TLabel
              Left = 0
              Top = 3
              Width = 94
              Height = 13
              Caption = #1054#1082#1085#1086' '#1083#1086#1075#1080#1088#1086#1074#1072#1085#1080#1103
            end
            object lblLoginFormPositionX: TLabel
              Left = 340
              Top = 3
              Width = 6
              Height = 13
              Caption = 'x'
            end
            object lblLoginFormPositionY: TLabel
              Left = 427
              Top = 3
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object lblOptionsFormPosition: TLabel
              Left = 0
              Top = 30
              Width = 102
              Height = 13
              Caption = #1054#1082#1085#1086' '#1082#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1080
            end
            object lblOptionsFormPositionX: TLabel
              Left = 340
              Top = 30
              Width = 6
              Height = 13
              Caption = 'x'
            end
            object lblOptionsFormPositionY: TLabel
              Left = 427
              Top = 30
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object lblUsersFormPosition: TLabel
              Left = 0
              Top = 57
              Width = 116
              Height = 13
              Caption = #1054#1082#1085#1086' '#1091#1095#1105#1090#1085#1099#1093' '#1079#1072#1087#1080#1089#1077#1081
            end
            object lblUsersFormPositionX: TLabel
              Left = 340
              Top = 57
              Width = 6
              Height = 13
              Caption = 'x'
            end
            object lblUsersFormPositionY: TLabel
              Left = 427
              Top = 57
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object lblSetPasswordFormPosition: TLabel
              Left = 0
              Top = 84
              Width = 99
              Height = 13
              Caption = #1054#1082#1085#1086' '#1089#1084#1077#1085#1099' '#1087#1072#1088#1086#1083#1103
            end
            object lblSetPasswordFormPositionX: TLabel
              Left = 340
              Top = 84
              Width = 6
              Height = 13
              Caption = 'x'
            end
            object lblSetPasswordFormPositionY: TLabel
              Left = 427
              Top = 84
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object lblStatisticFormPosition: TLabel
              Left = 0
              Top = 111
              Width = 87
              Height = 13
              Caption = #1054#1082#1085#1086' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1080
            end
            object lblStatisticFormPositionX: TLabel
              Left = 340
              Top = 111
              Width = 6
              Height = 13
              Caption = 'x'
            end
            object lblStatisticFormPositionY: TLabel
              Left = 427
              Top = 111
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object lblMaintenanceFormPosition: TLabel
              Left = 0
              Top = 138
              Width = 119
              Height = 13
              Caption = #1054#1082#1085#1086' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103' '#1041#1044
            end
            object lblMaintenanceFormPositionX: TLabel
              Left = 340
              Top = 138
              Width = 6
              Height = 13
              Caption = 'x'
            end
            object lblMaintenanceFormPositionY: TLabel
              Left = 427
              Top = 138
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object lblClearingFormPosition: TLabel
              Left = 0
              Top = 165
              Width = 87
              Height = 13
              Caption = #1054#1082#1085#1086' '#1086#1095#1080#1089#1090#1082#1080' '#1041#1044
            end
            object lblClearingFormPositionX: TLabel
              Left = 340
              Top = 165
              Width = 6
              Height = 13
              Caption = 'x'
            end
            object lblClearingFormPositionY: TLabel
              Left = 427
              Top = 165
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object lblViewPostListFormPosition: TLabel
              Left = 0
              Top = 192
              Width = 122
              Height = 13
              Caption = #1054#1082#1085#1086' '#1089#1087#1080#1089#1082#1072' '#1089#1086#1086#1073#1097#1077#1085#1080#1081
            end
            object lblViewPostListFormPositionX: TLabel
              Left = 340
              Top = 192
              Width = 6
              Height = 13
              Caption = 'x'
            end
            object lblViewPostListFormPositionY: TLabel
              Left = 427
              Top = 192
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object lblCreateViewPostFormPosition: TLabel
              Left = 0
              Top = 219
              Width = 141
              Height = 13
              Caption = #1054#1082#1085#1086' '#1087#1088#1086#1089#1084#1086#1090#1088#1072' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
            end
            object lblCreateViewPostFormPositionX: TLabel
              Left = 340
              Top = 219
              Width = 6
              Height = 13
              Caption = 'x'
            end
            object lblCreateViewPostFormPositionY: TLabel
              Left = 427
              Top = 219
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object lblPhonesFormPosition: TLabel
              Left = 0
              Top = 246
              Width = 122
              Height = 13
              Caption = #1054#1082#1085#1086' '#1089#1087#1080#1089#1082#1072' '#1090#1077#1083#1077#1092#1086#1085#1086#1074
            end
            object lblPhonesFormPositionX: TLabel
              Left = 340
              Top = 246
              Width = 6
              Height = 13
              Caption = 'x'
            end
            object lblPhonesFormPositionY: TLabel
              Left = 427
              Top = 246
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object lblAddEditPhoneFormPosition: TLabel
              Left = 0
              Top = 273
              Width = 135
              Height = 13
              Caption = #1054#1082#1085#1086' '#1087#1088#1086#1089#1084#1086#1090#1088#1072' '#1090#1077#1083#1077#1092#1086#1085#1072
            end
            object lblAddEditPhoneFormPositionX: TLabel
              Left = 340
              Top = 273
              Width = 6
              Height = 13
              Caption = 'x'
            end
            object lblAddEditPhoneFormPositionY: TLabel
              Left = 427
              Top = 273
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object lblAddMassMsrFormPosition: TLabel
              Left = 0
              Top = 300
              Width = 119
              Height = 13
              Caption = #1054#1082#1085#1086' '#1084#1072#1089#1089#1086#1074#1086#1081' '#1074#1089#1090#1072#1074#1082#1080
            end
            object lblAddMassMsrFormPositionX: TLabel
              Left = 340
              Top = 300
              Width = 6
              Height = 13
              Caption = 'x'
            end
            object lblAddMassMsrFormPositionY: TLabel
              Left = 427
              Top = 300
              Width = 6
              Height = 13
              Caption = 'y'
            end
            object edbxLoginFormPositionX: TEdit
              Left = 352
              Top = 0
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 0
            end
            object edbxLoginFormPositionY: TEdit
              Left = 439
              Top = 0
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 1
            end
            object chkbxLoginFormPositionByCenter: TCheckBox
              Left = 514
              Top = 2
              Width = 74
              Height = 17
              Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
              Checked = True
              State = cbChecked
              TabOrder = 2
            end
            object edbxOptionsFormPositionX: TEdit
              Left = 352
              Top = 27
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 3
            end
            object edbxOptionsFormPositionY: TEdit
              Left = 439
              Top = 27
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 4
            end
            object chkbxOptionsFormPositionByCenter: TCheckBox
              Left = 514
              Top = 29
              Width = 74
              Height = 17
              Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
              Checked = True
              State = cbChecked
              TabOrder = 5
            end
            object edbxUsersFormPositionX: TEdit
              Left = 352
              Top = 54
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 6
            end
            object edbxUsersFormPositionY: TEdit
              Left = 439
              Top = 54
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 7
            end
            object chkbxUsersFormPositionByCenter: TCheckBox
              Left = 514
              Top = 56
              Width = 74
              Height = 17
              Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
              Checked = True
              State = cbChecked
              TabOrder = 8
            end
            object edbxSetPasswordFormPositionX: TEdit
              Left = 352
              Top = 81
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 9
            end
            object edbxSetPasswordFormPositionY: TEdit
              Left = 439
              Top = 81
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 10
            end
            object chkbxSetPasswordFormPositionByCenter: TCheckBox
              Left = 514
              Top = 83
              Width = 74
              Height = 17
              Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
              Checked = True
              State = cbChecked
              TabOrder = 11
            end
            object edbxStatisticFormPositionX: TEdit
              Left = 352
              Top = 108
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 12
            end
            object edbxStatisticFormPositionY: TEdit
              Left = 439
              Top = 108
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 13
            end
            object chkbxStatisticFormPositionByCenter: TCheckBox
              Left = 514
              Top = 110
              Width = 74
              Height = 17
              Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
              Checked = True
              State = cbChecked
              TabOrder = 14
            end
            object edbxMaintenanceFormPositionX: TEdit
              Left = 352
              Top = 135
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 15
            end
            object edbxMaintenanceFormPositionY: TEdit
              Left = 439
              Top = 135
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 16
            end
            object chkbxMaintenanceFormPositionByCenter: TCheckBox
              Left = 514
              Top = 137
              Width = 74
              Height = 17
              Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
              Checked = True
              State = cbChecked
              TabOrder = 17
            end
            object edbxClearingFormPositionX: TEdit
              Left = 352
              Top = 162
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 18
            end
            object edbxClearingFormPositionY: TEdit
              Left = 439
              Top = 162
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 19
            end
            object chkbxClearingFormPositionByCenter: TCheckBox
              Left = 514
              Top = 164
              Width = 74
              Height = 17
              Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
              Checked = True
              State = cbChecked
              TabOrder = 20
            end
            object edbxViewPostListFormPositionX: TEdit
              Left = 352
              Top = 189
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 21
            end
            object edbxViewPostListFormPositionY: TEdit
              Left = 439
              Top = 189
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 22
            end
            object chkbxViewPostListFormPositionByCenter: TCheckBox
              Left = 514
              Top = 191
              Width = 74
              Height = 17
              Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
              Checked = True
              State = cbChecked
              TabOrder = 23
            end
            object edbxCreateViewPostFormPositionX: TEdit
              Left = 352
              Top = 216
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 24
            end
            object edbxCreateViewPostFormPositionY: TEdit
              Left = 439
              Top = 216
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 25
            end
            object chkbxCreateViewPostFormPositionByCenter: TCheckBox
              Left = 514
              Top = 218
              Width = 74
              Height = 17
              Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
              Checked = True
              State = cbChecked
              TabOrder = 26
            end
            object edbxPhonesFormPositionX: TEdit
              Left = 352
              Top = 243
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 27
            end
            object edbxPhonesFormPositionY: TEdit
              Left = 439
              Top = 243
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 28
            end
            object chkbxPhonesFormPositionByCenter: TCheckBox
              Left = 514
              Top = 245
              Width = 74
              Height = 17
              Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
              Checked = True
              State = cbChecked
              TabOrder = 29
            end
            object edbxAddEditPhoneFormPositionX: TEdit
              Left = 352
              Top = 270
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 30
            end
            object edbxAddEditPhoneFormPositionY: TEdit
              Left = 439
              Top = 270
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 31
            end
            object chkbxAddEditPhoneFormPositionByCenter: TCheckBox
              Left = 514
              Top = 272
              Width = 74
              Height = 17
              Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
              Checked = True
              State = cbChecked
              TabOrder = 32
            end
            object edbxAddMassMsrFormPositionX: TEdit
              Left = 352
              Top = 297
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 33
            end
            object edbxAddMassMsrFormPositionY: TEdit
              Left = 439
              Top = 297
              Width = 69
              Height = 21
              Enabled = False
              MaxLength = 4
              TabOrder = 34
            end
            object chkbxAddMassMsrFormPositionByCenter: TCheckBox
              Left = 514
              Top = 299
              Width = 74
              Height = 17
              Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
              Checked = True
              State = cbChecked
              TabOrder = 35
            end
          end
        end
        object ts7: TTabSheet
          Caption = ' '#1087#1088#1086#1094#1077#1076#1091#1088#1099' '#1083#1086#1075#1080#1088#1086#1074#1072#1085#1080#1103
          ImageIndex = 7
          TabVisible = False
          object chkbxStoreLastLogin: TCheckBox
            Left = 0
            Top = 0
            Width = 606
            Height = 17
            Caption = #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1083#1086#1075#1080#1085' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
            TabOrder = 0
            OnClick = chkbxStoreLastLoginClick
          end
          object chkbxStoreLastPassword: TCheckBox
            Left = 0
            Top = 23
            Width = 606
            Height = 17
            Caption = #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1087#1072#1088#1086#1083#1100' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
            TabOrder = 1
            OnClick = chkbxStoreLastPasswordClick
          end
          object chkbxAutoLogon: TCheckBox
            Left = 0
            Top = 46
            Width = 606
            Height = 17
            Caption = 
              #1042#1099#1087#1086#1083#1085#1103#1090#1100' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080#1081' '#1074#1093#1086#1076', '#1080#1089#1087#1086#1083#1100#1079#1091#1103' '#1089#1086#1093#1088#1072#1085#1105#1085#1085#1099#1077' '#1083#1086#1075#1080#1085' '#1080' '#1087#1072#1088 +
              #1086#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
            Enabled = False
            TabOrder = 2
          end
        end
        object ts2: TTabSheet
          Caption = ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' '#1089#1077#1088#1074#1077#1088#1091' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093' '#1091#1089#1083#1091#1075#1080
          ImageIndex = 1
          TabVisible = False
          object vleRNE4SERVER: TValueListEditor
            Left = 0
            Top = 0
            Width = 606
            Height = 212
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
              298)
          end
        end
        object ts3: TTabSheet
          Caption = ' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' '#1089#1077#1088#1074#1077#1088#1091' '#1089#1080#1089#1090#1077#1084#1099' '#1086#1073#1084#1077#1085#1072' '#1089#1086#1086#1073#1097#1077#1085#1080#1103#1084#1080
          ImageIndex = 4
          TabVisible = False
          object vleRNE4MESSAGESSERVER: TValueListEditor
            Left = 0
            Top = 0
            Width = 606
            Height = 212
            Align = alTop
            Strings.Strings = (
              #1048#1084#1103' '#1093#1086#1089#1090#1072' '#1080#1083#1080' IP-'#1072#1076#1088#1077#1089'=RNE4MESSAGESSERVER'
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
              298)
          end
        end
        object ts5: TTabSheet
          Caption = ' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1086#1090#1095#1105#1090#1086#1074
          ImageIndex = 3
          TabVisible = False
          object Bevel3: TBevel
            Left = 0
            Top = 0
            Width = 606
            Height = 71
            Align = alTop
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
            Width = 395
            Height = 21
            ReadOnly = True
            TabOrder = 3
          end
          object btnSelectFolder: TButton
            Left = 584
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
        object ts6: TTabSheet
          Caption = ' '#1089#1087#1080#1089#1082#1072' '#1072#1074#1090#1086#1079#1072#1084#1077#1085#1099
          ImageIndex = 5
          TabVisible = False
          object lblAutoReplaceSorry: TLabel
            Left = 0
            Top = 0
            Width = 606
            Height = 213
            Align = alClient
            Alignment = taCenter
            Layout = tlCenter
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object sgAutoReplaceList: TStringGrid
            Left = 0
            Top = 0
            Width = 606
            Height = 213
            Hint = #1057#1087#1080#1089#1086#1082' '#1089#1090#1088#1086#1082' '#1076#1083#1103' '#1072#1074#1090#1086#1079#1072#1084#1077#1085#1099
            Align = alClient
            ColCount = 3
            Ctl3D = True
            DefaultColWidth = 200
            DefaultRowHeight = 19
            RowCount = 1001
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goRowMoving, goEditing]
            ParentCtl3D = False
            TabOrder = 0
            ColWidths = (
              14
              285
              283)
          end
        end
        object ts9: TTabSheet
          Caption = ' '#1087#1088#1086#1095#1080#1077
          ImageIndex = 6
          TabVisible = False
          object lblGetMessagesCycleDuration: TLabel
            Left = 394
            Top = 3
            Width = 30
            Height = 13
            Caption = #1084#1080#1085#1091#1090
          end
          object chkbxGetMessages: TCheckBox
            Left = 0
            Top = 2
            Width = 313
            Height = 17
            Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1088#1086#1074#1077#1088#1103#1090#1100' '#1074#1093#1086#1076#1103#1097#1080#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103' '#1088#1072#1079' '#1074
            TabOrder = 0
            OnClick = chkbxGetMessagesClick
          end
          object edbxGetMessagesCycleDuration: TEdit
            Left = 319
            Top = 0
            Width = 69
            Height = 21
            TabOrder = 1
            OnChange = edbxGetMessagesCycleDurationChange
            OnKeyPress = edbxGetMessagesCycleDurationKeyPress
          end
        end
        object ts10: TTabSheet
          Caption = ' '#1075#1083#1072#1074#1085#1086#1075#1086' '#1086#1082#1085#1072
          ImageIndex = 9
          TabVisible = False
          ExplicitTop = 27
          ExplicitHeight = 192
          object lblMainFormPosition: TLabel
            Left = 11
            Top = 3
            Width = 42
            Height = 13
            Caption = #1055#1086#1079#1080#1094#1080#1103
          end
          object lblMainFormSize: TLabel
            Left = 11
            Top = 30
            Width = 43
            Height = 13
            Caption = #1056#1072#1079#1084#1077#1088#1099
          end
          object lblMainFormPositionX: TLabel
            Left = 339
            Top = 3
            Width = 6
            Height = 13
            Caption = 'x'
          end
          object lblMainFormPositionY: TLabel
            Left = 426
            Top = 3
            Width = 6
            Height = 13
            Caption = 'y'
          end
          object lblMainFormWidth: TLabel
            Left = 339
            Top = 30
            Width = 6
            Height = 13
            Caption = 'x'
          end
          object lblMainFormHeight: TLabel
            Left = 426
            Top = 30
            Width = 6
            Height = 13
            Caption = 'y'
          end
          object edbxMainFormPositionX: TEdit
            Left = 351
            Top = 0
            Width = 69
            Height = 21
            Enabled = False
            MaxLength = 4
            TabOrder = 0
          end
          object edbxMainFormPositionY: TEdit
            Left = 438
            Top = 0
            Width = 69
            Height = 21
            Enabled = False
            MaxLength = 4
            TabOrder = 1
          end
          object chkbxMainFormPositionByCenter: TCheckBox
            Left = 513
            Top = 2
            Width = 74
            Height = 17
            Caption = #1087#1086' '#1094#1077#1085#1090#1088#1091
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
          object edbxMainFormWidth: TEdit
            Left = 351
            Top = 27
            Width = 69
            Height = 21
            TabOrder = 3
          end
          object edbxMainFormHeight: TEdit
            Left = 438
            Top = 27
            Width = 69
            Height = 21
            TabOrder = 4
          end
          object chkbxStartupFullScreen: TCheckBox
            Left = 513
            Top = 29
            Width = 90
            Height = 17
            Caption = #1085#1072' '#1074#1077#1089#1100' '#1101#1082#1088#1072#1085
            TabOrder = 5
          end
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = ilConfigurationFormSmallImages
    Left = 336
    Top = 296
    StyleName = 'Platform Default'
    object Action_Defaults: TAction
      Caption = '&'#1057#1073#1088#1086#1089
      Hint = 
        #1057#1073#1088#1086#1089#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1089#1073#1088#1086#1089#1072' '#1074#1089#1077#1093' '#1085#1072#1089#1090#1088#1086#1077#1082' '#1082' '#1079#1085#1072#1095#1077#1085#1080#1103#1084' ' +
        #1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      OnExecute = Action_DefaultsExecute
    end
    object Action_Apply: TAction
      Caption = '&'#1055#1088#1080#1084#1077#1085#1080#1090#1100
      Hint = 
        #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1087#1088#1080#1084#1077#1085#1077#1085#1080#1103' '#1074#1089#1077#1093' '#1074#1085#1077#1089#1105#1085#1085#1099#1093' '#1074' '#1082#1086#1085#1092 +
        #1080#1075#1091#1088#1072#1094#1080#1102' '#1080#1079#1084#1077#1085#1077#1085#1080#1081' '#1080' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1086#1082#1085#1072
      OnExecute = Action_ApplyExecute
    end
    object Action_Close: TAction
      Caption = '&'#1047#1072#1082#1088#1099#1090#1100
      Hint = 
        #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1084#1077#1085#1099' '#1074#1089#1077#1093' '#1074#1085#1077#1089#1105#1085#1085#1099#1093' '#1074' '#1082#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1102' '#1080#1079 +
        #1084#1077#1085#1077#1085#1080#1081' '#1080' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1086#1082#1085#1072
      OnExecute = Action_CloseExecute
    end
    object Action_Help: TAction
      Caption = #1057#1087'&'#1088#1072#1074#1082#1072
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1082#1091'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1082#1088#1099#1090#1080#1103' '#1089#1087#1088#1072#1074#1086#1095#1085#1086#1075#1086' '#1092#1072#1081#1083#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      ImageIndex = 0
      OnExecute = Action_HelpExecute
    end
    object Action_PreviousPage: TAction
      Hint = 
        #1050' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1081' '#1089#1090#1088#1072#1085#1080#1094#1077'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1081' '#1089#1090#1088#1072#1085#1080#1094 +
        #1099' '#1085#1072#1089#1090#1088#1086#1077#1082' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      ImageIndex = 1
      OnExecute = Action_PreviousPageExecute
    end
    object Action_NextPage: TAction
      Hint = 
        #1050' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1089#1090#1088#1072#1085#1080#1094#1077'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1089#1090#1088#1072#1085#1080#1094#1099' ' +
        #1085#1072#1089#1090#1088#1086#1077#1082' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      ImageIndex = 2
      OnExecute = Action_NextPageExecute
    end
    object Action_ChooseReportFolder: TAction
      Caption = '...'
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1072#1087#1082#1091'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1074#1099#1073#1086#1088#1072' '#1087#1072#1087#1082#1080' '#1080#1079' '#1076#1077#1088#1077#1074#1072
      OnExecute = Action_ChooseReportFolderExecute
    end
    object Action_ChooseLogClient: TAction
      Caption = '...'
      Hint = 
        #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083' '#1082#1083#1080#1077#1085#1090#1072'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1074#1099#1073#1086#1088#1072' '#1092#1072#1081#1083#1072' '#1082#1083#1080#1077#1085#1090#1072' '#1087#1088#1086#1090#1086#1082#1086#1083#1080#1088 +
        #1086#1074#1072#1085#1080#1103
      OnExecute = Action_ChooseLogClientExecute
    end
    object Action_LineUp: TAction
      Hint = 
        #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1089#1090#1088#1086#1082#1091' '#1074#1074#1077#1088#1093'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1081' '#1089#1090#1088#1086 +
        #1082#1080' '#1074' '#1089#1087#1080#1089#1082#1077' '#1085#1072' '#1086#1076#1085#1091' '#1087#1086#1079#1080#1094#1080#1102' '#1074#1074#1077#1088#1093
      ImageIndex = 3
    end
    object Action_LineDown: TAction
      Hint = 
        #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1089#1090#1088#1086#1082#1091' '#1074#1085#1080#1079'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1081' '#1089#1090#1088#1086#1082 +
        #1080' '#1074' '#1089#1087#1080#1089#1082#1077' '#1085#1072' '#1086#1076#1085#1091' '#1087#1086#1079#1080#1094#1080#1102' '#1074#1085#1080#1079
      ImageIndex = 4
    end
  end
  object ilConfigurationFormSmallImages: TImageList
    AllocBy = 5
    Left = 304
    Top = 296
    Bitmap = {
      494C010106000800740010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007979790083838300797979000000000000000000000000007979
      7900797979007979790000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000797979004E4E4E00535353009B9B9B00797979006B6B6B006C5A5A00755D
      5D004F4848005E5E5E0079797900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF927500DF8D3A0069503C0054546F000732DE001538C700D6B8B800B7AB
      AB009D8C8C006B575700524C4C00797979000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF927500DF8D3A00825D4D007E6B8E001257FF002667E300D3AAAA00AA80
      8000A78A8A0098BD9D007F756E006A6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF927500DE8A3700BCA09300ABA0C0001B69FF003377E000D6B3B300B893
      9300A1727200A07272007F5E5E006A6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000083838300838383008383
      8300AF927500D97D2600B2857D00A289A700257EFF004187DE00DBBFBF00BD91
      9100CC999900BD8B8B00815B5B006A6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000026A0D30032698200266079002662
      7C0093867000DB7E2B00B39D9800AFA8C4002E8FFF005199DC00DBBFBF00BE8F
      8F00A6737300BC898900825A5A006A6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000026A0D30069CFFF0069CFFF0069CF
      FF00A1805E00DC7E30008F8C8C00BDB6C9009AB3D40054648E00DBBFBF00BF8D
      8D00B6838300B9868600825858006A6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000329BC7007EDBFF0067BAD90074DA
      FF00817C7200A28F8700B2AFAF00C9C3C300E0DEDF00BEB9BA00C6ADAD00C282
      8200BA7A7A00BC878700835656006E6E6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004AB3D40083B8CC00E1E1E100B49B
      9B005E636500A1A1A100B6B4B400DFDFDF00D6D6D600DDDEDE00C6C4C400F0DA
      DA00DEA8A800CE7C7C00975C5C00929292000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000065C8E2008AABBB00CFCFCF00D4D4
      D40073737300AEAEAE00BABABA00B2B2B2009C9A9A00A8A3A300AFADAD00DDC0
      C000CAABAB00B390900092929200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000078D3ED0087C0DA00B3DFE100AAC3
      C400AEC7C8009AB3B40097B0B1008DC0C2008999990089999C00928989009292
      9200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000087D8EF0073D3FC009AE6FF009DEA
      FF009DEAFF009DEAFF009DEAFF009DEAFF009DEAFF00ADDCE800929292000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009DDFF00084EAFF0084EAFF0084EA
      FF00B8EDFC009FDEF1009FDEF1009FDEF1009FDEF100AAD5E300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEE5F200AAE3F200A3E3F200AAE3
      F20095CDE0000000000000000000000000000000000000000000000000000000
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
      0000000000005346450053464500534645005346450053464500534645000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58E
      7B00B5928400F7E3D600EFE3DE00EFE3DE00F7E7DE00F7E3D600BDA69C005346
      4500534645000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDA69C00F7E7
      DE00FFF3F700E7DBD600DEB29C00D6A68C00E7C7BD00EFEBEF00F7F3F700F7E3
      D600E7CBBD005346450000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDA69C00F7EBE7000000
      0000C68E7300BD5D2900BD5D2900DEB29C00BD5D2900BD5D2900D69E8400F7F3
      F700F7E7DE00D6C7BD0053464500000000000000000000000000000000000000
      0000000000000000000040404000808080000000000000000000000000004020
      2000A4A0A0000000000000000000000000000000000000000000404040008060
      6000000000000000000000000000404040008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDA69C0000000000CE6D
      4200BD5D2900BD5D2900C6A2940000000000E7825200BD5D2900BD5D2900D696
      7300FFFBF700F7E3D60053464500000000000000000000000000000000000000
      00000000000040404000C0C0C000F0FBFF00808080000000000040202000C0C0
      C000F0FBFF00A4A0A00000000000000000000000000040606000C0C0C000C0DC
      C000808080000000000040404000C0C0C000F0FBFF0080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDA69C00FFFBFF00DE9E7B00BD5D
      2900CE653100CE653100CE693900D68A6300CE653100CE653100BD5D2900BD5D
      2900E7CBBD00F7EFEF00DECBC600534645000000000000000000000000000000
      000040404000C0C0C000F0FBFF00808080000000000040202000C0C0C000F0FB
      FF00A4A0A000000000000000000000000000000000000000000040404000C0C0
      C000F0FBFF00808080000000000040404000C0C0C000F0FBFF00A4A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6C7BD00FFF7F700C6613100BD5D
      2900CE653100BD5D2900CE866300F7E7DE00D6693900BD5D2900CE653100BD5D
      2900CE71420000000000E7CBBD00534645000000000000000000000000004040
      4000C0C0C000F0FBFF00808080000000000040202000C0C0C000F0FBFF00A4A0
      A000000000000000000000000000000000000000000000000000000000004040
      4000C0C0C000F0FBFF00808080000000000040202000C0C0C000F0FBFF00A4A0
      A000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6C7BD00F7DFD600BD5D2900CE65
      3100CE653100BD5D2900D6825200FFFBFF00E7AE9400BD5D2900BD5D2900CE65
      3100BD5D2900FFEFEF00F7DFD60053464500000000000000000040404000C0C0
      C000F0FBFF00808080000000000040404000C0C0C000F0FBFF00A4A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000040404000C0C0C000F0FBFF00808080000000000040202000C0C0C000F0FB
      FF00A4A0A0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6C7BD00F7D7CE00CE653100CE65
      3100CE653100CE653100BD5D2900DEAA9400FFF7F700EF9E7300BD5D2900CE65
      3100BD5D2900F7F3EF00EFE3DE00534645000000000040606000C0C0C000C0DC
      C000808080000000000040404000C0C0C000F0FBFF0080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404000C0C0C000F0FBFF00808080000000000040202000C0C0
      C000F0FBFF00A4A0A00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6C7BD00FFEFE700D6693900CE65
      3100CE653100BD5D2900BD5D2900BD5D2900E7CFC60000000000D6693900CE65
      3100CE693900FFFBFF00F7DFD60053464500000000000000000040404000C0C0
      C000F0FBFF00808080000000000040404000C0C0C000F0FBFF00A4A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000040404000C0C0C000F0FBFF00808080000000000040202000C0C0C000F0FB
      FF00A4A0A0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6C7BD0000000000F79A6B00D669
      3900CE8E6B00F7EBE700D6825200BD5D2900D696730000000000E78E5A00BD5D
      2900EF92630000000000D6C7BD00534645000000000000000000000000004040
      4000C0C0C000F0FBFF00808080000000000040202000C0C0C000F0FBFF00A4A0
      A000000000000000000000000000000000000000000000000000000000004040
      4000C0C0C000F0FBFF00808080000000000040202000C0C0C000F0FBFF00A4A0
      A000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6C7BD00FFEBDE00EF86
      5200E7825200F7F7F70000000000DEBAAD0000000000F7F7F700DE714200D671
      3900FFF3EF00F7E7E70053464500000000000000000000000000000000000000
      000040404000C0C0C000F0FBFF00808080000000000040202000C0C0C000F0FB
      FF00A4A0A000000000000000000000000000000000000000000040404000C0C0
      C000F0FBFF00808080000000000040404000C0C0C000F0FBFF00A4A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6C7BD0000000000FFEF
      D600FFAA7300EFAA8C00EFE3DE00EFEFEF00F7E7E700FFA67B00F78E5A00F7DB
      CE0000000000D6C7BD0000000000000000000000000000000000000000000000
      00000000000040404000C0C0C000F0FBFF00808080000000000040202000C0C0
      C000F0FBFF00A4A0A00000000000000000000000000040606000C0C0C000C0DC
      C000808080000000000040404000C0C0C000F0FBFF0080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6C7BD000000
      000000000000FFF3C600FFDFAD00FFD39C00FFC79400FFD7AD00000000000000
      0000D6C7BD000000000000000000000000000000000000000000000000000000
      0000000000000000000040404000808080000000000000000000000000004020
      2000A4A0A0000000000000000000000000000000000000000000404040008060
      6000000000000000000000000000404040008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6C7
      BD00D6C7BD0000000000000000000000000000000000FFFBFF00DECBC600D6C7
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DECBC600D6C7BD00D6C7BD00D6C7BD00D6C7BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFF8E300000000FFFFF00100000000
      FFFFF00000000000FFFFF00000000000FE7FF00000000000FC3F800000000000
      F99F000000000000F3CF000000000000FE7F000000000000FC3F000000000000
      F99F000100000000F3CF000F00000000FFFF001F00000000FFFF003F00000000
      FFFF07FF00000000FFFFFFFF00000000F81FFFFFFFFFFFFFE007FFFFFFFFFFFF
      C003FC63C63FFFFF9001F801801FFFFFA101F001800FF3CF0000E0018007F99F
      0004C003C003FC3F00008007E001FE7F0000800FF001F3CF00408007E001F99F
      4044C003C003FC3F8281E0018007FE7FA00BF001800FFFFFD837F801801FFFFF
      E78FFC63C63FFFFFF83FFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
