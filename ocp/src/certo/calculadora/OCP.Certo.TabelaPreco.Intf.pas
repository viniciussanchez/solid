unit OCP.Certo.TabelaPreco.Intf;

interface

type
  ITabelaDePreco = interface
    ['{6332995A-3323-4EA2-A776-DBB35AA64D19}']
    function CalcularDesconto(const AValor: Currency): Currency;
  end;

implementation

end.
