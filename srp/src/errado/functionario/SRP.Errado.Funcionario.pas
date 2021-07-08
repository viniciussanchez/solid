unit SRP.Errado.Funcionario;

interface

type
  TFuncionario = class
  private
    FSalario: Currency;
    FId: Integer;
    FNome: string;
    FCargo: string;
    procedure SetId(const Value: Integer);
    procedure SetNome(const Value: string);
    procedure SetSalario(const Value: Currency);
    procedure SetCargo(const Value: string);
  public
    property Id: Integer read FId write SetId;
    property Nome: string read FNome write SetNome;
    property Salario: Currency read FSalario write SetSalario;
    property Cargo: string read FCargo write SetCargo;
    function CalcularSalario: Currency;
    procedure Salvar;
  end;

implementation

uses FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.Stan.Def, FireDAC.Phys.SQLite, FireDAC.DApt, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Async;

{ TFuncionario }

function TFuncionario.CalcularSalario: Currency;
begin
  Result := Self.Salario;
  if Self.Cargo = 'DESENVOLVEDOR JUNIOR' then
    Result := Result - (Self.Salario * 0.11)
  else if Self.Cargo = 'DESENVOLVEDOR PLENO' then
    Result := Result - (Self.Salario * 0.225);
end;

procedure TFuncionario.Salvar;
var
  LQuery: TFDQuery;
  LConexao: TFDConnection;
begin
  LConexao := TFDConnection.Create(nil);
  try
    LConexao.ConnectionDefName := 'SQLite_Demo';
    LConexao.LoginPrompt := False;
    LConexao.Connected := True;

    LQuery := TFDQuery.Create(nil);
    try
      LQuery.Connection := LConexao;
      LQuery.SQL.Text := 'insert into funcionarios (id, nome, salario) values (:id, :nome, :salario)';
      LQuery.ParamByName('id').AsInteger := Self.Id;
      LQuery.ParamByName('nome').AsString := Self.Nome;
      LQuery.ParamByName('salario').AsCurrency := Self.Salario;
      LQuery.ExecSQL;
    finally
      LQuery.Free;
    end;
  finally
    LConexao.Free;
  end;
end;

procedure TFuncionario.SetCargo(const Value: string);
begin
  FCargo := Value;
end;

procedure TFuncionario.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TFuncionario.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TFuncionario.SetSalario(const Value: Currency);
begin
  FSalario := Value;
end;

end.
