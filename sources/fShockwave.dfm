object ShockWave: TShockWave
  Left = 334
  Top = 116
  Caption = 'Shockwave Flash Player'
  ClientHeight = 446
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFlash: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 412
    Align = alClient
    TabOrder = 0
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 412
    Width = 688
    Height = 34
    Align = alBottom
    TabOrder = 1
    Visible = False
    object SpeedBtnPlay: TSpeedButton
      Left = 20
      Top = 7
      Width = 18
      Height = 17
      Hint = 'Play'
      Glyph.Data = {
        6E020000424D6E0200000000000076000000280000002A000000150000000100
        040000000000F801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777770000007777777777777777777777777777
        7777777777777700000077777777777777777777777777777777777777777700
        00007777C777777777777777777778FF777777777777770000007777CCC77777
        7777777777777888FF7777777777770000007777CCCCC77777777777777778F7
        88FF77777777770000007777CCCCCCC777777777777778F77788FF7777777700
        00007777CCCCCCCCC7777777777778F7777788FF7777770000007777CCCCCCCC
        CCC77777777778F777777788FF77770000007777CCCCCCCCCCCCC777777778F7
        7777777788FF770000007777CCCCCCCCCCCCCCC7777778F777777777FF887700
        00007777CCCCCCCCCCCCC777777778F7777777FF8877770000007777CCCCCCCC
        CCC77777777778F77777FF887777770000007777CCCCCCCCC7777777777778F7
        77FF88777777770000007777CCCCCCC777777777777778F7FF88777777777700
        00007777CCCCC77777777777777778FF887777777777770000007777CCC77777
        7777777777777888777777777777770000007777C77777777777777777777877
        7777777777777700000077777777777777777777777777777777777777777700
        0000777777777777777777777777777777777777777777000000777777777777
        777777777777777777777777777777000000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedBtnPlayClick
    end
    object SpeedBtnStop: TSpeedButton
      Left = 52
      Top = 7
      Width = 19
      Height = 17
      Hint = 'Stop'
      Glyph.Data = {
        6E020000424D6E0200000000000076000000280000002A000000150000000100
        040000000000F801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777770000007777777777777777777777777777
        7777777777777700000077777777777777777777777777777777777777777700
        00007777777777777777777777777777777777777777770000007777CCCCCCCC
        CCCCC77777777888888888888877770000007777CCCCCCCCCCCCC77777777888
        888888888877770000007777CCCCCCCCCCCCC777777778888888888888777700
        00007777CCCCCCCCCCCCC77777777888888888888877770000007777CCCCCCCC
        CCCCC77777777888888888888877770000007777CCCCCCCCCCCCC77777777888
        888888888877770000007777CCCCCCCCCCCCC777777778888888888888777700
        00007777CCCCCCCCCCCCC77777777888888888888877770000007777CCCCCCCC
        CCCCC77777777888888888888877770000007777CCCCCCCCCCCCC77777777888
        888888888877770000007777CCCCCCCCCCCCC777777778888888888888777700
        00007777CCCCCCCCCCCCC77777777888888888888877770000007777CCCCCCCC
        CCCCC77777777888888888888877770000007777777777777777777777777777
        7777777777777700000077777777777777777777777777777777777777777700
        0000777777777777777777777777777777777777777777000000777777777777
        777777777777777777777777777777000000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedBtnStopClick
    end
    object Label1: TLabel
      Left = 111
      Top = 10
      Width = 29
      Height = 13
      Caption = 'Frame'
    end
    object TrackBar: TTrackBar
      Left = 156
      Top = 7
      Width = 122
      Height = 20
      Hint = 'Choose Frame'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = TrackBarChange
    end
  end
end
