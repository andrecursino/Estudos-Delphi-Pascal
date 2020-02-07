object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 272
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 27
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 24
    Top = 54
    Width = 54
    Height = 13
    Caption = 'Documento'
  end
  object Label3: TLabel
    Left = 24
    Top = 81
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label4: TLabel
    Left = 24
    Top = 108
    Width = 79
    Height = 13
    Caption = 'Data de Emiss'#227'o'
  end
  object Label5: TLabel
    Left = 24
    Top = 135
    Width = 96
    Height = 13
    Caption = 'Data de Vencimento'
  end
  object Label6: TLabel
    Left = 336
    Top = 27
    Width = 71
    Height = 13
    Caption = 'Valor em Caixa'
  end
  object lblSaldo: TLabel
    Left = 376
    Top = 54
    Width = 36
    Height = 13
    Caption = 'lblSaldo'
  end
  object Label7: TLabel
    Left = 336
    Top = 54
    Width = 13
    Height = 13
    Caption = 'R$'
  end
  object edtCodigo: TEdit
    Left = 128
    Top = 24
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object btnReceber: TButton
    Left = 24
    Top = 182
    Width = 75
    Height = 25
    Caption = 'btnReceber'
    TabOrder = 1
    OnClick = btnReceberClick
  end
  object edtDocumento: TEdit
    Left = 128
    Top = 51
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object edtValor: TEdit
    Left = 128
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object mskDtEmissao: TMaskEdit
    Left = 128
    Top = 105
    Width = 120
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
  end
  object mskDtVencimento: TMaskEdit
    Left = 129
    Top = 132
    Width = 120
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 5
    Text = '  /  /    '
  end
  object btnPagar: TButton
    Left = 174
    Top = 182
    Width = 75
    Height = 25
    Caption = 'btnReceber'
    TabOrder = 6
  end
end
