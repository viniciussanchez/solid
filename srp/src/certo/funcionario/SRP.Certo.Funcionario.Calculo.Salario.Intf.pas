unit SRP.Certo.Funcionario.Calculo.Salario.Intf;

interface

type
  ICalculoSalarioFuncionario = interface
    ['{900CF6A6-4CF9-4BD4-9C80-D31E4071913A}']
    function Calcular(const ASalario: Currency): Currency;
  end;

implementation

end.
