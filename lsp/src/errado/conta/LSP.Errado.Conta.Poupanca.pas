unit LSP.Errado.Conta.Poupanca;

interface

uses LSP.Errado.Conta;

type
  TContaPoupanca = class(TContaBancaria)
  public
    procedure Render; override;
  end;

implementation

{ TContaPoupanca }

procedure TContaPoupanca.Render;
begin
  Self.Saldo := Self.Saldo * 1.01;
end;

end.
