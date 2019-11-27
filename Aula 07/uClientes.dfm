object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 322
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 758
    Height = 322
    ActivePage = Dados
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 289
    ExplicitHeight = 193
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      ExplicitWidth = 281
      ExplicitHeight = 165
    end
    object Dados: TTabSheet
      Caption = 'Dados'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitWidth = 281
      ExplicitHeight = 165
    end
  end
end
