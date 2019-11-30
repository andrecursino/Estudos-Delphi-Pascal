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
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 750
        Height = 41
        Align = alTop
        Caption = 'Panel1'
        TabOrder = 0
        ExplicitLeft = 272
        ExplicitTop = 16
        ExplicitWidth = 185
        object EdtPesquisa: TEdit
          Left = 16
          Top = 9
          Width = 321
          Height = 21
          TabOrder = 0
        end
        object btnPesquisa: TButton
          Left = 343
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Pesquisa'
          TabOrder = 1
          OnClick = btnPesquisaClick
        end
        object rbNome: TRadioButton
          Left = 424
          Top = 11
          Width = 113
          Height = 17
          Caption = 'Nome'
          TabOrder = 2
        end
        object rbCodigo: TRadioButton
          Left = 487
          Top = 11
          Width = 113
          Height = 17
          Caption = 'C'#243'digo'
          TabOrder = 3
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 41
        Width = 750
        Height = 253
        Align = alClient
        DataSource = DCliente
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object Dados: TTabSheet
      Caption = 'Dados'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 33
        Height = 12
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 24
        Top = 43
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 24
        Top = 98
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label4: TLabel
        Left = 24
        Top = 72
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label5: TLabel
        Left = 24
        Top = 207
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label7: TLabel
        Left = 24
        Top = 124
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label8: TLabel
        Left = 24
        Top = 151
        Width = 34
        Height = 13
        Caption = 'EStado'
      end
      object Label6: TLabel
        Left = 24
        Top = 180
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 13
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CODIGO'
        DataSource = DCliente
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 104
        Top = 40
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = DCliente
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 104
        Top = 95
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = DCliente
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 104
        Top = 69
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = DCliente
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 104
        Top = 204
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELEFONE'
        DataSource = DCliente
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 104
        Top = 177
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEP'
        DataSource = DCliente
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 104
        Top = 121
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = DCliente
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 104
        Top = 148
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'UF'
        DataSource = DCliente
        TabOrder = 7
      end
      object DBNavigator1: TDBNavigator
        Left = 24
        Top = 235
        Width = 440
        Height = 38
        DataSource = DCliente
        TabOrder = 8
      end
    end
  end
  object DCliente: TDataSource
    DataSet = TabGlobal.TCliente
    Left = 684
    Top = 32
  end
end
