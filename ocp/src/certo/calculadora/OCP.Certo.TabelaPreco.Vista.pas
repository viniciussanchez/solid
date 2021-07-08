unit OCP.Certo.TabelaPreco.Vista;

interface

uses OCP.Certo.TabelaPreco.Intf;

type
  TTabelaDePrecoAVista = class(TInterfacedObject, ITabelaDePreco)
  private
    function CalcularDesconto(const AValor: Currency): Currency;
  public
    class function New: ITabelaDePreco;
  end;

implementation

{ TTabelaDePrecoAVista }

function TTabelaDePrecoAVista.CalcularDesconto(const AValor: Currency): Currency;
begin
  Result := 0;
  if AValor > 100 then
    Result := 0.05
  else if AValor > 500 then
    Result := 0.07
  else if AValor > 1000 then
    Result := 0.10;
end;

class function TTabelaDePrecoAVista.New: ITabelaDePreco;
begin
  Result := TTabelaDePrecoAVista.Create;
end;

end.
