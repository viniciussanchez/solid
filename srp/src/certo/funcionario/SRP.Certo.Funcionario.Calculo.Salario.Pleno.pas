unit SRP.Certo.Funcionario.Calculo.Salario.Pleno;

interface

uses SRP.Certo.Funcionario.Calculo.Salario.Intf;

type
  TCalculoSalarioPleno = class(TInterfacedObject, ICalculoSalarioFuncionario)
  private
    function Calcular(const ASalario: Currency): Currency;
  public
    class function New: ICalculoSalarioFuncionario;
  end;

implementation

{ TCalculoSalarioPleno }

function TCalculoSalarioPleno.Calcular(const ASalario: Currency): Currency;
begin
  Result := ASalario - (ASalario * 0.225);
end;

class function TCalculoSalarioPleno.New: ICalculoSalarioFuncionario;
begin
  Result := TCalculoSalarioPleno.Create;
end;

end.
