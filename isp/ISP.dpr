program ISP;

uses
  Vcl.Forms,
  ISP.Main in 'src\ISP.Main.pas' {FrmExemploISP},
  ISP.Certo.Ave.Intf in 'src\certo\ave\ISP.Certo.Ave.Intf.pas',
  ISP.Certo.Ave.Pinguin in 'src\certo\ave\ISP.Certo.Ave.Pinguin.pas',
  ISP.Certo.Ave.Tucano in 'src\certo\ave\ISP.Certo.Ave.Tucano.pas',
  ISP.Certo.Ave.Voadora.Intf in 'src\certo\ave\ISP.Certo.Ave.Voadora.Intf.pas',
  ISP.Errado.Ave.Intf in 'src\errado\ave\ISP.Errado.Ave.Intf.pas',
  ISP.Errado.Ave.Pinguin in 'src\errado\ave\ISP.Errado.Ave.Pinguin.pas',
  ISP.Errado.Ave.Tucano in 'src\errado\ave\ISP.Errado.Ave.Tucano.pas',
  ISP.Errado.Telefone.Intf in 'src\errado\telefone\ISP.Errado.Telefone.Intf.pas',
  ISP.Errado.Telefone.Comum in 'src\errado\telefone\ISP.Errado.Telefone.Comum.pas',
  ISP.Errado.Telefone.Celular in 'src\errado\telefone\ISP.Errado.Telefone.Celular.pas',
  ISP.Certo.Telefone.Intf in 'src\certo\telefone\ISP.Certo.Telefone.Intf.pas',
  ISP.Certo.Telefone.Celular.Intf in 'src\certo\telefone\ISP.Certo.Telefone.Celular.Intf.pas',
  ISP.Certo.Telefone.Celular in 'src\certo\telefone\ISP.Certo.Telefone.Celular.pas',
  ISP.Certo.Telefone in 'src\certo\telefone\ISP.Certo.Telefone.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploISP, FrmExemploISP);
  Application.Run;
end.
