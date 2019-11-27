unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  TfrmClientes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Dados: TTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation
  uses uTabGlobal;

{$R *.dfm}

end.
