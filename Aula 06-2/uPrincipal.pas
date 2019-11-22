unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  nNum1, nNum2, nTotal : real;
  nItem1, nItem2, nTotalItem, nQtde, nAnos, nDias : integer;
  dData1, dData2 : TDate;
  tHora1, tHora2, tTotal :TTime;
  cNome, cSobrenome, cValor1, cValor2 : string;
begin
  InputQuery('Informe o campo', 'Digite Valor 1', cValor1);
  try
    nNum1 := StrToFloat(cValor1);
  Except;
    ShowMessage('Variável valor 1 não é válida');
    exit
  end;

  InputQuery('Informe o campo', 'Digite Valor 2', cValor2);
  try
    nNum2 := StrToFloat(cValor2);
  Except;
    ShowMessage('Variável valor 2 não é válida');
    exit
  end;

  Memo1.Lines.Add('valor da variável 1: ' + FloatToStr(nNum1));
  Memo1.Lines.Add('Valor da Variável 2: ' + FloatToStr(nNum2));

end;

end.
