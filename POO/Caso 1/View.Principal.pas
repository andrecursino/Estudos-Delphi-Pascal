unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Cliente;

type
  TForm1 = class(TForm)
    Button1: TButton;
    edtNome: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Cliente1, Pessoa2 : TCliente;
begin
  Cliente1 := TCliente.Create; //instancia a classe Cliente1
  Pessoa2 := TCliente.Create;
  try
    Cliente1.Nome := edtNome.Text;
    Cliente1.DataNasc := '16/04/1994';

    Pessoa2.Nome := 'Fulano';
    Pessoa2.DataNasc := '21/02/1950';

    ShowMessage(Cliente1.Nome + ' ' + IntToStr(Cliente1.Idade));
    ShowMessage(Pessoa2.Nome + ' ' + IntToStr(Pessoa2.Idade));
  finally
    Cliente1.Free; //exclui o registro da memória
    Pessoa2.Free;
  end;

end;

end.
