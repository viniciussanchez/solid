unit OCP.Errado.Frete;

interface

uses OCP.Estado.Enum;

type
  TFrete = class
  public
    function CalcularFrete(const AEstado: TEstadoEnum): Currency;
  end;

implementation

{ TFrete }

function TFrete.CalcularFrete(const AEstado: TEstadoEnum): Currency;
begin
  Result := 10.0;
  case AEstado of
    TEstadoEnum.SAO_PAULO:
      Result := 7.5;
    TEstadoEnum.MINAS_GERAIS:
      Result := 12.5;
    TEstadoEnum.RIO_DE_JANEIRO:
      Result := 10.5;
  end;
end;

end.
