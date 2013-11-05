object Form8: TForm8
  Left = 190
  Top = 101
  Width = 528
  Height = 480
  Caption = 'Form8'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 464
    Top = 416
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 24
    Width = 297
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 87
    Height = 17
    Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1073#1099#1090#1080#1081
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 489
    Height = 233
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'date'
        Title.Caption = #1044#1072#1090#1072' '#1089#1086#1073#1099#1090#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1057#1086#1073#1099#1090#1080#1077
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'action'
        Title.Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 304
    Width = 185
    Height = 105
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
    Items.Strings = (
      '123'
      '2134'
      '342432')
    TabOrder = 3
  end
  object StaticText2: TStaticText
    Left = 16
    Top = 48
    Width = 90
    Height = 17
    Caption = #1046#1091#1088#1085#1072#1083' '#1089#1086#1073#1099#1090#1080#1081
    TabOrder = 4
  end
  object Button1: TButton
    Left = 304
    Top = 312
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 416
    Width = 121
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090
    TabOrder = 6
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 448
    Top = 312
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from resume_delo')
    Left = 320
    Top = 344
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 448
    Top = 352
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    Left = 328
    Top = 376
  end
end
