unit LSP.Errado.Conta;

interface

type
  TContaBancaria = class
  private
    FSaldo: Currency;
    procedure SetSaldo(const Value: Currency);
  public
    property Saldo: Currency read FSaldo write SetSaldo;
    procedure Depositar(const AValor: Currency);
    procedure Sacar(const AValor: Currency);
    procedure Render; virtual;
  end;

implementation

{ TContaBancaria }

procedure TContaBancaria.Depositar(const AValor: Currency);
begin
  Self.Saldo := Self.Saldo + AValor;
end;

procedure TContaBancaria.Render;
begin
  Self.Saldo := Self.Saldo * 1.03;
end;

procedure TContaBancaria.Sacar(const AValor: Currency);
begin
  Self.Saldo := Self.Saldo - AValor;
end;

procedure TContaBancaria.SetSaldo(const Value: Currency);
begin
  FSaldo := Value;
end;

end.
