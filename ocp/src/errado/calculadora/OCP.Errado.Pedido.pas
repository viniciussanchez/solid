unit OCP.Errado.Pedido;

interface

uses OCP.Errado.MeioPagamento.Enum, OCP.Estado.Enum;

type
  TPedido = class
  private
    FMeioPagamento: TMeioPagamentoEnum;
    FValor: Currency;
    FEstado: TEstadoEnum;
    procedure SetMeioPagamento(const Value: TMeioPagamentoEnum);
    procedure SetValor(const Value: Currency);
    procedure SetEstado(const Value: TEstadoEnum);
  public
    property Estado: TEstadoEnum read FEstado write SetEstado;
    property MeioPagamento: TMeioPagamentoEnum read FMeioPagamento write SetMeioPagamento;
    property Valor: Currency read FValor write SetValor;
  end;

implementation

{ TPedido }

procedure TPedido.SetEstado(const Value: TEstadoEnum);
begin
  FEstado := Value;
end;

procedure TPedido.SetMeioPagamento(const Value: TMeioPagamentoEnum);
begin
  FMeioPagamento := Value;
end;

procedure TPedido.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.
