unit uFinanceiro;

interface

uses
  SysUtils;

type
  TFinanceiro = class
  private
    FValor: Currency;
    FCodigo: Integer;
    FDocumento: Integer;
    FDtVencimento: String;
    FDtEmissao: String;
    procedure SetCodigo(const Value: Integer);
    procedure SetDocumento(const Value: Integer);
    procedure SetDtEmissao(const Value: String);
    procedure SetDtVencimento(const Value: String);
    procedure SetValor(const Value: Currency);
  public
    salvaText : string;
    property Codigo: Integer read FCodigo write SetCodigo;
    property Documento: Integer read FDocumento write SetDocumento;
    property Valor: Currency read FValor write SetValor;
    property DtEmissao: String read FDtEmissao write SetDtEmissao;
    property DtVencimento: String read FDtVencimento write SetDtVencimento;
    function MostraDados : String; virtual;
  end;

implementation

{ TFinanceiro }

function TFinanceiro.MostraDados: String;
begin
  salvaText := 'Código: ' + IntToStr(Self.Codigo) + #13 +
            'Nº Documento: ' + IntToStr(Self.Documento) + #13 +
            'Valor: ' + CurrToStr(Self.Valor) + #13 +
            'Data de emissão: ' + Self.DtEmissao + #13 +
            'Data de vencimento: '+ Self.DtVencimento;
  result := salvaText;

end;

procedure TFinanceiro.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TFinanceiro.SetDocumento(const Value: Integer);
begin
  FDocumento := Value;
end;

procedure TFinanceiro.SetDtEmissao(const Value: String);
begin
  FDtEmissao := Value;
end;

procedure TFinanceiro.SetDtVencimento(const Value: String);
begin
  FDtVencimento := Value;
end;

procedure TFinanceiro.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.
