program ISP;

uses
  Vcl.Forms,
  ISP.Main in 'src\ISP.Main.pas' {FrmExemploISP},
  ISP.Errado.Ave.Intf in 'src\errado\ISP.Errado.Ave.Intf.pas',
  ISP.Errado.Ave.Tucano in 'src\errado\ISP.Errado.Ave.Tucano.pas',
  ISP.Errado.Ave.Pinguin in 'src\errado\ISP.Errado.Ave.Pinguin.pas',
  ISP.Certo.Ave.Intf in 'src\certo\ISP.Certo.Ave.Intf.pas',
  ISP.Certo.Ave.Voadora.Intf in 'src\certo\ISP.Certo.Ave.Voadora.Intf.pas',
  ISP.Certo.Ave.Tucano in 'src\certo\ISP.Certo.Ave.Tucano.pas',
  ISP.Certo.Ave.Pinguin in 'src\certo\ISP.Certo.Ave.Pinguin.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploISP, FrmExemploISP);
  Application.Run;
end.
