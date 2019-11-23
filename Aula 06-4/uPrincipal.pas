unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    edtCusto: TEdit;
    Label2: TLabel;
    edtLucro: TEdit;
    Label3: TLabel;
    edtVenda: TEdit;
    Button1: TButton;
    Button2: TButton;
    btnLimpa: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnLimpaClick(Sender: TObject);
  private
    { Private declarations }
    function CalculaVenda(cCusto, cLucro : string) : string;
    function AchaLucro (cVenda, cCusto : string) : string;
    procedure LimpaCampos;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnLimpaClick(Sender: TObject);
begin
  LimpaCampos;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  edtVenda.Text := CalculaVenda(edtCusto.Text,edtLucro.Text);
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  edtLucro.Text := AchaLucro(edtVenda.Text, edtCusto.Text);
end;

function TfrmPrincipal.CalculaVenda(cCusto, cLucro : string) : string;
{Acha peço de venda (Custo  * (Lucro/100) + Custo)}
  var
    nCusto, nLucro, nVenda : real;
  begin
    try nCusto:= StrToFloat(cCusto); except nCusto := 0; end; //converte custo
    try nLucro:= StrToFloat(cLucro); except nLucro := 0; end; //converte lucro

    nVenda:= (nCusto * (nLucro/100) +nCusto);
    result := FloatToStr(nVenda);
  end;

function TfrmPrincipal.AchaLucro (cVenda, cCusto : string) : string;
{Acha percentual ((venda - Custo) / Custo) * 100}
  var
    nCusto, nLucro, nVenda : real;
  begin
    try nCusto:= StrToFloat(cCusto); except nCusto := 0; end; //converte custo
    try nVenda:= StrToFloat(cVenda); except nLucro := 0; end; //converte venda
    nLucro :=  (((nVenda - nCusto) / nCusto) * 100);
    result := FloatToStr(nLucro);
  end;

procedure TfrmPrincipal.LimpaCampos;
begin
     edtCusto.Clear;
     edtLucro.Clear;
     edtVenda.Clear;
end;
end.
