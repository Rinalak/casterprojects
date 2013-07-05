object ConfigurationForm: TConfigurationForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  BorderWidth = 6
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
  ClientHeight = 320
  ClientWidth = 462
  Color = clBtnFace
  Constraints.MaxHeight = 360
  Constraints.MaxWidth = 480
  Constraints.MinHeight = 360
  Constraints.MinWidth = 480
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 0
    object gbTop: TGroupBox
      Left = 4
      Top = 4
      Width = 454
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
      DesignSize = (
        454
        45)
      object cmbPageName: TComboBox
        Left = 10
        Top = 15
        Width = 379
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        OnSelect = cmbPageNameSelect
        Items.Strings = (
          ' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1072
          ' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
          ' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1086#1090#1095#1105#1090#1072
          ' '#1087#1088#1086#1095#1080#1077)
      end
      object btnNextPage: TButton
        Left = 423
        Top = 15
        Width = 22
        Height = 21
        Cursor = crHandPoint
        Action = actNextPage
        Anchors = [akTop, akRight]
        Images = ImageList
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object btnPreviousPage: TButton
        Left = 395
        Top = 15
        Width = 22
        Height = 21
        Cursor = crHandPoint
        Action = actPreviousPage
        Anchors = [akTop, akRight]
        Images = ImageList
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 293
    Width = 462
    Height = 27
    Align = alBottom
    BevelOuter = bvNone
    Constraints.MaxHeight = 27
    Constraints.MinHeight = 27
    TabOrder = 2
    DesignSize = (
      462
      27)
    object btnApply: TButton
      Left = 225
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actApply
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
    object btnCancel: TButton
      Left = 306
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actCancel
      Anchors = [akTop, akRight]
      Cancel = True
      TabOrder = 2
    end
    object btnDefaults: TButton
      Left = 0
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actDefaults
      TabOrder = 0
    end
    object btnHelp: TButton
      Left = 387
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actHelp
      Anchors = [akTop, akRight]
      TabOrder = 3
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 53
    Width = 462
    Height = 240
    ActivePage = tsResults
    Align = alClient
    Style = tsButtons
    TabOrder = 1
    TabStop = False
    object tsInterface: TTabSheet
      Caption = ' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1072
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbInterface: TGroupBox
        Left = 0
        Top = 0
        Width = 454
        Height = 230
        Align = alClient
        TabOrder = 0
        object chkEnableToolbar: TCheckBox
          Left = 10
          Top = 33
          Width = 435
          Height = 17
          Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1087#1072#1085#1077#1083#1100' '#1082#1085#1086#1087#1086#1082
          TabOrder = 1
        end
        object chkEnableSplashAtStart: TCheckBox
          Left = 10
          Top = 10
          Width = 435
          Height = 17
          Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1086#1082#1085#1086' "'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'..." '#1087#1088#1080' '#1079#1072#1087#1091#1089#1082#1077
          TabOrder = 0
        end
        object chkEnableStatusbar: TCheckBox
          Left = 10
          Top = 56
          Width = 435
          Height = 17
          Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1087#1072#1085#1077#1083#1100' '#1089#1090#1072#1090#1091#1089#1072
          TabOrder = 2
        end
        object chkEnableQuitConfirmation: TCheckBox
          Left = 10
          Top = 79
          Width = 435
          Height = 17
          Caption = #1058#1088#1077#1073#1086#1074#1072#1090#1100' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1087#1088#1080' '#1074#1099#1093#1086#1076#1077' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
          TabOrder = 3
        end
        object chkEnableStoreMainFormSizesAndPosition: TCheckBox
          Left = 10
          Top = 102
          Width = 435
          Height = 17
          Caption = #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1087#1086#1083#1086#1078#1077#1085#1080#1077' '#1080' '#1088#1072#1079#1084#1077#1088#1099' '#1075#1083#1072#1074#1085#1086#1075#1086' '#1086#1082#1085#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
          TabOrder = 4
        end
      end
    end
    object tsResults: TTabSheet
      Caption = ' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
      ImageIndex = 2
      TabVisible = False
      object gbConnection: TGroupBox
        Left = 0
        Top = 0
        Width = 454
        Height = 230
        Align = alClient
        TabOrder = 0
        DesignSize = (
          454
          230)
        object lblServerName: TLabel
          Left = 10
          Top = 9
          Width = 199
          Height = 13
          Caption = '&1. '#1042#1099#1073#1077#1088#1080#1090#1077' '#1080#1083#1080' '#1074#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '#1089#1077#1088#1074#1077#1088#1072':'
          FocusControl = cmbServers
        end
        object lblDatabaseName: TLabel
          Left = 10
          Top = 174
          Width = 194
          Height = 13
          Caption = '&3. '#1042#1099#1073#1077#1088#1080#1090#1077' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093' '#1085#1072' '#1089#1077#1088#1074#1077#1088#1077':'
          Enabled = False
          FocusControl = cmbDatabaseName
        end
        object lblLogin: TLabel
          Left = 67
          Top = 123
          Width = 30
          Height = 13
          Caption = #1051#1086'&'#1075#1080#1085
          Enabled = False
          FocusControl = ebLogin
        end
        object lblPassword: TLabel
          Left = 67
          Top = 150
          Width = 37
          Height = 13
          Caption = #1055#1072'&'#1088#1086#1083#1100
          Enabled = False
          FocusControl = mePassword
        end
        object lblSecurity: TLabel
          Left = 10
          Top = 55
          Width = 197
          Height = 13
          Caption = '&2. '#1044#1083#1103' '#1074#1093#1086#1076#1072' '#1085#1072' '#1089#1077#1088#1074#1077#1088' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100':'
          FocusControl = rbWinNTSecurity
        end
        object cmbServers: TComboBox
          Left = 43
          Top = 28
          Width = 373
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Sorted = True
          TabOrder = 0
          OnChange = cmbServersChange
          OnDropDown = cmbServersDropDown
          OnKeyDown = cmbServersKeyDown
          OnSelect = cmbServersSelect
        end
        object cmbDatabaseName: TComboBox
          Left = 43
          Top = 193
          Width = 374
          Height = 21
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          TabOrder = 8
        end
        object rbWinNTSecurity: TRadioButton
          Left = 43
          Top = 74
          Width = 402
          Height = 17
          Action = actUseWinNTSecurity
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          TabStop = True
        end
        object rbLoginAndPassword: TRadioButton
          Left = 43
          Top = 97
          Width = 402
          Height = 17
          Action = actUseLoginAndPassword
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
        end
        object chkEnableEmptyPassword: TCheckBox
          Left = 302
          Top = 149
          Width = 63
          Height = 17
          Action = actEnableEmptyPassword
          TabOrder = 6
        end
        object chkEnableStorePassword: TCheckBox
          Left = 371
          Top = 149
          Width = 74
          Height = 17
          Action = actEnablePasswordSaving
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 7
        end
        object ebLogin: TEdit
          Left = 110
          Top = 120
          Width = 186
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          TabOrder = 4
          OnKeyDown = ebLoginKeyDown
        end
        object mePassword: TMaskEdit
          Left = 110
          Top = 147
          Width = 186
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          PasswordChar = '*'
          TabOrder = 5
          Text = ''
          OnKeyDown = mePasswordKeyDown
        end
        object btnRefreshServers: TButton
          Left = 423
          Top = 28
          Width = 22
          Height = 21
          Cursor = crHandPoint
          Action = actRefreshServers
          Anchors = [akTop, akRight]
          Images = ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object btnRefreshDatabases: TButton
          Left = 423
          Top = 193
          Width = 22
          Height = 21
          Cursor = crHandPoint
          Action = actRefreshDatabases
          Anchors = [akTop, akRight]
          Images = ImageList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
      end
    end
    object tsReport: TTabSheet
      Caption = ' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1086#1090#1095#1105#1090#1072
      ImageIndex = 3
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbReport: TGroupBox
        Left = 0
        Top = 0
        Width = 454
        Height = 230
        Align = alClient
        TabOrder = 0
        object chkEnableGenerateFastReportDocument: TCheckBox
          Left = 10
          Top = 10
          Width = 435
          Height = 17
          Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1105#1090' '#1074' '#1074#1080#1076#1077' '#1087#1077#1095#1072#1090#1085#1086#1081' '#1092#1086#1088#1084#1099' FastReport'
          TabOrder = 0
        end
        object chkEnableGenerateExcelDocument: TCheckBox
          Left = 10
          Top = 33
          Width = 435
          Height = 17
          Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1105#1090' '#1074' '#1074#1080#1076#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' Microsoft Excel'
          TabOrder = 1
        end
      end
    end
    object tsOther: TTabSheet
      Caption = ' '#1087#1088#1086#1095#1080#1077
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbOther: TGroupBox
        Left = 0
        Top = 0
        Width = 454
        Height = 230
        Align = alClient
        TabOrder = 0
        object chkEnablePlaySoundOnComplete: TCheckBox
          Left = 10
          Top = 10
          Width = 435
          Height = 17
          Caption = 
            #1055#1086#1076#1072#1074#1072#1090#1100' '#1079#1074#1091#1082#1086#1074#1086#1081' '#1089#1080#1075#1085#1072#1083' '#1087#1088#1080' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1080' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1076#1083#1080#1090#1077#1083#1100#1085#1086#1075#1086' '#1076 +
            #1077#1081#1089#1090#1074#1080#1103
          TabOrder = 0
        end
      end
    end
  end
  object ActionList: TActionList
    OnUpdate = ActionListUpdate
    Left = 408
    Top = 80
    object actCancel: TAction
      Category = #1044#1077#1081#1089#1090#1074#1080#1077
      Caption = '&'#1054#1090#1084#1077#1085#1072
      Hint = #1054#1090#1084#1077#1085#1072'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1084#1077#1085#1099' '#1074#1085#1077#1089#1105#1085#1085#1099#1093' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
      OnExecute = actCancelExecute
    end
    object actApply: TAction
      Category = #1044#1077#1081#1089#1090#1074#1080#1077
      Caption = '&'#1055#1088#1080#1084#1077#1085#1080#1090#1100
      Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1074#1085#1077#1089#1105#1085#1085#1099#1093' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
      OnExecute = actApplyExecute
      OnUpdate = actApplyUpdate
    end
    object actHelp: TAction_Help
      Category = #1057#1087#1088#1072#1074#1082#1072
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      Enabled = False
      Hint = #1057#1087#1088#1072#1074#1082#1072'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1086#1082#1085#1072' '#1089#1087#1088#1072#1074#1082#1080' '#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      ImageIndex = 2
      ShortCut = 112
    end
    object actDefaults: TAction_Defaults
      Category = #1044#1077#1081#1089#1090#1074#1080#1077
      Caption = #1057'&'#1073#1088#1086#1089
      Hint = 
        #1057#1073#1088#1086#1089#1080#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1103'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1089#1073#1088#1086#1089#1072' '#1074#1089#1077#1093' '#1079#1085#1072#1095#1077#1085#1080#1081' '#1082' '#1079#1085#1072#1095#1077#1085#1080#1103#1084' '#1087 +
        #1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      OnExecute = actDefaultsExecute
      OnUpdate = actDefaultsUpdate
    end
    object actPreviousPage: TAction_PreviousPage
      Category = #1044#1077#1081#1089#1090#1074#1080#1077
      Hint = 
        #1050' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1081' '#1089#1090#1088#1072#1085#1080#1094#1077'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1081' '#1089#1090#1088#1072#1085#1080#1094 +
        #1099
      ImageIndex = 0
      ShortCut = 16421
      OnExecute = actPreviousPageExecute
      OnUpdate = actPreviousPageUpdate
    end
    object actNextPage: TAction_NextPage
      Category = #1044#1077#1081#1089#1090#1074#1080#1077
      Hint = #1050' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1089#1090#1088#1072#1085#1080#1094#1077'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1089#1090#1088#1072#1085#1080#1094#1099
      ImageIndex = 1
      ShortCut = 16423
      OnExecute = actNextPageExecute
      OnUpdate = actNextPageUpdate
    end
    object actRefreshServers: TAction
      Category = #1044#1077#1081#1089#1090#1074#1080#1077
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1089#1077#1088#1074#1077#1088#1086#1074'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103' '#1089#1087#1080#1089#1082#1072' '#1089#1077#1088#1074#1077#1088#1086#1074
      ImageIndex = 2
      OnExecute = actRefreshServersExecute
    end
    object actRefreshDatabases: TAction
      Category = #1044#1077#1081#1089#1090#1074#1080#1077
      Hint = 
        #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1041#1044'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103' '#1089#1087#1080#1089#1082#1072' '#1073#1072#1079' '#1076#1072#1085#1085#1099#1093' '#1085#1072' '#1074 +
        #1099#1073#1088#1072#1085#1085#1086#1084' '#1089#1077#1088#1074#1077#1088#1077
      ImageIndex = 2
      OnExecute = actRefreshDatabasesExecute
    end
    object actUseWinNTSecurity: TAction
      Category = #1044#1077#1081#1089#1090#1074#1080#1077
      AutoCheck = True
      Caption = #1074#1089#1090#1088#1086#1077#1085#1085#1091#1102' '#1089#1080#1089#1090#1077#1084#1091' &'#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080' Windows NT'
      Checked = True
      OnExecute = actUseWinNTSecurityExecute
    end
    object actUseLoginAndPassword: TAction
      Category = #1044#1077#1081#1089#1090#1074#1080#1077
      AutoCheck = True
      Caption = #1089#1083#1077#1076#1091#1102#1097#1080#1077' &'#1083#1086#1075#1080#1085' '#1080' '#1087#1072#1088#1086#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':'
      OnExecute = actUseLoginAndPasswordExecute
    end
    object actEnablePasswordSaving: TAction
      Category = #1044#1077#1081#1089#1090#1074#1080#1077
      AutoCheck = True
      Caption = #1089#1086'&'#1093#1088#1072#1085#1080#1090#1100
      Enabled = False
      OnExecute = actEnablePasswordSavingExecute
    end
    object actEnableEmptyPassword: TAction
      Category = #1044#1077#1081#1089#1090#1074#1080#1077
      AutoCheck = True
      Caption = #1087#1091#1089#1090#1086'&'#1081
      Enabled = False
      OnExecute = actEnableEmptyPasswordExecute
    end
    object Action_Help1: TAction_Help
      Category = #1057#1087#1088#1072#1074#1082#1072
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      Enabled = False
      Hint = #1057#1087#1088#1072#1074#1082#1072'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1086#1082#1085#1072' '#1089#1087#1088#1072#1074#1082#1080' '#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      ImageIndex = 3
      ShortCut = 112
    end
    object actEnableStoreTasks: TAction
      Category = #1044#1077#1081#1089#1090#1074#1080#1077
      AutoCheck = True
      Caption = #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1090#1077#1089#1090#1086#1074' '#1074' '#1087#1088#1086#1092#1080#1083#1077
    end
  end
  object ADOConnection: TADOConnection
    Provider = 'SQLOLEDB.1'
    Left = 368
    Top = 120
  end
  object ImageList: TImageList
    AllocBy = 3
    Left = 16
    Top = 184
    Bitmap = {
      494C0101040008007C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D655F006D655F006D655F006C66610075727000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600CC999900FFECCC00E3E3E300E3E3E300EAEAEA00FFECCC00CC9999004D4D
      4D004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C06F2A00A6653000BD601800B1521100AB4F1800B6682E00000000000000
      0000000000000000000000000000000000000000000000000000CC999900EAEA
      EA00F8F8F800DDDDDD00CCCC9900CC999900F0CAA600EAEAEA00F1F1F100FFEC
      CC00F0CAA6004D4D4D0000000000000000000000000000000000000000000000
      0000000000000000000042424200868686000000000000000000000000003333
      3300A4A0A0000000000000000000000000000000000000000000424242009966
      6600000000000000000000000000424242008686860000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C06F
      2A00CB722000D77C2000B3652600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC999900EAEAEA00FFFF
      FF00CC996600CC663300CC663300CCCC9900CC663300CC663300CC999900F1F1
      F100EAEAEA00CBCBCB004D4D4D00000000000000000000000000000000000000
      00000000000042424200C0C0C000F0FBFF00868686000000000033333300C0C0
      C000F0FBFF00A4A0A00000000000000000000000000033666600C0C0C000C0DC
      C000868686000000000042424200C0C0C000F0FBFF0086868600000000000000
      0000000000000000000000000000000000000000000000000000C06F2A00D078
      2500E8912B00B666210000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC999900FFFFFF00CC66
      3300CC663300CC663300CC999900FFFFFF00CC996600CC663300CC663300CC99
      6600F8F8F800FFECCC004D4D4D00000000000000000000000000000000000000
      000042424200C0C0C000F0FBFF00868686000000000033333300C0C0C000F0FB
      FF00A4A0A000000000000000000000000000000000000000000042424200C0C0
      C000F0FBFF00868686000000000042424200C0C0C000F0FBFF00A4A0A0000000
      0000000000000000000000000000000000000000000000000000C06F2A00E58E
      2D00DC8427008355310000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC999900FFFFFF00CC996600CC66
      3300CC663300CC663300CC663300CC996600CC663300CC663300CC663300CC66
      3300F0CAA600F1F1F100CCCCCC004D4D4D000000000000000000000000004242
      4200C0C0C000F0FBFF00868686000000000033333300C0C0C000F0FBFF00A4A0
      A000000000000000000000000000000000000000000000000000000000004242
      4200C0C0C000F0FBFF00868686000000000033333300C0C0C000F0FBFF00A4A0
      A000000000000000000000000000000000000000000000000000C06F2A00EA95
      3100DB8225007F4E2A0057514C00706963000000000000000000B25F1D00BA57
      060000000000000000000000000000000000CBCBCB00F8F8F800CC663300CC66
      3300CC663300CC663300CC996600EAEAEA00CC663300CC663300CC663300CC66
      3300CC663300FFFFFF00F0CAA6004D4D4D00000000000000000042424200C0C0
      C000F0FBFF00868686000000000042424200C0C0C000F0FBFF00A4A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042424200C0C0C000F0FBFF00868686000000000033333300C0C0C000F0FB
      FF00A4A0A000000000000000000000000000C06F2A00C76F2700E18B2F00EC97
      3200E48D2900C76E1D00BB5F1700A46F410000000000AE673000C7620200C964
      0000A9530F00000000000000000000000000CBCBCB00FFECCC00CC663300CC66
      3300CC663300CC663300CC996600FFFFFF00CC999900CC663300CC663300CC66
      3300CC663300F1F1F100FFECCC004D4D4D000000000033666600C0C0C000C0DC
      C000868686000000000042424200C0C0C000F0FBFF0086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042424200C0C0C000F0FBFF00868686000000000033333300C0C0
      C000F0FBFF00A4A0A000000000000000000000000000C06F2A00ED9A3600EC97
      3100E8912B00DD832200B166260000000000C8640700C8640700CC660100CB65
      0000C7610100985018000000000000000000CBCBCB00FFCCCC00CC663300CC66
      3300CC663300CC663300CC663300CC999900F8F8F800FF996600CC663300CC66
      3300CC663300F1F1F100E3E3E3004D4D4D00000000000000000042424200C0C0
      C000F0FBFF00868686000000000042424200C0C0C000F0FBFF00A4A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042424200C0C0C000F0FBFF00868686000000000033333300C0C0C000F0FB
      FF00A4A0A0000000000000000000000000000000000000000000C06F2A00EC97
      3100E58F2A00BD68210000000000C8640700BB5B0E00CB670600CB660100CA64
      0000C9630100BD5A0600AD6A370000000000CBCBCB00F1F1F100CC663300CC66
      3300CC663300CC663300CC663300CC663300CCCCCC00FFFFFF00CC663300CC66
      3300CC663300FFFFFF00FFECCC004D4D4D000000000000000000000000004242
      4200C0C0C000F0FBFF00868686000000000033333300C0C0C000F0FBFF00A4A0
      A000000000000000000000000000000000000000000000000000000000004242
      4200C0C0C000F0FBFF00868686000000000033333300C0C0C000F0FBFF00A4A0
      A00000000000000000000000000000000000000000000000000000000000C06F
      2A00CC73230000000000C8640700A4735200A4735200C1723300C9640100CA64
      0000A9541200A4735200A4735200A4735200CBCBCB00FFFFFF00FF996600CC66
      3300CC996600EAEAEA00CC996600CC663300CC996600FFFFFF00CC996600CC66
      3300FF996600FFFFFF00CBCBCB004D4D4D000000000000000000000000000000
      000042424200C0C0C000F0FBFF00868686000000000033333300C0C0C000F0FB
      FF00A4A0A000000000000000000000000000000000000000000042424200C0C0
      C000F0FBFF00868686000000000042424200C0C0C000F0FBFF00A4A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B25F1D00C7620200C560
      02008D572E0000000000000000000000000000000000CBCBCB00FFECCC00FF99
      6600CC996600F1F1F100FFFFFF00F0CAA600FFFFFF00F1F1F100CC663300CC66
      3300F1F1F100EAEAEA004D4D4D00000000000000000000000000000000000000
      00000000000042424200C0C0C000F0FBFF00868686000000000033333300C0C0
      C000F0FBFF00A4A0A00000000000000000000000000033666600C0C0C000C0DC
      C000868686000000000042424200C0C0C000F0FBFF0086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B25F1D00CB660100BD59
      0600AD71420000000000000000000000000000000000CBCBCB00FFFFFF00FFEC
      CC00FF996600FF999900E3E3E300EAEAEA00EAEAEA00FF996600FF996600FFEC
      CC00FFFFFF00CBCBCB0000000000000000000000000000000000000000000000
      0000000000000000000042424200868686000000000000000000000000003333
      3300A4A0A0000000000000000000000000000000000000000000424242009966
      6600000000000000000000000000424242008686860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000089837F00806B5E00A55F2800CA670700C35F0400AD71
      4200000000000000000000000000000000000000000000000000CBCBCB00FFFF
      FF00FFFFFF00FFECCC00F0CAA600FFCC9900FFCC9900F0CAA600FFFFFF00FFFF
      FF00CBCBCB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF6D3100B6571500B9591200BF5D0F00BF621800AD7142000000
      000000000000000000000000000000000000000000000000000000000000CBCB
      CB00CBCBCB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC00CBCB
      CB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCCCC00CBCBCB00CBCBCB00CBCBCB00CBCBCB00000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFF81FFFFFFFFFF83FE007
      FC63C63FF03FC003F801801FE1FF8001F001800FC3FF8001E0018007C3FF0000
      C003C003C0CF00008007E00100870000800FF001810300008007E001C2010000
      C003C003E4000000E0018007FF878001F001800FFF878003F801801FFC0FC007
      FC63C63FF81FE00FFFFFFFFFFFFFF83F00000000000000000000000000000000
      000000000000}
  end
end
