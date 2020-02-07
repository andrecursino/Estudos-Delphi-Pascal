unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPagar, uReceber,
  Vcl.Menus, Vcl.Mask, uCaixa;

type
  TForm1 = class(TForm)
    edtCodigo: TEdit;
    btnReceber: TButton;
    Label1: TLabel;
    edtDocumento: TEdit;
    Label2: TLabel;
    edtValor: TEdit;
    Label3: TLabel;
    mskDtEmissao: TMaskEdit;
    mskDtVencimento: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    btnPagar: TButton;
    Label6: TLabel;
    lblSaldo: TLabel;
    Label7: TLabel;
    procedure btnReceberClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Caixa1: TCaixa;


implementation

{$R *.dfm}

procedure TForm1.btnReceberClick(Sender: TObject);
var
  Pagamento1: TPagar;
begin
  Pagamento1 := TPagar.Create;
  try
    Pagamento1.Codigo := StrToInt(edtCodigo.Text);
    Pagamento1.Documento := StrToInt(edtDocumento.Text);
    Pagamento1.Valor := StrToCurr(edtValor.Text);
    Pagamento1.DtEmissao := mskDtEmissao.Text;
    Pagamento1.DtVencimento := mskDtVencimento.Text;

    ShowMessage(Pagamento1.MostraDados);

  finally
    Pagamento1.Free;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Caixa1 := TCaixa.Create;
  try
    Caixa1.Saldo := 100.00;
    lblSaldo.Caption := CurrToStr(Caixa1.Saldo);
  finally
    Caixa1.Free;
  end;

end;

end.
