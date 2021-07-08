program LSP;

uses
  Vcl.Forms,
  LSP.Main in 'src\LSP.Main.pas' {FrmExemploLSP},
  LSP.Errado.Conta in 'src\errado\LSP.Errado.Conta.pas',
  LSP.Errado.Conta.Salario in 'src\errado\LSP.Errado.Conta.Salario.pas',
  LSP.Certo.Conta in 'src\certo\LSP.Certo.Conta.pas',
  LSP.Certo.Conta.Bancaria in 'src\certo\LSP.Certo.Conta.Bancaria.pas',
  LSP.Certo.Conta.Salario in 'src\certo\LSP.Certo.Conta.Salario.pas',
  LSP.Errado.Conta.Poupanca in 'src\errado\LSP.Errado.Conta.Poupanca.pas',
  LSP.Certo.Conta.Poupanca in 'src\certo\LSP.Certo.Conta.Poupanca.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploLSP, FrmExemploLSP);
  Application.Run;
end.
