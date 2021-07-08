unit OCP.Errado.TabelaPrecoAPrazo;

interface

type
  TTabelaPrecoAPrazo = class
  public
    function CalcularDesconto(const AValor: Currency): Currency;
  end;

implementation

{ TTabelaPrecoAPrazo }

function TTabelaPrecoAPrazo.CalcularDesconto(const AValor: Currency): Currency;
begin
  Result := 0;
  if AValor > 100 then
    Result := 0.01
  else if AValor > 500 then
    Result := 0.02
  else if AValor > 1000 then
    Result := 0.05;
end;

end.
