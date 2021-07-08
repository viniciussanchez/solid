unit OCP.Certo.CalculadoraDePreco;

interface

uses OCP.Certo.TabelaPreco.Intf, OCP.Certo.ServicoDeFrete.Intf, OCP.Certo.Pedido;

type
  TCalculadoraDePreco = class
  private
    FTabelaDePreco: ITabelaDePreco;
    FServicoDeFrete: IServicoDeFrete;
  public
    constructor Create(const ATabela: ITabelaDePreco; const AFrete: IServicoDeFrete);
    property Tabela: ITabelaDePreco read FTabelaDePreco;
  	property Frete: IServicoDeFrete read FServicoDeFrete;
    function Calcular(const APedido: TPedido): Currency;
  end;

implementation

{ TCalculadoraDePreco }

function TCalculadoraDePreco.Calcular(const APedido: TPedido): Currency;
var
  LDesconto, LValorFrete: Currency;
begin
  LDesconto := Tabela.CalcularDesconto(APedido.Valor);
  LValorFrete := Frete.CalcularFrete(APedido.Estado);
  Result := APedido.Valor * (1 - LDesconto) + LValorFrete;
end;

constructor TCalculadoraDePreco.Create(const ATabela: ITabelaDePreco; const AFrete: IServicoDeFrete);
begin
  FTabelaDePreco := ATabela;
  FServicoDeFrete := AFrete;
end;

end.
