unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    Memo1: TMemo;
    btnProcessa: TButton;
    btnLimpaMemo: TButton;
    Label1: TLabel;
    edtValor1: TEdit;
    ProgressBar1: TProgressBar;
    procedure btnProcessaClick(Sender: TObject);
    procedure btnLimpaMemoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnLimpaMemoClick(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TfrmPrincipal.btnProcessaClick(Sender: TObject);
var
  nValor1, nValor2, nValor3, nTotal : integer;
begin
  try
    nValor1 := StrToInt(edtValor1.Text);
  except
    nValor1 := 0;
  end;
  nValor2 := 0;
  {
  if nValor1 > nValor2 then
    Memo1.Lines.Add('O valor 1 é maior que o valor 2')
  else if nValor1 < nValor2 then
    Memo1.Lines.Add('O valor 2 é maior que o valor 1')
  else
    Memo1.Lines.Add('O valor 1 é igual ao valor 2');
  end;}

  case nValor1 of
    1: Memo1.Lines.Add('Você digitou: ' + edtValor1.Text);
    2: Memo1.Lines.Add('Você digitou: ' + edtValor1.Text);
    3: Memo1.Lines.Add('Você digitou: ' + edtValor1.Text);
    4: Memo1.Lines.Add('Você digitou: ' + edtValor1.Text);
    5: Memo1.Lines.Add('Você digitou: ' + edtValor1.Text);
    6: Memo1.Lines.Add('Você digitou: ' + edtValor1.Text);
    7: Memo1.Lines.Add('Você digitou: ' + edtValor1.Text);
    8: Memo1.Lines.Add('Você digitou: ' + edtValor1.Text);
    9: Memo1.Lines.Add('Você digitou: ' + edtValor1.Text);
    10: Memo1.Lines.Add('Você digitou: ' + edtValor1.Text);
    else
      Memo1.Lines.Add('Você digitou um valor inválido: ' + edtValor1.Text);
  end;

  ProgressBar1.Min := nValor2;
  ProgressBar1.Position := nValor1;
  ProgressBar1.Max := nValor1;

  while nValor2 <= nValor1 do
  begin
    ProgressBar1.Position := nValor2;
    Memo1.Lines.Add(IntToStr(nValor2));
    nValor2 := nValor2 + 1;
  end;

  for nValor3 := 0 to nValor1 do
    Memo1.Lines.Add('Variável nvalor3 = ' + IntToStr(nValor3));
    
  

  
end;

end.
