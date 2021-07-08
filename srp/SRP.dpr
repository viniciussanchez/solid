program SRP;

uses
  Vcl.Forms,
  SRP.Main in 'src\SRP.Main.pas' {FrmExemploSRP},
  SRP.Certo.Boleto.Intf in 'src\certo\boleto\SRP.Certo.Boleto.Intf.pas',
  SRP.Certo.Boleto in 'src\certo\boleto\SRP.Certo.Boleto.pas',
  SRP.Certo.Email.Intf in 'src\certo\boleto\SRP.Certo.Email.Intf.pas',
  SRP.Certo.Email in 'src\certo\boleto\SRP.Certo.Email.pas',
  SRP.Certo.Connection in 'src\certo\funcionario\SRP.Certo.Connection.pas',
  SRP.Certo.Funcionario.Calculo.Salario.Intf in 'src\certo\funcionario\SRP.Certo.Funcionario.Calculo.Salario.Intf.pas',
  SRP.Certo.Funcionario.Calculo.Salario.Junior in 'src\certo\funcionario\SRP.Certo.Funcionario.Calculo.Salario.Junior.pas',
  SRP.Certo.Funcionario.Calculo.Salario.Pleno in 'src\certo\funcionario\SRP.Certo.Funcionario.Calculo.Salario.Pleno.pas',
  SRP.Certo.Funcionario.Cargo.Enum in 'src\certo\funcionario\SRP.Certo.Funcionario.Cargo.Enum.pas',
  SRP.Certo.Funcionario.DAO in 'src\certo\funcionario\SRP.Certo.Funcionario.DAO.pas',
  SRP.Certo.Funcionario in 'src\certo\funcionario\SRP.Certo.Funcionario.pas',
  SRP.Errado.Boleto in 'src\errado\boleto\SRP.Errado.Boleto.pas',
  SRP.Errado.Funcionario in 'src\errado\functionario\SRP.Errado.Funcionario.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploSRP, FrmExemploSRP);
  Application.Run;
end.
