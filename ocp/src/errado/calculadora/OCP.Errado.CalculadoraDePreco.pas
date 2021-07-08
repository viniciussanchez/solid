unit OCP.Errado.CalculadoraDePreco;

interface

uses OCP.Errado.Pedido;

type
  TCalculadoraDePreco = class
  public
    function Calcular(const APedido: TPedido): Currency;
  end;

implementation

uses OCP.Errado.Frete, OCP.Errado.MeioPagamento.Enum, OCP.Errado.TabelaPrecoAVista, OCP.Errado.TabelaPrecoAPrazo;

{ TCalculadoraDePreco }

function TCalculadoraDePreco.Calcular(const APedido: TPedido): Currency;
var
  LFrete: TFrete;
  LValorFrete, LDesconto: Currency;
  LTabelaPrecoAVista: TTabelaPrecoAVista;
  LTabelaPrecoAPrazo: TTabelaPrecoAPrazo;
begin
  LFrete := TFrete.Create;
  try
    LDesconto := 0;

    case APedido.MeioPagamento of
      TMeioPagamentoEnum.A_VISTA:
        begin
          LTabelaPrecoAVista := TTabelaPrecoAVista.Create;
          try
            LDesconto := LTabelaPrecoAVista.CalcularDesconto(APedido.Valor);
          finally
            LTabelaPrecoAVista.Free;
          end;
        end;
      TMeioPagamentoEnum.A_PRAZO:
        begin
          LTabelaPrecoAPrazo := TTabelaPrecoAPrazo.Create;
          try
            LDesconto := LTabelaPrecoAPrazo.CalcularDesconto(APedido.Valor);
          finally
            LTabelaPrecoAPrazo.Free;
          end;
        end;
    end;

    LValorFrete := LFrete.CalcularFrete(APedido.Estado);
    Result := APedido.Valor * (1 - LDesconto) + LValorFrete;
  finally
    LFrete.Free;
  end;
end;

end.
