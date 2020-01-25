unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, dateutils;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnProcessa: TButton;
    Memo1: TMemo;
    procedure btnProcessaClick(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnProcessaClick(Sender: TObject);
var
  nNum1, nNum2, nTotal : real;
  nItem1, nItem2, nTotalItem, nAnos, nDias : integer;
  dData1, dData2 : TDate;
  tHora1, tHora2, tTotal :TTime;
  cNome, cSobrenome : string;
begin
  nNum1 := 1123.80;
  nNum2 := 2.20;
  nTotal:= nNum1 + nNum2;
  Memo1.Lines.Add('Total: ' + FloatToStr(nTotal));

  dData1:= StrToDate('16/04/2005');
  dData2:=Date;
  nAnos:= YearsBetween(dData2, dData1);
  nDias:= DaysBetween(dData2, dData1);
  Memo1.Lines.Add('Voce tem ' + IntToStr(nAnos) + ' anos.');
  Memo1.Lines.Add('Você tem ' + IntToStr(nDias) + ' dias.');

  if nAnos >= 18 then
    Memo1.Lines.Add('Você é maior de idade!')
  else
    Memo1.Lines.Add('Você é menor de idade!');

end;

end.

