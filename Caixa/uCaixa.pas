unit uCaixa;

interface

uses uReceber, uPagar;

type
  TCaixa = class
    private
    FSaldo: Currency;
    procedure SetSaldo(const Value: Currency);
    public
      property Saldo : Currency read FSaldo write SetSaldo;
      function RmSaldo (value : Currency) : Currency;
  end;

implementation

{ TCaixa }

function TCaixa.RmSaldo(value: Currency): Currency;
begin
  value := Self.FSaldo;
  result := value +
end;

procedure TCaixa.SetSaldo(const Value: Currency);
begin
  FSaldo := Value;
end;

end.
