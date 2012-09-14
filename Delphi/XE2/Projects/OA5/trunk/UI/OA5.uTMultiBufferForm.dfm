object MultiBufferForm: TMultiBufferForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  BorderWidth = 5
  Caption = #1052#1091#1083#1100#1090#1080#1073#1091#1092#1077#1088
  ClientHeight = 322
  ClientWidth = 624
  Color = clBtnFace
  Constraints.MaxHeight = 360
  Constraints.MaxWidth = 640
  Constraints.MinHeight = 360
  Constraints.MinWidth = 640
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lvBuffer: TListView
    Left = 0
    Top = 0
    Width = 624
    Height = 284
    Hint = #1057#1087#1080#1089#1086#1082' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1081' '#1089#1082#1086#1087#1080#1088#1086#1074#1072#1085#1085#1099#1093' '#1074' '#1073#1091#1092#1077#1088
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        Caption = 'ID'
        Width = 75
      end
      item
        Caption = #1057#1086#1076#1077#1088#1078#1080#1084#1086#1077
        Width = 529
      end>
    ColumnClick = False
    ReadOnly = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 290
    Width = 624
    Height = 32
    Align = alBottom
    BevelEdges = [beTop]
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clHotLight
    TabOrder = 1
    DesignSize = (
      624
      30)
    object btnClear: TButton
      Left = 174
      Top = 5
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = actClear
      TabOrder = 2
    end
    object btnClose: TButton
      Left = 456
      Top = 5
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = actClose
      Anchors = [akTop, akRight]
      Cancel = True
      Default = True
      TabOrder = 3
    end
    object btnDelete: TButton
      Left = 87
      Top = 5
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = actDelete
      TabOrder = 1
    end
    object btnHelp: TButton
      Left = 543
      Top = 5
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = actHelp
      Anchors = [akTop, akRight]
      TabOrder = 4
    end
    object btnPaste: TButton
      Left = 0
      Top = 5
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = actPaste
      TabOrder = 0
    end
  end
  object ImageList: TImageList
    AllocBy = 2
    Left = 304
    Top = 128
    Bitmap = {
      494C010102002000680210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005346450053464500534645005346450053464500534645000000
      000000000000000000000000000000000000000000000000000000000000188A
      CE00188ACE008C5D5A008C5D5A008C5D5A008C5D5A008C5D5A008C5D5A008C5D
      5A008C5D5A008C5D5A008C5D5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58E
      7B00B5928400F7E3D600EFE3DE00EFE3DE00F7E7DE00F7E3D600BDA69C005346
      4500534645000000000000000000000000000000000000000000188ACE0073C7
      EF0063C7EF00BDB6AD00FFE7D600FFEFDE00F7EFD600F7EBD600F7EBD600F7E7
      D600F7E7CE00F7E7CE008C5D5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDA69C00F7E7
      DE00FFF3F700E7DBD600DEB29C00D6A68C00E7C7BD00EFEBEF00F7F3F700F7E3
      D600E7CBBD0053464500000000000000000000000000188ACE008CE3F7007BEF
      FF0073EFFF00BDB6AD00F7DFCE00F7DFC600F7D7B500F7D7B500F7D3B500F7D3
      AD00EFD7B500EFDBC6008C5D5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDA69C00F7EBE700FFFF
      FF00C68E7300BD5D2900BD5D2900DEB29C00BD5D2900BD5D2900D69E8400F7F3
      F700F7E7DE00D6C7BD00534645000000000000000000188ACE008CE3F7007BE7
      FF006BE7FF00BDB6AD00F7E3D600F7DFC600F7D3AD00F7D3AD00F7D3AD00F7CF
      A500F7D3B500EFDFC6008C5D5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDA69C00FFFFFF00CE6D
      4200BD5D2900BD5D2900C6A29400FFFFFF00E7825200BD5D2900BD5D2900D696
      7300FFFBF700F7E3D600534645000000000000000000188ACE0094E3F7008CEF
      FF007BEBFF00BDB6AD00F7E7DE00F7DFC600F7D3B500F7D7B500F7D3B500F7D3
      AD00F7D7B500EFDFCE008C5D5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDA69C00FFFBFF00DE9E7B00BD5D
      2900CE653100CE653100CE693900D68A6300CE653100CE653100BD5D2900BD5D
      2900E7CBBD00F7EFEF00DECBC6005346450000000000188ACE00A5E7F7009CEF
      FF008CEFFF00BDB6AD00FFEBE700FFE7D600FFDFC600F7DFC600F7DBBD00F7DB
      BD00F7DFC600EFE3D6008C5D5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6C7BD00FFF7F700C6613100BD5D
      2900CE653100BD5D2900CE866300F7E7DE00D6693900BD5D2900CE653100BD5D
      2900CE714200FFFFFF00E7CBBD005346450000000000188ACE00ADE7F700ADF3
      FF009CF3FF00BDB6AD00FFF3EF00FFE3C600FFD3AD00FFD3AD00FFD3AD00FFCF
      A500F7DBBD00F7EBDE008C5D5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6C7BD00F7DFD600BD5D2900CE65
      3100CE653100BD5D2900D6825200FFFBFF00E7AE9400BD5D2900BD5D2900CE65
      3100BD5D2900FFEFEF00F7DFD6005346450000000000188ACE00B5EBF700BDF7
      FF00ADF3FF00BDB6AD00FFF7F700FFF7EF00FFEBDE00FFEBDE00FFE7D600FFEB
      DE00F7EBDE00E7DBD6008C5D5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6C7BD00F7D7CE00CE653100CE65
      3100CE653100CE653100BD5D2900DEAA9400FFF7F700EF9E7300BD5D2900CE65
      3100BD5D2900F7F3EF00EFE3DE005346450000000000188ACE00C6EBF700D6FB
      FF00BDF7FF00BDB6AD00FFF7F7000000000000000000FFFBF700FFFBF700EFE3
      DE00C6AEA500B59A8C008C5D5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6C7BD00FFEFE700D6693900CE65
      3100CE653100BD5D2900BD5D2900BD5D2900E7CFC600FFFFFF00D6693900CE65
      3100CE693900FFFBFF00F7DFD6005346450000000000188ACE00C6EBF700E7FF
      FF00D6FBFF00BDB6AD00FFFBF70000000000000000000000000000000000D6BA
      B500D6925200F779420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6C7BD00FFFFFF00F79A6B00D669
      3900CE8E6B00F7EBE700D6825200BD5D2900D6967300FFFFFF00E78E5A00BD5D
      2900EF926300FFFFFF00D6C7BD005346450000000000188ACE00CEEFF700F7FF
      FF00E7FFFF00BDB6AD00FFEBE700FFF3EF00FFF3EF00FFEFEF00FFF3EF00DEB6
      A500B59A6B00188ACE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6C7BD00FFEBDE00EF86
      5200E7825200F7F7F700FFFFFF00DEBAAD00FFFFFF00F7F7F700DE714200D671
      3900FFF3EF00F7E7E700534645000000000000000000188ACE00D6EBF7000000
      0000F7FFFF00BDB6AD00BDB6AD00BDB6AD00BDB6AD00BDB6AD00BDB6AD00BDB6
      AD006BB6CE00188ACE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6C7BD00FFFFFF00FFEF
      D600FFAA7300EFAA8C00EFE3DE00EFEFEF00F7E7E700FFA67B00F78E5A00F7DB
      CE00FFFFFF00D6C7BD00000000000000000000000000188ACE00D6EFF700F7F3
      F7009CB6BD0094B6BD0094B6BD0094B6BD008CB6BD008CB2BD009CC7CE00D6FF
      FF006BCFF700188ACE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6C7BD00FFFF
      FF00FFFFFF00FFF3C600FFDFAD00FFD39C00FFC79400FFD7AD00FFFFFF00FFFF
      FF00D6C7BD0000000000000000000000000000000000188ACE00DEF7FF00D6BE
      B500AD8E8400C6B2AD00C6B2AD00C6B2AD00C6B2AD00C6AEA500A5867B00DEE3
      DE007BD3F700188ACE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6C7
      BD00D6C7BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBFF00DECBC600D6C7
      BD00000000000000000000000000000000000000000000000000188ACE00A5C7
      DE007B868C00DECFC600FFF7F700F7F7F700F7F7F700C6B6AD006B868C0073C3
      E700188ACE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DECBC600D6C7BD00D6C7BD00D6C7BD00D6C7BD00000000000000
      000000000000000000000000000000000000000000000000000000000000188A
      CE00188ACE008C796B008C796B008C796B008C796B008C796B00188ACE00188A
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F81FE00100000000E007C00100000000
      C003800100000000800180010000000080018001000000000000800100000000
      000080010000000000008001000000000000818100000000000081E300000000
      000080030000000080019003000000008003800300000000C007800300000000
      E00FC00700000000F83FE00F0000000000000000000000000000000000000000
      000000000000}
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 256
    Top = 128
    object actHelp: TAction
      Caption = '&'#1057#1087#1088#1072#1074#1082#1072
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1082#1091'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1086#1090#1082#1088#1099#1090#1080#1103' '#1089#1087#1088#1072#1074#1086#1095#1085#1086#1075#1086' '#1092#1072#1081#1083#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      ImageIndex = 0
      OnExecute = actHelpExecute
      OnUpdate = actHelpUpdate
    end
    object actClose: TAction
      Caption = '&'#1047#1072#1082#1088#1099#1090#1100
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1086#1082#1085#1072
      OnExecute = actCloseExecute
    end
    object actPaste: TAction
      Caption = '&'#1042#1089#1090#1072#1074#1080#1090#1100
      Hint = 
        #1042#1089#1090#1072#1074#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1099#1081' '#1101#1083#1077#1084#1077#1085#1090' '#1074' '#1087#1086#1083#1103' '#1074#1074#1086#1076#1072'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1074#1089#1090#1072#1074#1082#1080' '#1074#1099#1073#1088#1072 +
        #1085#1085#1099#1093' '#1076#1072#1085#1085#1099#1093' '#1086' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1080' '#1074' '#1087#1086#1083#1103' '#1074#1074#1086#1076#1072
      OnExecute = actPasteExecute
      OnUpdate = actPasteUpdate
    end
    object actDelete: TAction
      Caption = '&'#1059#1076#1072#1083#1080#1090#1100
      Hint = 
        #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1099#1081' '#1101#1083#1077#1084#1077#1085#1090'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1091#1076#1072#1083#1077#1085#1080#1103' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1076#1072#1085#1085#1099#1093' '#1080 +
        #1079' '#1073#1091#1092#1077#1088#1072
      OnExecute = actDeleteExecute
      OnUpdate = actDeleteUpdate
    end
    object actClear: TAction
      Caption = '&'#1054#1095#1080#1089#1090#1080#1090#1100
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1080#1089#1086#1082'|'#1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1091#1076#1072#1083#1077#1085#1080#1103' '#1074#1089#1077#1093' '#1076#1072#1085#1085#1099#1093' '#1080#1079' '#1073#1091#1092#1077#1088#1072
      OnExecute = actClearExecute
      OnUpdate = actClearUpdate
    end
  end
end
