unit OCP.Certo.ServicoDeFrete;

interface

uses OCP.Estado.Enum, OCP.Certo.ServicoDeFrete.Intf;

type
  TServicoDeFrete = class(TInterfacedObject, IServicoDeFrete)
  private
    function CalcularFrete(const AEstado: TEstadoEnum): Currency;
  public
    class function New: IServicoDeFrete;
  end;

implementation

{ TServicoDeFrete }

function TServicoDeFrete.CalcularFrete(const AEstado: TEstadoEnum): Currency;
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

class function TServicoDeFrete.New: IServicoDeFrete;
begin
  Result := TServicoDeFrete.Create;
end;

end.
