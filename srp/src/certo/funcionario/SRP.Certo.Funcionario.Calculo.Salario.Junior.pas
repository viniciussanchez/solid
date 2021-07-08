unit SRP.Certo.Funcionario.Calculo.Salario.Junior;

interface

uses SRP.Certo.Funcionario.Calculo.Salario.Intf;

type
  TCalculoSalarioJunior = class(TInterfacedObject, ICalculoSalarioFuncionario)
  private
    function Calcular(const ASalario: Currency): Currency;
  public
    class function New: ICalculoSalarioFuncionario;
  end;

implementation

{ TCalculoSalarioJunior }

function TCalculoSalarioJunior.Calcular(const ASalario: Currency): Currency;
begin
  Result := ASalario - (ASalario * 0.11);
end;

class function TCalculoSalarioJunior.New: ICalculoSalarioFuncionario;
begin
  Result := TCalculoSalarioJunior.Create;
end;

end.
