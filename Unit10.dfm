object Form10: TForm10
  Left = 260
  Top = 327
  Width = 675
  Height = 417
  Caption = #1054#1090#1073#1086#1088' '#1082#1072#1085#1076#1080#1076#1072#1090#1086#1074' '#1085#1072' '#1074#1072#1082#1072#1085#1089#1080#1102
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 515
    Top = 89
    Width = 5
    Height = 260
    Align = alRight
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 667
    Height = 89
    Align = alTop
    Caption = ' '#1055#1086#1080#1089#1082' '#1074#1072#1082#1072#1085#1089#1080#1080' '
    TabOrder = 0
    object LabeledEdit1: TLabeledEdit
      Left = 8
      Top = 32
      Width = 217
      Height = 21
      EditLabel.Width = 144
      EditLabel.Height = 13
      EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      TabOrder = 0
    end
    object Button2: TButton
      Left = 8
      Top = 56
      Width = 75
      Height = 25
      Caption = #1053#1072#1081#1090#1080
      TabOrder = 1
      OnClick = Button2Click
    end
    object LabeledEdit2: TLabeledEdit
      Left = 232
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 78
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 515
    Height = 260
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        Width = 244
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'spec'
        Title.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Width = 231
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 349
    Width = 667
    Height = 38
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1090#1086#1073#1088#1072#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object ListBox1: TListBox
    Left = 520
    Top = 89
    Width = 147
    Height = 260
    Align = alRight
    ItemHeight = 13
    TabOrder = 3
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableDirect = True
    TableName = 'work_rab'
    Left = 480
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT client.name, vakans.spec, vakans.id, client.id'
      'FROM client LEFT JOIN vakans ON client.id = vakans.id_client'
      'where (not vakans.ClosedVakans)')
    Left = 440
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 536
    Top = 16
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 400
    Top = 24
  end
end
