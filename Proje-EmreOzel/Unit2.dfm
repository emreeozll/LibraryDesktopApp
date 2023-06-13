object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'L'#304'BNEST'
  ClientHeight = 369
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 80
    Top = 48
    Width = 409
    Height = 273
    Caption = 'Kullan'#305'c'#305' Giri'#351
    TabOrder = 0
    object Label1: TLabel
      Left = 96
      Top = 80
      Width = 59
      Height = 13
      Caption = 'Kullan'#305'c'#305' Ad'#305':'
    end
    object Label2: TLabel
      Left = 96
      Top = 112
      Width = 62
      Height = 13
      Caption = 'Kullan'#305'c'#305' '#350'ifre'
    end
    object SpeedButton1: TSpeedButton
      Left = 160
      Top = 152
      Width = 113
      Height = 33
      Cursor = crHandPoint
      BiDiMode = bdRightToLeft
      Caption = 'Giri'#351' '
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5000555555555555577755555555555550B0555555555555F7F7555555555550
        00B05555555555577757555555555550B3B05555555555F7F557555555555000
        3B0555555555577755755555555500B3B0555555555577555755555555550B3B
        055555FFFF5F7F5575555700050003B05555577775777557555570BBB00B3B05
        555577555775557555550BBBBBB3B05555557F555555575555550BBBBBBB0555
        55557F55FF557F5555550BB003BB075555557F577F5575F5555577B003BBB055
        555575F7755557F5555550BB33BBB0555555575F555557F555555507BBBB0755
        55555575FFFF7755555555570000755555555557777775555555}
      NumGlyphs = 2
      ParentBiDiMode = False
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 16
      Top = 224
      Width = 97
      Height = 13
      Caption = 'Kullan'#305'c'#305' Ad'#305' : '#39'admin'#39
    end
    object Label4: TLabel
      Left = 16
      Top = 243
      Width = 64
      Height = 13
      Caption = #350'ifre : '#39'admin'#39
    end
    object Edit1: TEdit
      Left = 192
      Top = 77
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 192
      Top = 109
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
end
