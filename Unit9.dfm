object Form9: TForm9
  Left = 272
  Top = 301
  Width = 428
  Height = 399
  Caption = #1048#1079#1073#1088#1072#1085#1085#1099#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 24
    Top = 8
    Width = 23
    Height = 22
  end
  object SpeedButton2: TSpeedButton
    Left = 40
    Top = 40
    Width = 23
    Height = 22
  end
  object CheckListBox1: TCheckListBox
    Left = 0
    Top = 0
    Width = 420
    Height = 239
    Align = alClient
    ItemHeight = 13
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnClick = CheckListBox1Click
    OnDblClick = CheckListBox1DblClick
    OnEnter = CheckListBox1DblClick
    OnKeyPress = CheckListBox1KeyPress
    OnMouseMove = CheckListBox1MouseMove
  end
  object Panel1: TPanel
    Left = 0
    Top = 239
    Width = 420
    Height = 113
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 360
      Top = 88
      Width = 32
      Height = 13
      Caption = 'Label1'
    end
    object Button1: TButton
      Left = 8
      Top = 72
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1105
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 8
      Width = 137
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1077
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 40
      Width = 137
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1077' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1077
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 96
      Top = 72
      Width = 49
      Height = 25
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      TabOrder = 3
    end
    object Button5: TButton
      Left = 152
      Top = 8
      Width = 209
      Height = 25
      Caption = #1054#1090#1086#1073#1088#1072#1090#1100' '#1085#1072' '#1074#1072#1082#1072#1085#1089#1080#1102' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1093
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 152
      Top = 40
      Width = 209
      Height = 25
      Caption = #1054#1090#1086#1073#1088#1072#1090#1100' '#1085#1072' '#1074#1072#1082#1072#1085#1089#1080#1102' '#1085#1077' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1093
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 152
      Top = 72
      Width = 161
      Height = 25
      Caption = #1054#1090#1086#1073#1088#1072#1090#1100' '#1085#1072' '#1074#1072#1082#1072#1085#1089#1080#1102' '#1074#1089#1077#1093
      TabOrder = 6
      OnClick = Button7Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 352
    Width = 420
    Height = 17
    Align = alBottom
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 0
      Width = 32
      Height = 13
      Caption = 'Label2'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 160
    Top = 160
    object N4: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1082#1072#1085#1076#1080#1076#1072#1090#1072
      OnClick = CheckListBox1DblClick
    end
    object _N5: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077
      OnClick = N2Click
    end
    object _N3: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N3Click
    end
  end
end
