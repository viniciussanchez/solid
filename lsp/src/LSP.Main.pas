unit LSP.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmExemploLSP = class(TForm)
    btnPercorrerContasErrado: TButton;
    btnPercorrerContasCerto: TButton;
    procedure btnPercorrerContasErradoClick(Sender: TObject);
    procedure btnPercorrerContasCertoClick(Sender: TObject);
  end;

var
  FrmExemploLSP: TFrmExemploLSP;

implementation

{$R *.dfm}

uses LSP.Errado.Conta, LSP.Errado.Conta.Salario, System.Generics.Collections, LSP.Certo.Conta, LSP.Certo.Conta.Bancaria,
  LSP.Certo.Conta.Salario, LSP.Errado.Conta.Poupanca, LSP.Certo.Conta.Poupanca;

procedure TFrmExemploLSP.btnPercorrerContasCertoClick(Sender: TObject);
var
  LConta: LSP.Certo.Conta.Bancaria.TContaBancaria;
  LContas: TObjectList<LSP.Certo.Conta.Bancaria.TContaBancaria>;
begin
  LContas := TObjectList<LSP.Certo.Conta.Bancaria.TContaBancaria>.Create();
  try
    LContas.Add(LSP.Certo.Conta.Bancaria.TContaBancaria.Create);
    LContas.Add(LSP.Certo.Conta.Poupanca.TContaPoupanca.Create);
    //LContas.Add(LSP.Certo.Conta.Salario.TContaSalario.Create);
    for LConta in LContas do
      LConta.Render;
  finally
    LContas.Free;
  end;
end;

procedure TFrmExemploLSP.btnPercorrerContasErradoClick(Sender: TObject);
var
  LConta: LSP.Errado.Conta.TContaBancaria;
  LContas: TObjectList<LSP.Errado.Conta.TContaBancaria>;
begin
  LContas := TObjectList<LSP.Errado.Conta.TContaBancaria>.Create();
  try
    LContas.Add(LSP.Errado.Conta.TContaBancaria.Create);
    LContas.Add(LSP.Errado.Conta.Poupanca.TContaPoupanca.Create);
    LContas.Add(LSP.Errado.Conta.Salario.TContaSalario.Create);
    for LConta in LContas do
      LConta.Render;
  finally
    LContas.Free;
  end;
end;

end.
