object TabGlobal: TTabGlobal
  OldCreateOrder = False
  Height = 224
  Width = 352
  object Conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Andr'#233'\Documents\Pascal\Estudos-Delphi-Pascal\A' +
        'ula 07\Dados\BASE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Left = 56
    Top = 48
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 112
    Top = 48
  end
  object TCliente: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM Clientes')
    Left = 56
    Top = 104
    object TClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TClienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object TClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object TClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object TClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object TClienteUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object TClienteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object TClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
  end
end
