program prjCaixa;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uFinanceiro in 'uFinanceiro.pas',
  uPagar in 'uPagar.pas',
  uReceber in 'uReceber.pas',
  uCaixa in 'uCaixa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
