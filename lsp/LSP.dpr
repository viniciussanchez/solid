program LSP;

uses
  Vcl.Forms,
  LSP.Main in 'src\LSP.Main.pas' {FrmExemploLSP},
  LSP.Certo.Conta.Bancaria in 'src\certo\conta\LSP.Certo.Conta.Bancaria.pas',
  LSP.Certo.Conta in 'src\certo\conta\LSP.Certo.Conta.pas',
  LSP.Certo.Conta.Poupanca in 'src\certo\conta\LSP.Certo.Conta.Poupanca.pas',
  LSP.Certo.Conta.Salario in 'src\certo\conta\LSP.Certo.Conta.Salario.pas',
  LSP.Errado.Conta in 'src\errado\conta\LSP.Errado.Conta.pas',
  LSP.Errado.Conta.Poupanca in 'src\errado\conta\LSP.Errado.Conta.Poupanca.pas',
  LSP.Errado.Conta.Salario in 'src\errado\conta\LSP.Errado.Conta.Salario.pas',
  LSP.Errado.Ave in 'src\errado\ave\LSP.Errado.Ave.pas',
  LSP.Errado.Tucano in 'src\errado\ave\LSP.Errado.Tucano.pas',
  LSP.Errado.Pinguin in 'src\errado\ave\LSP.Errado.Pinguin.pas',
  LSP.Certo.Ave in 'src\certo\ave\LSP.Certo.Ave.pas',
  LSP.Certo.Tucano in 'src\certo\ave\LSP.Certo.Tucano.pas',
  LSP.Certo.Pinguin in 'src\certo\ave\LSP.Certo.Pinguin.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploLSP, FrmExemploLSP);
  Application.Run;
end.
