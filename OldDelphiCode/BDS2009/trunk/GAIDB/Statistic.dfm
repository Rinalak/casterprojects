object StatisticForm: TStatisticForm
  Left = 0
  Top = 0
  Hint = #1054#1082#1085#1086' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1089#1090#1072#1090#1080#1089#1090#1080#1095#1077#1089#1082#1080#1093' '#1086#1090#1095#1105#1090#1086#1074
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 5
  Caption = 'GAIDB - '#1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1077#1080' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1080#1093' '#1086#1090#1095#1105#1090#1086#1074' '#1087#1086' '#1088#1072#1073#1086#1090#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
  ClientHeight = 256
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 285
    Top = 0
    Width = 349
    Height = 256
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    FullRepaint = False
    TabOrder = 1
    object Label2: TLabel
      Left = 242
      Top = 2
      Width = 12
      Height = 21
      Caption = #1087#1086
      Constraints.MinHeight = 21
      Layout = tlCenter
    end
    object pnlButtons: TPanel
      Left = 2
      Top = 217
      Width = 345
      Height = 37
      Align = alBottom
      BevelEdges = [beTop]
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 10
      DesignSize = (
        345
        35)
      object btnCreate: TButton
        Left = 4
        Top = 5
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Hint = #1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1086#1090#1095#1105#1090#1072
        Anchors = [akTop, akRight]
        Caption = '&'#1057#1086#1079#1076#1072#1090#1100
        Enabled = False
        ModalResult = 1
        TabOrder = 0
      end
      object btnClose: TButton
        Left = 184
        Top = 5
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Hint = #1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1086#1082#1085#1072
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = '&'#1047#1072#1082#1088#1099#1090#1100
        Default = True
        ModalResult = 2
        TabOrder = 1
      end
      object btnHelp: TButton
        Left = 264
        Top = 5
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Hint = #1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1082#1088#1099#1090#1080#1103' '#1086#1082#1085#1072' '#1089#1087#1088#1072#1074#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        Anchors = [akTop, akRight]
        Caption = '&'#1057#1087#1088#1072#1074#1082#1072
        TabOrder = 2
      end
    end
    object RadioButton1: TRadioButton
      Left = 6
      Top = 5
      Width = 139
      Height = 17
      Caption = #1059#1082#1072#1079#1072#1085#1085#1099#1081' '#1087#1077#1088#1080#1086#1076'      '#1089
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 6
      Top = 28
      Width = 113
      Height = 17
      Caption = #1059#1082#1072#1079#1072#1085#1085#1099#1081' '#1084#1077#1089#1103#1094
      TabOrder = 3
      OnClick = RadioButton1Click
    end
    object RadioButton3: TRadioButton
      Left = 6
      Top = 51
      Width = 113
      Height = 17
      Caption = #1059#1082#1072#1079#1072#1085#1085#1099#1081' '#1075#1086#1076
      TabOrder = 6
      OnClick = RadioButton1Click
    end
    object dtpStartDate_stat: TDateTimePicker
      Left = 150
      Top = 3
      Width = 86
      Height = 21
      Date = 38742.000000000000000000
      Time = 38742.000000000000000000
      TabOrder = 1
    end
    object dtpStopDate_stat: TDateTimePicker
      Left = 260
      Top = 3
      Width = 86
      Height = 21
      Date = 38742.000000000000000000
      Time = 38742.000000000000000000
      TabOrder = 2
    end
    object chkbxDetailed: TCheckBox
      Left = 6
      Top = 171
      Width = 145
      Height = 17
      Hint = #1055#1086#1089#1090#1072#1074#1100#1090#1077' '#1086#1090#1084#1077#1090#1082#1091' '#1076#1083#1103' '#1075#1077#1085#1077#1088#1072#1094#1080#1080' '#1088#1072#1079#1074#1105#1088#1085#1091#1090#1086#1075#1086' ('#1087#1086#1076#1088#1086#1073#1085#1086#1075#1086') '#1086#1090#1095#1105#1090#1072
      Caption = #1056#1072#1079#1074#1105#1088#1085#1091#1090#1099#1081' '#1086#1090#1095#1105#1090
      TabOrder = 8
      OnClick = chkbxDetailedClick
    end
    object cmbbxSelectedYear: TComboBox
      Left = 150
      Top = 47
      Width = 86
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 7
    end
    object cmbbxSelectedMonthYear: TComboBox
      Left = 260
      Top = 25
      Width = 86
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
    end
    object cmbbxSelectedMonthMonth: TComboBox
      Left = 150
      Top = 25
      Width = 86
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = #1103#1085#1074#1072#1088#1100
      Items.Strings = (
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
    end
    object chkbxShowSQLQuery: TCheckBox
      Left = 6
      Top = 194
      Width = 205
      Height = 17
      Hint = #1055#1086#1089#1090#1072#1074#1100#1090#1077' '#1086#1090#1084#1077#1090#1082#1091' '#1076#1083#1103' '#1074#1099#1074#1086#1076#1072' '#1074' '#1092#1086#1088#1084#1091' '#1086#1090#1095#1105#1090#1072' '#1090#1077#1082#1089#1090#1086#1074' SQL-'#1079#1072#1087#1088#1086#1089#1086#1074
      Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1090#1077#1082#1089#1090' SQL-'#1079#1072#1087#1088#1086#1089#1086#1074
      Enabled = False
      TabOrder = 9
    end
    object CheckBox1: TCheckBox
      Left = 6
      Top = 148
      Width = 250
      Height = 17
      Hint = #1055#1086#1089#1090#1072#1074#1100#1090#1077' '#1086#1090#1084#1077#1090#1082#1091' '#1076#1083#1103' '#1075#1077#1085#1077#1088#1072#1094#1080#1080' '#1088#1072#1079#1074#1105#1088#1085#1091#1090#1086#1075#1086' ('#1087#1086#1076#1088#1086#1073#1085#1086#1075#1086') '#1086#1090#1095#1105#1090#1072
      Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1091#1085#1080#1082#1072#1083#1100#1085#1099#1084' '#1086#1073#1098#1077#1082#1090#1072#1084
      TabOrder = 11
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 285
    Height = 256
    Align = alLeft
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      285
      256)
    object Label1: TLabel
      Left = 2
      Top = 2
      Width = 116
      Height = 21
      Caption = #1057#1087#1080#1089#1086#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
      Constraints.MinHeight = 21
      Layout = tlCenter
    end
    object chklbxUsers: TCheckListBox
      Left = 0
      Top = 30
      Width = 285
      Height = 226
      Hint = 
        #1055#1086#1084#1077#1090#1100#1090#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081', '#1087#1086' '#1088#1072#1073#1086#1090#1077' '#1082#1086#1090#1086#1088#1099#1093' '#1085#1091#1078#1085#1086' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095 +
        #1105#1090
      OnClickCheck = RadioButton1Click
      Align = alBottom
      ItemHeight = 13
      TabOrder = 0
    end
    object btbtnUnselectAll: TBitBtn
      Left = 259
      Top = 3
      Width = 22
      Height = 21
      Hint = #1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1089#1085#1103#1090#1080#1103' '#1074#1089#1077#1093' '#1086#1090#1084#1077#1090#1086#1082
      Anchors = [akTop, akRight]
      TabOrder = 2
      OnClick = btbtnUnselectAllClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000808000808000808000000000000000000000000000000000000000
        0000000000000000000000000000000000000000008080008080008080000000
        0000000080800080800080800080800080800080800080800080800080800000
        0000000000808000808000808000000000000000808000808000808000808000
        8080008080008080008080008080000000000000008080008080008080000000
        0000000080800080800080800080800080800080800080800080800080800000
        0000000000808000808000808000000000000000808000808000808000808000
        8080008080008080008080008080000000000000008080008080008080000000
        0000000080800080800080800080800080800080800080800080800080800000
        0000000000808000808000808000000000000000808000808000808000808000
        8080008080008080008080008080000000000000008080008080008080000000
        0000000080800080800080800080800080800080800080800080800080800000
        0000000000808000808000808000000000000000808000808000808000808000
        8080008080008080008080008080000000000000008080008080008080000000
        0000000080800080800080800080800080800080800080800080800080800000
        0000000000808000808000808000000000000000000000000000000000000000
        0000000000000000000000000000000000000000008080008080008080000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080}
      Layout = blGlyphBottom
    end
    object btbtnSelectAll: TBitBtn
      Left = 231
      Top = 3
      Width = 22
      Height = 21
      Hint = #1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1087#1086#1084#1077#1090#1082#1080' '#1074#1089#1077#1093' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnClick = btbtnSelectAllClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000808000808000808000000000000000000000000000000000000000
        0000000000000000000000000000000000000000008080008080008080000000
        0000000080800080800080800080800080800080800080800080800080800000
        0000000000808000808000808000000000000000808000808000808000000000
        8080008080008080008080008080000000000000008080008080008080000000
        0000000080800080800000000000000000000080800080800080800080800000
        0000000000808000808000808000000000000000808000000000000000000000
        0000000000008080008080008080000000000000008080008080008080000000
        0000000080800000000000000080800000000000000000000080800080800000
        0000000000808000808000808000000000000000808000000000808000808000
        8080000000000000000000008080000000000000008080008080008080000000
        0000000080800080800080800080800080800080800000000000000080800000
        0000000000808000808000808000000000000000808000808000808000808000
        8080008080008080000000008080000000000000008080008080008080000000
        0000000080800080800080800080800080800080800080800080800080800000
        0000000000808000808000808000000000000000000000000000000000000000
        0000000000000000000000000000000000000000008080008080008080000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080}
      Layout = blGlyphBottom
    end
  end
end