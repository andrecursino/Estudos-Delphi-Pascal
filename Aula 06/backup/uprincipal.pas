unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    edtCusto: TEdit;
    edtLucro: TEdit;
    edtVenda: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

end.

