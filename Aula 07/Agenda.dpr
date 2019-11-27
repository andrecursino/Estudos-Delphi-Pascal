program Agenda;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uClientes in 'uClientes.pas' {frmClientes},
  uTabGlobal in 'uTabGlobal.pas' {TabGlobal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TTabGlobal, TabGlobal);
  Application.Run;
end.
