unit SRP.Certo.Funcionario.DAO;

interface

uses SRP.Certo.Funcionario;

type
  TFuncionarioDAO = class
  public
    procedure Salvar(const AFuncionario: TFuncionario);
  end;

implementation

uses SRP.Certo.Connection, FireDAC.Stan.Param, FireDAC.Comp.Client, FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Stan.Async;

{ TFuncionarioDAO }

procedure TFuncionarioDAO.Salvar(const AFuncionario: TFuncionario);
var
  LQuery: TFDQuery;
begin
  if not Assigned(AFuncionario) then
    Exit;
  try
    LQuery := TFDQuery.Create(nil);
    try
      LQuery.Connection := TConnection.GetConnection;
      LQuery.SQL.Text := 'insert into funcionarios (id, nome, salario) values (:id, :nome, :salario)';
      LQuery.ParamByName('id').AsInteger := AFuncionario.Id;
      LQuery.ParamByName('nome').AsString := AFuncionario.Nome;
      LQuery.ParamByName('salario').AsCurrency := AFuncionario.Salario;
      LQuery.ExecSQL;
    finally
      LQuery.Free;
    end;
  finally
    AFuncionario.Free;
  end;
end;

end.
