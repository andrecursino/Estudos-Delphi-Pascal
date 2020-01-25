unit Classe.Pessoa;

interface

uses
  System.SysUtils, Classe.SQL;

type
  TPessoa = class
  private
    FNome : String;
    FEtnia : String;
    FIdade : Integer;
    FSexo : String;
    FDataNasc : String;
    function getNome : String;
    procedure setNome(Value: String);
    function getEtnia : String;
    procedure setEtnia(Value: String);
    procedure setDataNasc(const Value: String);
    procedure setSexo(const Value: String);
  public
    SQL : TConSQL;
    property DataNasc : String read FDataNasc write setDataNasc;
    property Sexo : String read FSexo write setSexo;
    property Etnia : String read FEtnia write setEtnia;
    property Nome : String read getNome write setNome;
    function Idade : Integer;

  end;
implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  Result := Trunc((now - StrToDate (DataNasc)) / 365.25);
end;

function TPessoa.getEtnia: String;
begin
  Result := FEtnia;
end;

function TPessoa.getNome : String;
begin
  Result := FNome;
end;

procedure TPessoa.setDataNasc(const Value: String);
begin
  FDataNasc := Value;
end;

procedure TPessoa.setEtnia(Value: String);
begin
  FEtnia := Value;
end;

procedure TPessoa.setNome(Value: string);
begin
  if Value = '' then
    raise Exception.Create('Valor não pode ser vazio');
  FNome := Value
end;

procedure TPessoa.setSexo(const Value: String);
begin
  FSexo := Value;
end;

end.
