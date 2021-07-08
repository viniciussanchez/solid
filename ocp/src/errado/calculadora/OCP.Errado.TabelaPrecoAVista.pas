unit OCP.Errado.TabelaPrecoAVista;

interface

type
  TTabelaPrecoAVista = class
  public
    function CalcularDesconto(const AValor: Currency): Currency;
  end;

implementation

{ TTabelaPrecoAVista }

function TTabelaPrecoAVista.CalcularDesconto(const AValor: Currency): Currency;
begin
  Result := 0;
  if AValor > 100 then
    Result := 0.05
  else if AValor > 500 then
    Result := 0.07
  else if AValor > 1000 then
    Result := 0.10;
end;

end.
