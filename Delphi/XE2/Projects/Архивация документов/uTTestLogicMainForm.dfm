object TestLogicMainForm: TTestLogicMainForm
  Left = 0
  Top = 0
  BorderWidth = 6
  Caption = 'TestLogicMainForm'
  ClientHeight = 497
  ClientWidth = 412
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
  object gbInfo: TGroupBox
    Left = 0
    Top = 29
    Width = 412
    Height = 239
    Align = alTop
    Caption = ' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '
    TabOrder = 1
    DesignSize = (
      412
      239)
    object gbCurrentBox: TGroupBox
      Left = 8
      Top = 16
      Width = 397
      Height = 105
      Align = alCustom
      Anchors = [akLeft, akTop, akRight]
      Caption = ' '#1058#1077#1082#1091#1097#1080#1081' '#1082#1086#1088#1086#1073' '
      TabOrder = 0
    end
    object gbLastDocument: TGroupBox
      Left = 8
      Top = 127
      Width = 397
      Height = 105
      Anchors = [akLeft, akTop, akRight]
      Caption = ' '#1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090' '
      TabOrder = 1
    end
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 466
    Width = 412
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 4
    DesignSize = (
      412
      31)
    object btnTestLogic: TButton
      Left = 0
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actTestLogic
      TabOrder = 0
    end
    object btnClose: TButton
      Left = 337
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actClose
      Anchors = [akTop, akRight]
      Cancel = True
      TabOrder = 1
    end
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 412
    Height = 29
    Caption = 'ToolBar'
    Images = ImageList
    TabOrder = 0
    object tbPrintSticker: TToolButton
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Action = actPrintSticker
    end
    object tbSeparator: TToolButton
      Left = 23
      Top = 0
      Width = 8
      Caption = 'tbSeparator'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object tbDeleteLastDocument: TToolButton
      Left = 31
      Top = 0
      Cursor = crHandPoint
      Action = actDeleteLastDocument
    end
  end
  object gbBarcode: TGroupBox
    Left = 0
    Top = 268
    Width = 412
    Height = 54
    Align = alTop
    Caption = ' '#1064#1090#1088#1080#1093'-'#1082#1086#1076' '
    TabOrder = 2
    object edBarcode: TEdit
      Left = 8
      Top = 24
      Width = 395
      Height = 21
      TabOrder = 0
    end
  end
  object gbHint: TGroupBox
    Left = 0
    Top = 322
    Width = 412
    Height = 144
    Align = alClient
    Caption = ' '#1057#1086#1086#1073#1097#1077#1085#1080#1077' '
    TabOrder = 3
    object lblHint: TLabel
      Left = 8
      Top = 16
      Width = 395
      Height = 122
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
    end
  end
  object SQLConnection: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'SchemaOverride=sa.dbo'
      'DriverName=MSSQL'
      'HostName=MOSTRA-822'
      'DataBase=RTL'
      'User_Name=user'
      'Password=password'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'OS Authentication=True'
      'Prepare SQL=False'
      'ConnectTimeout=60'
      'Mars_Connection=False')
    Left = 256
    Top = 376
  end
  object ADOConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI10.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=RTL;Data Source=MOSTRA-822;' +
      'Initial File Name="";Server SPN=""'
    Provider = 'SQLNCLI10.1'
    Left = 168
    Top = 376
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 80
    Top = 376
    object actTestLogic: TAction
      Caption = 'Test Logic'
      OnExecute = actTestLogicExecute
    end
    object actPrintSticker: TAction
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1090#1080#1082#1077#1088#1072' '#1076#1083#1103' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1082#1086#1088#1086#1073#1072
      ImageIndex = 0
    end
    object actDeleteLastDocument: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 1
    end
    object actClose: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnExecute = actCloseExecute
    end
  end
  object ImageList: TImageList
    Left = 336
    Top = 376
    Bitmap = {
      494C010102000800200010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000868686008686860000000000000000000000
      00000000000000000000000000000000000000000000000000006E6E6E006E6E
      6E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200C0C0C00077777700000000000000000086868600777777000000
      00000000000000000000000000000000000000000000795FEA002900DF003F28
      A600656565000000000000000000000000000000000000000000000000000000
      00006250B2002E07D80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C0007777770077777700CCCCCC00A4A0A000A4A0A00000000000000000008686
      86007777770000000000000000000000000000000000795FEA002900DF00300A
      DB00534E6A006565650000000000000000000000000000000000000000004629
      C3002900DF005A46B60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600777777007777
      7700CCCCCC00CCCCCC00C0C0C000A4A0A0009999990096969600868686000000
      0000000000007777770000000000000000000000000000000000795FEA002900
      DF003D1CD2005F5F5F00000000000000000000000000000000003A18CD002E07
      D8005A46B6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860077777700D7D7D700CCCC
      CC00CCCCCC00C0C0C000C0C0C000A4A0A0009999990096969600969696008686
      8600868686000000000000000000000000000000000000000000000000007A60
      EB002900DF005238C3006464640000000000000000003A18CD002E07D8005A46
      B600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868600F8F8F800CCCCCC00CCCC
      CC00C0C0C000C0C0C000F8F8F80099999900A4A0A00096969600868686008686
      8600777777008686860077777700000000000000000000000000000000000000
      00007A60EB002900DF005137C30053505E003312C7002C06D7005A46B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868600F8F8F800C0C0C000C0C0
      C000F8F8F800F8F8F800CCCCCC00CCCCCC00CCCCCC0096969600969696008686
      8600868686007777770077777700000000000000000000000000000000000000
      000000000000795FEA002900DF002C06D7002B05D6006A628C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868600F8F8F800F8F8F800F8F8
      F800D7D7D700D7D7D7000000FF003300CC00CCCCCC00CCCCCC00C0C0C0008686
      8600868686008686860077777700000000000000000000000000000000000000
      000000000000000000002F08D9002900DF00472BC4006A628C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868600F8F8F800DDDDDD00DDDD
      DD0000FF000000996600CCCCCC00CCCCCC00D7D7D70077777700868686000000
      0000C0C0C0007777770077777700000000000000000000000000000000000000
      0000000000003A18CD002E07D8005A46B600360FE000593DD6006A628C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008686860086868600F8F8
      F800DDDDDD00D7D7D700D7D7D7008686860077777700C0C0C000C0C0C0000000
      0000C0C0C0007777770077777700000000000000000000000000000000000000
      00003A18CD002900DF005A46B6000000000000000000431FE2004A28DD006A62
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      860086868600F8F8F80077777700C0C0C000C0C0C000DDDDDD00E3E3E300DDDD
      DD00000000000000000000000000000000000000000000000000000000003917
      CC002900DF005A46B600000000000000000000000000000000005F40E700350E
      DF006A628C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860086868600D7D7D700DDDDDD00EAEAEA00EAEAEA00F1F1
      F100DDDDDD0000000000000000000000000000000000000000003917CC002900
      DF005A46B6000000000000000000000000000000000000000000000000005F40
      E7002900DF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000086868600E3E3E300EAEAEA00F1F1F100F8F8
      F800F8F8F800DDDDDD00000000000000000000000000411DE0002900DF004629
      C300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086868600F1F1F100F1F1F100F8F8
      F80086868600868686000000000000000000000000003610E1004D2CE1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600868686008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC7FFFFF00000000F01FCFFF00000000
      C00787F300000000800183E3000000008001C3C7000000000001E18F00000000
      0000F01F000000000000F83F000000000000FC3F000000000000F81F00000000
      8001F18F00000000E007E3C700000000F803C7E700000000FE008FFF00000000
      FF039FFF00000000FF8FFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
