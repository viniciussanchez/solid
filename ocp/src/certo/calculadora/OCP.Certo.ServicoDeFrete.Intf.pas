unit OCP.Certo.ServicoDeFrete.Intf;

interface

uses OCP.Estado.Enum;

type
  IServicoDeFrete = interface
    ['{A921A54D-8E2D-4160-A911-7C05B74D78B7}']
    function CalcularFrete(const AEstado: TEstadoEnum): Currency;
  end;

implementation

end.
