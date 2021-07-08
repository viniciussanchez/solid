unit OCP.Certo.TabelaPreco.Prazo;

interface

uses OCP.Certo.TabelaPreco.Intf;

type
  TTabelaDePrecoAPrazo = class(TInterfacedObject, ITabelaDePreco)
  private
    function CalcularDesconto(const AValor: Currency): Currency;
  public
    class function New: ITabelaDePreco;
  end;

implementation

{ TTabelaDePrecoAPrazo }

function TTabelaDePrecoAPrazo.CalcularDesconto(const AValor: Currency): Currency;
begin
  Result := 0;
  if AValor > 100 then
    Result := 0.01
  else if AValor > 500 then
    Result := 0.02
  else if AValor > 1000 then
    Result := 0.05;
end;

class function TTabelaDePrecoAPrazo.New: ITabelaDePreco;
begin
  Result := TTabelaDePrecoAPrazo.Create;
end;

end.
