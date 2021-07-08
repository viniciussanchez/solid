unit LSP.Certo.Conta.Poupanca;

interface

uses LSP.Certo.Conta.Bancaria;

type
  TContaPoupanca = class(TContaBancaria)
  public
    procedure Render; override;
  end;

implementation

{ TContaPoupanca }

procedure TContaPoupanca.Render;
begin
  FConta.Render(1);
end;

end.
