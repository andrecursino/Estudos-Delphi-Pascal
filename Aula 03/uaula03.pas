unit uAula03;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmAula03 }

  TfrmAula03 = class(TForm)
    btnProcessa: TButton;
    Memo1: TMemo;
    procedure btnProcessaClick(Sender: TObject);
  private

  public

  end;

var
  frmAula03: TfrmAula03;

implementation

{$R *.lfm}

{ TfrmAula03 }

procedure TfrmAula03.btnProcessaClick(Sender: TObject);
var
  cNome : string;
  nIdade : integer;
  lMaiorIdade : boolean;
begin
  cNome:= 'André';
  nIdade:= 25;
  Memo1.Lines.Add('Nome: ' + cNome + ' Idade: ' + IntToStr(nIdade));
  if nIdade >= 18 then
    begin
      Memo1.Lines.Add(cNome + ' é maior de idade');
      Memo1.Lines.Add('Pode consumir bebida');
    end
  else
    Memo1.Lines.Add(cNome + ' é menor de idade');
end;

end.

