unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnProcessa: TButton;
    edtData: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    procedure btnProcessaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

end;

procedure TfrmPrincipal.Memo1Change(Sender: TObject);
begin

end;

procedure TfrmPrincipal.btnProcessaClick(Sender: TObject);
var
  cNomeDiaDaSemana : array[1..7] of string = ('Domingo', 'Segunda', 'Terça', 'Quarta',
    'Quinta', 'Sexta', 'Sábado');
  dData : TDateTime;
begin
  dData:= StrToDateTime(edtData.Text);
  Memo1.Lines.Add('Dia da Semana: ' + cNomeDiaDaSemana[DayOfWeek(dData)]);
  Memo1.Lines.Add(cNomeDiaDaSemana[2]);
  Memo1.Lines.Add(cNomeDiaDaSemana[DayOfWeek(date)]);
end;

end.

