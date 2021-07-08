unit SRP.Certo.Funcionario.Cargo.Enum;

interface

uses SRP.Certo.Funcionario.Calculo.Salario.Intf;

type
{$SCOPEDENUMS ON}
  TCargoEnum = (DESENVOLVEDOR_JUNIOR, DESENVOLVEDOR_PLENO);
{$SCOPEDENUMS OFF}

  TCargoEnumHelper = record helper for TCargoEnum
    function GetCalculoSalario: ICalculoSalarioFuncionario;
  end;

implementation

uses SRP.Certo.Funcionario.Calculo.Salario.Junior, SRP.Certo.Funcionario.Calculo.Salario.Pleno;

{ TCargoEnumHelper }

function TCargoEnumHelper.GetCalculoSalario: ICalculoSalarioFuncionario;
begin
  case Self of
    TCargoEnum.DESENVOLVEDOR_JUNIOR:
      Result := TCalculoSalarioJunior.New;
    TCargoEnum.DESENVOLVEDOR_PLENO:
      Result := TCalculoSalarioPleno.New;
  end;
end;

end.
