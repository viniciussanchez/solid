program OCP;

uses
  Vcl.Forms,
  OCP.Main in 'src\OCP.Main.pas' {FrmExemploOCP},
  OCP.Estado.Enum in 'src\OCP.Estado.Enum.pas',
  OCP.Certo.CalculadoraDePreco in 'src\certo\calculadora\OCP.Certo.CalculadoraDePreco.pas',
  OCP.Certo.Pedido in 'src\certo\calculadora\OCP.Certo.Pedido.pas',
  OCP.Certo.ServicoDeFrete.Intf in 'src\certo\calculadora\OCP.Certo.ServicoDeFrete.Intf.pas',
  OCP.Certo.ServicoDeFrete in 'src\certo\calculadora\OCP.Certo.ServicoDeFrete.pas',
  OCP.Certo.TabelaPreco.Intf in 'src\certo\calculadora\OCP.Certo.TabelaPreco.Intf.pas',
  OCP.Certo.TabelaPreco.Prazo in 'src\certo\calculadora\OCP.Certo.TabelaPreco.Prazo.pas',
  OCP.Certo.TabelaPreco.Vista in 'src\certo\calculadora\OCP.Certo.TabelaPreco.Vista.pas',
  OCP.Errado.CalculadoraDePreco in 'src\errado\calculadora\OCP.Errado.CalculadoraDePreco.pas',
  OCP.Errado.Frete in 'src\errado\calculadora\OCP.Errado.Frete.pas',
  OCP.Errado.MeioPagamento.Enum in 'src\errado\calculadora\OCP.Errado.MeioPagamento.Enum.pas',
  OCP.Errado.Pedido in 'src\errado\calculadora\OCP.Errado.Pedido.pas',
  OCP.Errado.TabelaPrecoAPrazo in 'src\errado\calculadora\OCP.Errado.TabelaPrecoAPrazo.pas',
  OCP.Errado.TabelaPrecoAVista in 'src\errado\calculadora\OCP.Errado.TabelaPrecoAVista.pas',
  OCP.Errado.FormaGeometrica in 'src\errado\geometria\OCP.Errado.FormaGeometrica.pas',
  OCP.Certo.FormaGeometrica in 'src\certo\geometria\OCP.Certo.FormaGeometrica.pas',
  OCP.Certo.Retangulo in 'src\certo\geometria\OCP.Certo.Retangulo.pas',
  OCP.Certo.Circulo in 'src\certo\geometria\OCP.Certo.Circulo.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploOCP, FrmExemploOCP);
  Application.Run;
end.
