unit uPagar;

interface

uses uFinanceiro, SysUtils, uCaixa;

type
  TPagar = class(TFinanceiro)
  private

  public
  function MostraDados : String; override;
  function AdicionaSaldo : Currency;
  end;

implementation

{ TPagar }

function TPagar.AdicionaSaldo: Currency;
begin
  Result := 0;
end;

function TPagar.MostraDados: String;
begin
  inherited;
  result := salvaText + #13 +
            'Foi recebido ' + CurrToStr(Self.Valor);
end;

end.
