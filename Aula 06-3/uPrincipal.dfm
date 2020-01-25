object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Aula 06 - Parte 3'
  ClientHeight = 401
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 79
    Height = 13
    Caption = 'Digite de 1 a 10:'
  end
  object Memo1: TMemo
    Left = 8
    Top = 135
    Width = 329
    Height = 121
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object btnProcessa: TButton
    Left = 8
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Processa'
    TabOrder = 1
    OnClick = btnProcessaClick
  end
  object btnLimpaMemo: TButton
    Left = 89
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Limpa Memo'
    TabOrder = 2
    OnClick = btnLimpaMemoClick
  end
  object edtValor1: TEdit
    Left = 104
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 48
    Width = 217
    Height = 17
    TabOrder = 4
  end
end
