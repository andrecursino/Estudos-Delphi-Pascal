unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmClientes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Dados: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DCliente: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    EdtPesquisa: TEdit;
    btnPesquisa: TButton;
    rbCodigo: TRadioButton;
    rbNome: TRadioButton;
    procedure btnPesquisaClick(Sender: TObject);
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

procedure TfrmClientes.btnPesquisaClick(Sender: TObject);
begin
  TabGlobal.TCliente.Close;
  TabGlobal.TCliente.SQL.Clear;
  TabGlobal.TCliente.SQL.Add('Select * from Clientes');
  if rbNome.checked then
    begin
      TabGlobal.TCliente.SQL.Add('Where NOME like :cNome');
      TabGlobal.TCliente.SQL.Add('Order by NOME');
      TabGlobal.TCliente.ParamByName('cNome').AsString := '%' + EdtPesquisa.Text + '%';
    end;
  if rbCodigo.checked then
    begin
      TabGlobal.TCliente.SQL.Add('Where CODIGO = :nCodigo');
      TabGlobal.TCliente.ParamByName('cCodigo').AsInteger := StrToInt(EdtPesquisa.Text);
    end;
  TabGlobal.TCliente.Prepare;
  TabGlobal.TCliente.Open;

end;

end.
