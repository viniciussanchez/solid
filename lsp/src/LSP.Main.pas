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

uses System.Generics.Collections,
  LSP.Errado.Conta, LSP.Errado.Conta.Poupanca, LSP.Errado.Conta.Salario;
//  LSP.Certo.Conta, LSP.Certo.Conta.Bancaria, LSP.Certo.Conta.Salario, LSP.Certo.Conta.Poupanca;

procedure TFrmExemploLSP.btnPercorrerContasCertoClick(Sender: TObject);
//var
//  LConta: TContaBancaria;
//  LContas: TObjectList<TContaBancaria>;
begin
//  LContas := TObjectList<TContaBancaria>.Create();
//  try
//    LContas.Add(TContaBancaria.Create);
//    LContas.Add(TContaPoupanca.Create);
//    //LContas.Add(TContaSalario.Create);
//    for LConta in LContas do
//      LConta.Render;
//  finally
//    LContas.Free;
//  end;
end;

procedure TFrmExemploLSP.btnPercorrerContasErradoClick(Sender: TObject);
var
  LConta: TContaBancaria;
  LContas: TObjectList<TContaBancaria>;
begin
  LContas := TObjectList<TContaBancaria>.Create();
  try
    LContas.Add(TContaBancaria.Create);
    LContas.Add(TContaPoupanca.Create);
    LContas.Add(TContaSalario.Create);
    for LConta in LContas do
      LConta.Render;
  finally
    LContas.Free;
  end;
end;

end.
