object SignalForm: TSignalForm
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'SignalForm'
  ClientHeight = 186
  ClientWidth = 211
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 120
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1080#1075#1085#1072#1083#1072':'
    FocusControl = Edit1
  end
  object Label2: TLabel
    Left = 8
    Top = 54
    Width = 126
    Height = 13
    Caption = #1055#1077#1088#1080#1086#1076#1080#1095#1085#1086#1089#1090#1100' '#1089#1080#1075#1085#1072#1083#1072':'
    FocusControl = Edit2
  end
  object Label3: TLabel
    Left = 8
    Top = 100
    Width = 158
    Height = 13
    Caption = #1042#1086#1089#1087#1088#1086#1080#1079#1074#1077#1089#1090#1080' '#1079#1074#1091#1082#1086#1074#1086#1081' '#1092#1072#1081#1083':'
  end
  object Label4: TLabel
    Left = 8
    Top = 76
    Width = 26
    Height = 13
    Caption = #1088#1072#1079' '#1074
  end
  object Bevel1: TBevel
    Left = 8
    Top = 146
    Width = 193
    Height = 7
    Shape = bsTopLine
  end
  object Edit1: TEdit
    Left = 8
    Top = 27
    Width = 193
    Height = 21
    TabOrder = 0
    OnChange = Edit2Change
  end
  object Edit2: TEdit
    Left = 40
    Top = 73
    Width = 62
    Height = 21
    TabOrder = 1
    OnChange = Edit2Change
  end
  object Button1: TButton
    Left = 144
    Top = 117
    Width = 26
    Height = 25
    Cursor = crHandPoint
    Caption = '...'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 108
    Top = 73
    Width = 93
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    OnChange = Edit2Change
    Items.Strings = (
      #1089#1077#1082#1091#1085#1076
      #1084#1080#1085#1091#1090
      #1095#1072#1089#1086#1074)
  end
  object PlayButton: TBitBtn
    Left = 176
    Top = 117
    Width = 25
    Height = 25
    Cursor = crHandPoint
    TabOrder = 4
    OnClick = PlayButtonClick
  end
  object ButtonOk: TButton
    Left = 8
    Top = 153
    Width = 93
    Height = 25
    Cursor = crHandPoint
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    ModalResult = 1
    TabOrder = 5
  end
  object ButtonCancel: TButton
    Left = 108
    Top = 153
    Width = 93
    Height = 25
    Cursor = crHandPoint
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 6
  end
  object ComboBox2: TComboBox
    Left = 8
    Top = 119
    Width = 130
    Height = 21
    TabOrder = 7
    OnChange = Edit2Change
    OnSelect = Edit2Change
  end
  object ImageList1: TImageList
    Left = 135
    Bitmap = {
      494C010102000400280010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005F6172005F61720065688200656882005F6172000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000656882004553B9001F35DB000E24CC000A1EB7004652B00064698B006A6A
      6A005F6172000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009A212002869
      0A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006568
      8200122BEB00142EF500142EF500142EF500142EF500132DF0000E24CC004A56
      AA00656882006568820000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009A2120030C9
      600013AC260028690A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000142EF500142E
      F500142EF500223BF5000F26D6000F26D6000E25D100142EF500142EF5000F26
      D6004F5AA7006D6D6D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009A2120030C9
      600033CC660030C960001AB3330028690A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000142EF500142E
      F500142EF50000000000000000000000000000000000223AF500142EF500142E
      F5000D22C6005F61720065688200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009A2120033CC
      660036CF69003BD46E003DD670003AD3690018B12B0028690A00000000000000
      00000000000000000000000000000000000000000000142EF500142EF5000F26
      D60000000000000000000000000000000000223AF500132DF000142EF500142E
      F500122BEB005760A5005F617200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009A212003CD5
      6F0040D9730040D9730040D9730040D9730040D9730038D1650028AA3A002869
      0A000000000000000000000000000000000000000000233BF600142EF5000F26
      D600000000000000000000000000223AF500132DF000233BF600000000000F26
      D600142EF5004553B90065688200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009A2120040D9
      730042DB750049E17C004DE580004DE580004CE47F0048E17B0048E17B0031CA
      570028690A0000000000000000000000000000000000142EF500142EF5000F26
      D6000000000000000000223AF500142EF500233BF60000000000000000000F26
      D600142EF5005561BF0065688200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009A2120042DB
      75004CE47F004DE5800050E8830050E8830044DC710044DC710024B230002869
      0A000000000000000000000000000000000000000000142EF500142EF5000E25
      D10000000000223AF500142EF500233BF6000000000000000000000000000F26
      D600142EF5005763BC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009A212004AE2
      7D004DE5800056EF89004EE77B004EE77B0032C1440028690A00000000000000
      00000000000000000000000000000000000000000000142EF500142EF500142E
      F500223AF500132DF000233BF60000000000000000000000000000000000142E
      F500132DF0006568820000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009A212004DE5
      800046DF730046DF730021BA350028690A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000142EF500142E
      F500142EF500132DF00000000000000000000000000000000000233BF600142E
      F500142EF5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009A212004DE5
      800027BF400028690A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000142EF500142E
      F500142EF5000F26D6000F26D6000C21C1000F26D600142EF500142EF500142E
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009A212002869
      0A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000142E
      F500142EF500142EF500142EF500142EF500142EF500142EF500142EF5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000142EF500142EF500142EF500142EF50000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFC1F00000000
      FFFFF00700000000CFFFE00300000000C3FFC00300000000C0FFC78100000000
      C03F8F0100000000C00F8E2100000000C0078C6100000000C00F88E300000000
      C03F81E300000000C0FFC3C700000000C3FFC00F00000000CFFFE01F00000000
      FFFFF87F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
