unit SRP.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmExemploSRP = class(TForm)
    btnCalcularSalarioErrado: TButton;
    btnSalvarFuncionarioErrado: TButton;
    btnCalcularSalarioCerto: TButton;
    btnSalvarFuncionarioCerto: TButton;
    procedure btnCalcularSalarioErradoClick(Sender: TObject);
    procedure btnSalvarFuncionarioErradoClick(Sender: TObject);
    procedure btnCalcularSalarioCertoClick(Sender: TObject);
    procedure btnSalvarFuncionarioCertoClick(Sender: TObject);
  private
    function GetSalarioCerto: Currency;
    function GetSalarioErrado: Currency;
    procedure SalvarFuncionarioErrado;
    procedure SalvarFuncionarioCerto;
  end;

var
  FrmExemploSRP: TFrmExemploSRP;

implementation

{$R *.dfm}

uses SRP.Errado.Funcionario, SRP.Certo.Funcionario, SRP.Certo.Funcionario.DAO, SRP.Certo.Funcionario.Cargo.Enum;

procedure TFrmExemploSRP.btnCalcularSalarioCertoClick(Sender: TObject);
begin
  ShowMessage(CurrToStr(Self.GetSalarioCerto));
end;

procedure TFrmExemploSRP.btnCalcularSalarioErradoClick(Sender: TObject);
begin
  ShowMessage(CurrToStr(Self.GetSalarioErrado));
end;

procedure TFrmExemploSRP.btnSalvarFuncionarioCertoClick(Sender: TObject);
begin
  SalvarFuncionarioCerto;
end;

procedure TFrmExemploSRP.btnSalvarFuncionarioErradoClick(Sender: TObject);
begin
  SalvarFuncionarioErrado;
end;

function TFrmExemploSRP.GetSalarioCerto: Currency;
var
  LFuncionario: SRP.Certo.Funcionario.TFuncionario;
begin
  LFuncionario := SRP.Certo.Funcionario.TFuncionario.Create;
  try
    LFuncionario.Salario := 2000;
    LFuncionario.Cargo := TCargoEnum.DESENVOLVEDOR_PLENO;
    Result := LFuncionario.CalcularSalario;
  finally
    LFuncionario.Free;
  end;
end;

function TFrmExemploSRP.GetSalarioErrado: Currency;
var
  LFuncionario: SRP.Errado.Funcionario.TFuncionario;
begin
  LFuncionario := SRP.Errado.Funcionario.TFuncionario.Create;
  try
    LFuncionario.Salario := 2000;
    LFuncionario.Cargo := 'DESENVOLVEDOR PLENO';
    Result := LFuncionario.CalcularSalario;
  finally
    LFuncionario.Free;
  end;
end;

procedure TFrmExemploSRP.SalvarFuncionarioCerto;
var
  LFuncionarioDAO: TFuncionarioDAO;
begin
  LFuncionarioDAO := TFuncionarioDAO.Create;
  try
    LFuncionarioDAO.Salvar(SRP.Certo.Funcionario.TFuncionario.Create(1, 'Vinicius', 2000, TCargoEnum.DESENVOLVEDOR_PLENO));
  finally
    LFuncionarioDAO.Free;
  end;
end;

procedure TFrmExemploSRP.SalvarFuncionarioErrado;
var
  LFuncionario: SRP.Errado.Funcionario.TFuncionario;
begin
  LFuncionario := SRP.Errado.Funcionario.TFuncionario.Create;
  try
    LFuncionario.Id := 1;
    LFuncionario.Nome := 'Vinicius';
    LFuncionario.Salario := 2000;
    LFuncionario.Salvar;
  finally
    LFuncionario.Free;
  end;
end;

end.
