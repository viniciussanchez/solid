unit OCP.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, OCP.Errado.Pedido, OCP.Certo.Pedido;

type
  TFrmExemploOCP = class(TForm)
    btnCalcularPrecoErrado: TButton;
    btnCalcularPrecoCerto: TButton;
    btnCalcularAreaRetanguloErrado: TButton;
    btnCalcularAreaCirculoErrado: TButton;
    btnCalcularAreaCirculoCerto: TButton;
    btnCalcularAreaRetanguloCerto: TButton;
    procedure btnCalcularPrecoErradoClick(Sender: TObject);
    procedure btnCalcularPrecoCertoClick(Sender: TObject);
    procedure btnCalcularAreaRetanguloErradoClick(Sender: TObject);
    procedure btnCalcularAreaCirculoErradoClick(Sender: TObject);
    procedure btnCalcularAreaRetanguloCertoClick(Sender: TObject);
    procedure btnCalcularAreaCirculoCertoClick(Sender: TObject);
  private
    function GetPedidoCerto: OCP.Certo.Pedido.TPedido;
    function GetPedidoErrado: OCP.Errado.Pedido.TPedido;
  end;

var
  FrmExemploOCP: TFrmExemploOCP;

implementation

uses OCP.Errado.CalculadoraDePreco, OCP.Certo.CalculadoraDePreco, OCP.Errado.MeioPagamento.Enum, OCP.Estado.Enum,
  OCP.Certo.ServicoDeFrete, OCP.Certo.TabelaPreco.Prazo, OCP.Certo.TabelaPreco.Vista, OCP.Errado.FormaGeometrica,
  OCP.Certo.FormaGeometrica.Intf, OCP.Certo.Retangulo, OCP.Certo.Circulo;

{$R *.dfm}

procedure TFrmExemploOCP.btnCalcularAreaCirculoCertoClick(Sender: TObject);
var
  LCirculo: IFormaGeometrica;
begin
  LCirculo := TCirculo.Create(2);
  ShowMessage(FloatToStr(LCirculo.CalcularArea));
end;

procedure TFrmExemploOCP.btnCalcularAreaCirculoErradoClick(Sender: TObject);
var
  LCirculo: TFormaGeometrica;
begin
  LCirculo := TFormaGeometrica.Create;
  try
    LCirculo.Raio := 2;
    ShowMessage(FloatToStr(LCirculo.CalcularArea));
  finally
    LCirculo.Free;
  end;
end;

procedure TFrmExemploOCP.btnCalcularAreaRetanguloCertoClick(Sender: TObject);
var
  LRetangulo: IFormaGeometrica;
begin
  LRetangulo := TRetangulo.Create(2, 4);
  ShowMessage(FloatToStr(LRetangulo.CalcularArea));
end;

procedure TFrmExemploOCP.btnCalcularAreaRetanguloErradoClick(Sender: TObject);
var
  LRetangulo: TFormaGeometrica;
begin
  LRetangulo := TFormaGeometrica.Create;
  try
    LRetangulo.Base := 2;
    LRetangulo.Altura := 4;
    ShowMessage(FloatToStr(LRetangulo.CalcularArea));
  finally
    LRetangulo.Free;
  end;
end;

procedure TFrmExemploOCP.btnCalcularPrecoCertoClick(Sender: TObject);
var
  LPedido: OCP.Certo.Pedido.TPedido;
  LCalculadoraDePreco: OCP.Certo.CalculadoraDePreco.TCalculadoraDePreco;
begin
  LCalculadoraDePreco := OCP.Certo.CalculadoraDePreco.TCalculadoraDePreco.Create(TTabelaDePrecoAPrazo.New, TServicoDeFrete.New);
  try
    LPedido := Self.GetPedidoCerto;
    try
      ShowMessage(CurrToStr(LCalculadoraDePreco.Calcular(LPedido)));
    finally
      LPedido.Free;
    end;
  finally
    LCalculadoraDePreco.Free;
  end;
end;

procedure TFrmExemploOCP.btnCalcularPrecoErradoClick(Sender: TObject);
var
  LPedido: OCP.Errado.Pedido.TPedido;
  LCalculadoraDePreco: OCP.Errado.CalculadoraDePreco.TCalculadoraDePreco;
begin
  LCalculadoraDePreco := OCP.Errado.CalculadoraDePreco.TCalculadoraDePreco.Create;
  try
    LPedido := Self.GetPedidoErrado;
    try
      ShowMessage(CurrToStr(LCalculadoraDePreco.Calcular(LPedido)));
    finally
      LPedido.Free;
    end;
  finally
    LCalculadoraDePreco.Free;
  end;
end;

function TFrmExemploOCP.GetPedidoCerto: OCP.Certo.Pedido.TPedido;
begin
  Result := OCP.Certo.Pedido.TPedido.Create;
  Result.Estado := TEstadoEnum.SAO_PAULO;
  Result.Valor := 500;
end;

function TFrmExemploOCP.GetPedidoErrado: OCP.Errado.Pedido.TPedido;
begin
  Result := OCP.Errado.Pedido.TPedido.Create;
  Result.Estado := TEstadoEnum.SAO_PAULO;
  Result.MeioPagamento := TMeioPagamentoEnum.A_PRAZO;
  Result.Valor := 500;
end;

end.
