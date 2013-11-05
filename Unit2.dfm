object Form2: TForm2
  Left = 329
  Top = 271
  Width = 680
  Height = 574
  Caption = #1050#1072#1085#1076#1080#1076#1072#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 424
    Top = 464
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object LabeledEdit1: TLabeledEdit
    Left = 368
    Top = 16
    Width = 289
    Height = 21
    EditLabel.Width = 124
    EditLabel.Height = 13
    EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048#1084#1103' '#1054#1090#1095#1077#1089#1090#1074#1086
    TabOrder = 6
    Text = 'name'
  end
  object LabeledEdit2: TLabeledEdit
    Left = 368
    Top = 136
    Width = 289
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = #1040#1076#1088#1077#1089
    TabOrder = 12
    Text = 'adres'
  end
  object LabeledEdit3: TLabeledEdit
    Left = 368
    Top = 96
    Width = 185
    Height = 21
    EditLabel.Width = 79
    EditLabel.Height = 13
    EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085', E-mail'
    TabOrder = 10
    Text = 'tel'
  end
  object LabeledEdit6: TLabeledEdit
    Left = 8
    Top = 16
    Width = 281
    Height = 21
    EditLabel.Width = 78
    EditLabel.Height = 13
    EditLabel.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
    TabOrder = 0
    Text = 'spec'
  end
  object Button1: TButton
    Left = 368
    Top = 392
    Width = 121
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1086#1090#1086#1075#1088#1072#1092#1080#1102
    TabOrder = 19
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 504
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '
    TabOrder = 25
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 208
    Top = 392
    Width = 129
    Height = 25
    Caption = #1054#1090#1086#1073#1088#1072#1090#1100' '#1085#1072' '#1074#1072#1082#1072#1085#1089#1080#1102
    TabOrder = 21
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 208
    Top = 40
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 1
    OnChange = ComboBox1Change
  end
  object StaticText1: TStaticText
    Left = 128
    Top = 39
    Width = 71
    Height = 17
    Caption = #1054#1087#1099#1090' '#1088#1072#1073#1086#1090#1099
    TabOrder = 24
  end
  object ComboBox2: TComboBox
    Left = 208
    Top = 160
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 3
  end
  object StaticText2: TStaticText
    Left = 128
    Top = 159
    Width = 72
    Height = 17
    Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
    TabOrder = 26
  end
  object ComboBox3: TComboBox
    Left = 368
    Top = 216
    Width = 217
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 15
  end
  object StaticText3: TStaticText
    Left = 368
    Top = 199
    Width = 41
    Height = 17
    Caption = #1056#1072#1079#1076#1077#1083
    TabOrder = 27
  end
  object ComboBox4: TComboBox
    Left = 560
    Top = 96
    Width = 97
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 11
  end
  object StaticText4: TStaticText
    Left = 560
    Top = 79
    Width = 24
    Height = 17
    Caption = #1055#1086#1083
    TabOrder = 28
  end
  object Button4: TButton
    Left = 104
    Top = 456
    Width = 97
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 29
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 296
    Width = 345
    Height = 89
    ScrollBars = ssBoth
    TabOrder = 5
  end
  object StaticText5: TStaticText
    Left = 368
    Top = 280
    Width = 66
    Height = 17
    Caption = #1050#1086#1084#1077#1085#1090#1072#1088#1080#1080
    TabOrder = 30
  end
  object Memo2: TMemo
    Left = 368
    Top = 296
    Width = 297
    Height = 89
    ScrollBars = ssBoth
    TabOrder = 18
  end
  object StaticText6: TStaticText
    Left = 8
    Top = 232
    Width = 143
    Height = 17
    Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1100#1103
    TabOrder = 31
  end
  object Memo3: TMemo
    Left = 8
    Top = 64
    Width = 345
    Height = 89
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object Memo4: TMemo
    Left = 8
    Top = 184
    Width = 345
    Height = 89
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object Button5: TButton
    Left = 8
    Top = 392
    Width = 97
    Height = 25
    Caption = #1053#1086#1074#1099#1081' '#1082#1072#1085#1076#1080#1076#1072#1090
    TabOrder = 22
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 112
    Top = 392
    Width = 89
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 20
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 8
    Top = 424
    Width = 89
    Height = 25
    Caption = #1056#1077#1079#1102#1084#1077' '#1074' Word'
    TabOrder = 23
    OnClick = Button7Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 368
    Top = 56
    Width = 89
    Height = 21
    Date = 38531.034347500000000000
    Time = 38531.034347500000000000
    TabOrder = 7
  end
  object StaticText9: TStaticText
    Left = 368
    Top = 40
    Width = 83
    Height = 17
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    TabOrder = 32
  end
  object ComboBox5: TComboBox
    Left = 464
    Top = 56
    Width = 113
    Height = 19
    Style = csOwnerDrawFixed
    ItemHeight = 13
    TabOrder = 8
  end
  object StaticText10: TStaticText
    Left = 464
    Top = 40
    Width = 114
    Height = 17
    Caption = #1057#1077#1084#1077#1081#1085#1086#1077' '#1087#1086#1083#1086#1078#1077#1085#1080#1077
    TabOrder = 33
  end
  object Edit1: TEdit
    Left = 584
    Top = 56
    Width = 73
    Height = 21
    TabOrder = 9
    Text = '0'
    OnChange = Edit1Change
  end
  object StaticText11: TStaticText
    Left = 584
    Top = 40
    Width = 46
    Height = 17
    Caption = #1042#1086#1079#1088#1072#1089#1090
    TabOrder = 34
  end
  object StaticText8: TStaticText
    Left = 8
    Top = 280
    Width = 143
    Height = 17
    Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1100#1103
    TabOrder = 35
  end
  object StaticText7: TStaticText
    Left = 368
    Top = 240
    Width = 38
    Height = 17
    Caption = #1057#1090#1072#1090#1091#1089
    TabOrder = 36
  end
  object ComboBox6: TComboBox
    Left = 368
    Top = 256
    Width = 137
    Height = 19
    Style = csOwnerDrawFixed
    ItemHeight = 13
    TabOrder = 16
  end
  object LabeledEdit5: TLabeledEdit
    Left = 520
    Top = 256
    Width = 121
    Height = 21
    EditLabel.Width = 105
    EditLabel.Height = 13
    EditLabel.Caption = #1044#1072#1090#1072' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1074' '#1041#1044
    Enabled = False
    TabOrder = 17
  end
  object LabeledEdit7: TLabeledEdit
    Left = 456
    Top = 176
    Width = 121
    Height = 21
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = #1047#1072#1088#1087#1083#1072#1090#1072
    TabOrder = 14
    OnChange = LabeledEdit7Change
  end
  object DBImage1: TDBImage
    Left = 496
    Top = 392
    Width = 169
    Height = 145
    DataField = 'foto'
    DataSource = DataSourcefoto
    Stretch = True
    TabOrder = 37
  end
  object LabeledEdit4: TLabeledEdit
    Left = 368
    Top = 176
    Width = 81
    Height = 21
    EditLabel.Width = 74
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1086#1084#1077#1088' '#1072#1085#1082#1077#1090#1099
    TabOrder = 13
  end
  object Button8: TButton
    Left = 104
    Top = 424
    Width = 129
    Height = 25
    Caption = #1044#1088#1091#1075#1072#1103' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
    TabOrder = 38
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 8
    Top = 456
    Width = 89
    Height = 25
    Caption = #1051#1080#1095#1085#1086#1077' '#1076#1077#1083#1086
    TabOrder = 39
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 208
    Top = 456
    Width = 129
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082' '#1080#1079#1073#1088#1072#1085#1085#1099#1084
    TabOrder = 40
    OnClick = Button10Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorLocation = clUseServer
    Parameters = <
      item
        Name = 'Img'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Id1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'update resume'
      'set foto=:img'
      'where id=:id1')
    Left = 384
    Top = 424
  end
  object ADOCommand1: TADOCommand
    CommandText = 'select * from resume_text'
    Connection = Form1.ADOConnection1
    Prepared = True
    Parameters = <>
    Left = 352
    Top = 424
  end
  object ADOTable2: TADOTable
    Connection = Form1.ADOConnection1
    CursorLocation = clUseServer
    TableName = 'resume'
    Left = 408
    Top = 488
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorLocation = clUseServer
    Left = 448
    Top = 424
  end
  object DataSourcefoto: TDataSource
    DataSet = ADOQueryFoto
    Left = 416
    Top = 424
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg;*.jpeg|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 376
    Top = 488
  end
  object ADOQueryFoto: TADOQuery
    Connection = Form1.ADOConnection1
    CursorLocation = clUseServer
    Parameters = <>
    Left = 344
    Top = 488
  end
end
