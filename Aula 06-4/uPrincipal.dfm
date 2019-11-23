object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  ActiveControl = edtCusto
  Caption = 'Aula 06 - 3'
  ClientHeight = 201
  ClientWidth = 447
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
    Left = 24
    Top = 24
    Width = 28
    Height = 13
    Caption = 'Custo'
  end
  object Label2: TLabel
    Left = 168
    Top = 24
    Width = 40
    Height = 13
    Caption = 'Lucro %'
  end
  object Label3: TLabel
    Left = 312
    Top = 24
    Width = 30
    Height = 13
    Caption = 'Venda'
  end
  object edtCusto: TEdit
    Left = 24
    Top = 47
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtLucro: TEdit
    Left = 168
    Top = 47
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtVenda: TEdit
    Left = 312
    Top = 47
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 24
    Top = 96
    Width = 184
    Height = 25
    Caption = 'Calc. Valor da Venda'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 127
    Width = 184
    Height = 25
    Caption = 'Acha % Lucro'
    TabOrder = 4
    OnClick = Button2Click
  end
  object btnLimpa: TButton
    Left = 24
    Top = 158
    Width = 184
    Height = 25
    Caption = 'Limpa Campos'
    TabOrder = 5
    OnClick = btnLimpaClick
  end
end
