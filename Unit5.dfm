object Form5: TForm5
  Left = 197
  Top = 140
  Width = 816
  Height = 520
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1083#1080#1077#1085#1090#1072#1093' '#1080' '#1074#1072#1082#1072#1085#1089#1080#1103#1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  DesignSize = (
    808
    490)
  PixelsPerInch = 96
  TextHeight = 13
  object LabeledEdit1: TLabeledEdit
    Left = 8
    Top = 16
    Width = 225
    Height = 21
    EditLabel.Width = 144
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    TabOrder = 0
  end
  object LabeledEdit2: TLabeledEdit
    Left = 8
    Top = 56
    Width = 161
    Height = 21
    EditLabel.Width = 101
    EditLabel.Height = 13
    EditLabel.Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
    TabOrder = 1
  end
  object LabeledEdit3: TLabeledEdit
    Left = 344
    Top = 56
    Width = 113
    Height = 21
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085
    TabOrder = 2
  end
  object Button1: TButton
    Left = 8
    Top = 336
    Width = 113
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1072#1082#1072#1085#1089#1080#1102
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 336
    Width = 113
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 336
    Width = 145
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1075#1086' '#1082#1083#1080#1077#1085#1090#1072
    TabOrder = 5
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 367
    Width = 793
    Height = 114
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = N1Click
    Columns = <
      item
        Expanded = False
        FieldName = 'DateRec'
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1087#1080#1089#1080' '
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'spec'
        Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Width = 205
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'plata'
        Title.Caption = #1056#1072#1079#1084#1077#1088' '#1086#1087#1083#1072#1090#1099' '#1090#1088#1091#1076#1072
        Width = 114
        Visible = True
      end>
  end
  object LabeledEdit4: TLabeledEdit
    Left = 176
    Top = 56
    Width = 161
    Height = 21
    EditLabel.Width = 83
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
    TabOrder = 7
  end
  object Memo1: TMemo
    Left = 8
    Top = 96
    Width = 449
    Height = 41
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 8
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 80
    Width = 50
    Height = 17
    Caption = #1055#1088#1086#1092#1080#1083#1100
    TabOrder = 9
  end
  object DateTimePicker1: TDateTimePicker
    Left = 8
    Top = 152
    Width = 97
    Height = 21
    Date = 38541.591109479170000000
    Time = 38541.591109479170000000
    TabOrder = 10
  end
  object LabeledEdit5: TLabeledEdit
    Left = 112
    Top = 152
    Width = 201
    Height = 21
    EditLabel.Width = 75
    EditLabel.Height = 13
    EditLabel.Caption = #1056#1077#1078#1080#1084' '#1088#1072#1073#1086#1090#1099
    TabOrder = 11
  end
  object LabeledEdit6: TLabeledEdit
    Left = 320
    Top = 152
    Width = 137
    Height = 21
    EditLabel.Width = 133
    EditLabel.Height = 13
    EditLabel.Caption = #1063#1080#1089#1083#1077#1085#1085#1086#1089#1090#1100' '#1088#1072#1073#1086#1090#1072#1102#1097#1080#1093
    TabOrder = 12
  end
  object StaticText2: TStaticText
    Left = 8
    Top = 136
    Width = 81
    Height = 17
    Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
    TabOrder = 13
  end
  object Memo2: TMemo
    Left = 8
    Top = 192
    Width = 449
    Height = 57
    Lines.Strings = (
      'Memo2')
    TabOrder = 14
  end
  object StaticText3: TStaticText
    Left = 8
    Top = 176
    Width = 74
    Height = 17
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
    TabOrder = 15
  end
  object LabeledEdit7: TLabeledEdit
    Left = 8
    Top = 264
    Width = 153
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = #1048#1053#1053
    TabOrder = 16
  end
  object LabeledEdit8: TLabeledEdit
    Left = 168
    Top = 264
    Width = 161
    Height = 21
    EditLabel.Width = 23
    EditLabel.Height = 13
    EditLabel.Caption = #1050#1055#1055
    TabOrder = 17
  end
  object LabeledEdit9: TLabeledEdit
    Left = 8
    Top = 304
    Width = 193
    Height = 21
    EditLabel.Width = 25
    EditLabel.Height = 13
    EditLabel.Caption = #1041#1072#1085#1082
    TabOrder = 18
  end
  object LabeledEdit10: TLabeledEdit
    Left = 208
    Top = 304
    Width = 121
    Height = 21
    EditLabel.Width = 80
    EditLabel.Height = 13
    EditLabel.Caption = #1056#1072#1089#1095#1105#1090#1085#1099#1081' '#1089#1095#1105#1090
    TabOrder = 19
  end
  object LabeledEdit11: TLabeledEdit
    Left = 336
    Top = 304
    Width = 121
    Height = 21
    EditLabel.Width = 76
    EditLabel.Height = 13
    EditLabel.Caption = #1050#1072#1089#1089#1086#1074#1099#1081' '#1089#1095#1105#1090
    TabOrder = 20
  end
  object LabeledEdit12: TLabeledEdit
    Left = 336
    Top = 264
    Width = 121
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = #1041#1048#1050
    TabOrder = 21
  end
  object TabControl1: TTabControl
    Left = 464
    Top = 16
    Width = 337
    Height = 345
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 22
    Tabs.Strings = (
      #1074#1099#1072#1087#1084#1091
      #1082#1091#1087#1082#1077
      #1082#1080#1087#1082#1077#1087)
    TabIndex = 0
    OnChange = TabControl1Change
    object LabeledEdit13: TLabeledEdit
      Left = 8
      Top = 40
      Width = 145
      Height = 21
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
      TabOrder = 0
    end
    object LabeledEdit14: TLabeledEdit
      Left = 8
      Top = 80
      Width = 145
      Height = 21
      EditLabel.Width = 22
      EditLabel.Height = 13
      EditLabel.Caption = #1048#1084#1103
      TabOrder = 1
    end
    object LabeledEdit15: TLabeledEdit
      Left = 8
      Top = 120
      Width = 145
      Height = 21
      EditLabel.Width = 47
      EditLabel.Height = 13
      EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      TabOrder = 2
    end
    object LabeledEdit16: TLabeledEdit
      Left = 176
      Top = 40
      Width = 153
      Height = 21
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      TabOrder = 3
    end
    object LabeledEdit17: TLabeledEdit
      Left = 176
      Top = 80
      Width = 153
      Height = 21
      EditLabel.Width = 53
      EditLabel.Height = 13
      EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085#1099
      TabOrder = 4
    end
    object LabeledEdit18: TLabeledEdit
      Left = 176
      Top = 200
      Width = 97
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = #1060#1072#1082#1089
      TabOrder = 5
    end
    object LabeledEdit19: TLabeledEdit
      Left = 176
      Top = 120
      Width = 121
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail'
      TabOrder = 6
    end
    object LabeledEdit20: TLabeledEdit
      Left = 176
      Top = 160
      Width = 121
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'WEB'
      TabOrder = 7
    end
    object DateTimePicker2: TDateTimePicker
      Left = 8
      Top = 160
      Width = 145
      Height = 21
      Date = 38541.601267175920000000
      Time = 38541.601267175920000000
      TabOrder = 8
    end
    object StaticText4: TStaticText
      Left = 8
      Top = 144
      Width = 83
      Height = 17
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      TabOrder = 9
    end
    object Memo3: TMemo
      Left = 8
      Top = 224
      Width = 321
      Height = 41
      Lines.Strings = (
        'Memo3')
      TabOrder = 10
    end
    object StaticText5: TStaticText
      Left = 8
      Top = 208
      Width = 74
      Height = 17
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      TabOrder = 11
    end
    object Button4: TButton
      Left = 8
      Top = 272
      Width = 145
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086
      TabOrder = 12
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 160
      Top = 272
      Width = 153
      Height = 25
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1082#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086
      TabOrder = 13
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 8
      Top = 304
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 14
      OnClick = Button6Click
    end
  end
  object StaticText6: TStaticText
    Left = 464
    Top = 0
    Width = 92
    Height = 17
    Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1083#1080#1094#1072
    TabOrder = 23
  end
  object ComboBox1: TComboBox
    Left = 240
    Top = 16
    Width = 217
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 24
    OnChange = ComboBox1Change
  end
  object StaticText7: TStaticText
    Left = 8
    Top = 0
    Width = 148
    Height = 17
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    TabOrder = 25
  end
  object DataSource1: TDataSource
    DataSet = Form1.ADOQuery6
    Left = 376
    Top = 384
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 328
    Top = 384
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 384
    object N1: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1053#1086#1074#1072#1103' '#1074#1072#1082#1072#1085#1089#1080#1103
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1072#1082#1072#1085#1089#1080#1102
      OnClick = N3Click
    end
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 448
    Top = 384
  end
end
