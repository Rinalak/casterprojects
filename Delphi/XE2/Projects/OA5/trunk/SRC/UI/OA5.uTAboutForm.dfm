object AboutForm: TAboutForm
  Left = 0
  Top = 0
  Hint = #1054#1082#1085#1086' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
  AlphaBlend = True
  AlphaBlendValue = 222
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'About "OA5"...'
  ClientHeight = 240
  ClientWidth = 347
  Color = clSilver
  TransparentColor = True
  TransparentColorValue = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape: TShape
    Left = 0
    Top = 0
    Width = 347
    Height = 240
    Align = alClient
    Pen.Color = clInactiveCaptionText
    Pen.Width = 4
    Shape = stEllipse
  end
  object lblEMail: TLabel
    Left = 104
    Top = 173
    Width = 32
    Height = 13
    Alignment = taRightJustify
    Caption = 'E-Mail:'
    Transparent = True
  end
  object lblEMailAddress: TLabel
    Left = 140
    Top = 172
    Width = 207
    Height = 16
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'vlad_dracula@tut.by'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsUnderline]
    ParentFont = False
    Transparent = True
    OnClick = lblEMailAddressClick
  end
  object lblLegalCopyright: TLabel
    Left = 0
    Top = 158
    Width = 347
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblVersion: TLabel
    Left = 0
    Top = 142
    Width = 347
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1077#1088#1089#1080#1103' 5.0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object imgApplicationIcon: TImage
    Left = 157
    Top = 30
    Width = 32
    Height = 32
    AutoSize = True
    Picture.Data = {
      07544269746D6170360C0000424D360C00000000000036000000280000002000
      0000200000000100180000000000000C0000120B0000120B0000000000000000
      0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00
      FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000
      000000FF00FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00
      FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000
      000000FF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00
      FF000000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      000000000000FF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FF0000
      00000000000000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      000000000000FF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FF0000
      000000000099CC0099CC0099CC000000000000FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      000000000000FF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FF0000
      0000000000CCFF00CCFF0099CC000000000000FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000
      000000FF00FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FF0000
      0000000000000000CCFF000000000000000000FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000
      000000FF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000
      000000FF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000000000000000
      000099CC0099CC0099CC0099CC0099CC000000000000000000000000FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000
      000000000000FF00FFFF00FFFF00FFFF00FF00000000000000000099FFFF00CC
      FF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC0099CC000000000000000000FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000
      000000000000000000FF00FFFF00FFFF00FF00000000000099FFFF00CCFF00CC
      FF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC000000000000FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000DD0000DD
      0000DD000000000000FF00FFFF00FF00000000000000000099FFFF00CCFF00CC
      FF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC000000000000FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000DD0000DD
      0000DD000000000000FF00FFFF00FF00000000000000000099FFFF00CCFF00CC
      FF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC00000000000000
      0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000000000DD
      00000000000000000000000000000000000000000099FFFF00CCFF00CCFF00CC
      FF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC00000000
      0000FF00FFFF00FFFF00FFFF00FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000099FFFF00CCFF00CCFF00CC
      FF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC00000000
      0000FF00FFFF00FFFF00FF0000000000000000000000000000AA0000AA0000AA
      0000AA0000AA00000000000000000000000000000099FFFF00CCFF00CCFF00CC
      FF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC00000000
      0000FF00FFFF00FF0000000000000000006633FF0000DD0000DD0000DD0000DD
      0000DD0000DD0000AA0000AA00000000000000000099FFFF00CCFF00CCFF00CC
      FF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC00000000
      0000FF00FFFF00FF0000000000006633FF0000DD0000DD0000DD0000DD0000DD
      0000DD0000DD0000DD0000DD0000AA00000000000099FFFF00CCFF00CCFF99FF
      FF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC00000000
      0000FF00FFFF00FF0000000000006633FF0000DD0000DD0000DD0000DD0000DD
      0000DD0000DD0000DD0000DD0000AA00000000000000000099FFFF00CCFF99FF
      FF99FFFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC00000000000000
      0000FF00FF0000000000000000006633FF0000DD0000DD0000DD0000DD0000DD
      0000DD0000DD0000DD0000DD0000AA00000000000000000099FFFF00CCFF99FF
      FF99FFFF99FFFF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC000000000000FF
      00FFFF00FF0000000000006633FF0000DD0000DD0000DD0000DD0000DD0000DD
      0000DD0000DD0000DD0000DD0000DD0000AA00000000000099FFFF00CCFF00CC
      FF99FFFF99FFFF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC000000000000FF
      00FFFF00FF0000000000006633FF0000DD0000DD0000DD0000DD0000DD0000DD
      0000DD0000DD0000DD0000DD0000DD0000AA00000000000000000099FFFF99FF
      FF00CCFF00CCFF00CCFF00CCFF00CCFF0099CC0099CC000000000000000000FF
      00FFFF00FF0000000000006633FF0000DD0000DD0000DD0000DD0000DD0000DD
      0000DD0000DD0000DD0000DD0000DD0000AA0000000000000000000000000000
      0099FFFF99FFFF99FFFF99FFFF99FFFF000000000000000000000000FF00FFFF
      00FFFF00FF0000000000006633FF0000DD0000DD0000DD0000DD0000DD0000DD
      0000DD0000DD0000DD0000DD0000DD0000AA0000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF00FFFF00FFFF
      00FFFF00FF0000000000006633FF0000DD0000DD6633FF0000DD0000DD0000DD
      0000DD0000DD0000DD0000DD0000DD0000AA000000000000FF6633FF66330000
      00000000000000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF0000000000000000006633FF0000DD6633FF6633FF0000DD0000DD
      0000DD0000DD0000DD0000DD0000AA000000000000000000FF6633FF6633FF66
      33FF6633FF6633CC3300000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF0000000000006633FF0000DD6633FF6633FF6633FF0000DD
      0000DD0000DD0000DD0000DD0000AA000000000000FF9966FF6633FF6633FF66
      33FF6633FF6633CC3300000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF0000000000006633FF0000DD0000DD6633FF6633FF0000DD
      0000DD0000DD0000DD0000DD0000AA000000000000FF6633FF6633FF6633FF66
      33CC3300CC3300000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF0000000000000000006633FF6633FF0000DD0000DD0000DD
      0000DD0000DD0000AA0000AA000000000000000000FF9966FF9966FF9966FF99
      66000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF0000000000000000000000006633FF6633FF6633FF
      6633FF6633FF0000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000000000000000
      000000000000000000000000FF00FFFF00FF0000000000000000000000000000
      00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000
      000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF}
    Transparent = True
  end
  object lblTitle: TLabel
    Left = 0
    Top = 95
    Width = 347
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = #1040#1056#1052' '#1086#1087#1077#1088#1072#1090#1086#1088#1072' '#1041#1044' "'#1054#1090#1076#1099#1093' '#1080' '#1088#1072#1079#1074#1083#1077#1095#1077#1085#1080#1103'"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 0
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Layout = tlBottom
  end
  object btnClose: TButton
    Left = 133
    Top = 191
    Width = 80
    Height = 25
    Cursor = crHandPoint
    Action = actClose
    Cancel = True
    Default = True
    TabOrder = 0
  end
  object CloseTimer: TTimer
    Interval = 3000
    OnTimer = CloseTimerTimer
    Left = 216
    Top = 8
  end
  object FadeTimer: TTimer
    Interval = 5
    OnTimer = FadeTimerTimer
    Left = 88
    Top = 8
  end
  object GSFileVersionInfo: TGSFileVersionInfo
    Left = 288
    Top = 8
  end
  object ActionList: TActionList
    Left = 32
    Top = 8
    object actClose: TAction
      Caption = '&'#1047#1072#1082#1088#1099#1090#1100
      Hint = #1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1086#1082#1085#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnExecute = actCloseExecute
    end
  end
end
