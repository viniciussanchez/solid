unit OCP.Certo.Pedido;

interface

uses OCP.Estado.Enum;

type
  TPedido = class
  private
    FValor: Currency;
    FEstado: TEstadoEnum;
    procedure SetEstado(const Value: TEstadoEnum);
    procedure SetValor(const Value: Currency);
  public
    property Estado: TEstadoEnum read FEstado write SetEstado;
    property Valor: Currency read FValor write SetValor;
  end;

implementation

{ TPedido }

procedure TPedido.SetEstado(const Value: TEstadoEnum);
begin
  FEstado := Value;
end;

procedure TPedido.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.
