unit LSP.Certo.Conta;

interface

type
  TConta = class
  private
    FSaldo: Currency;
    procedure SetSaldo(const Value: Currency);
  public
    property Saldo: Currency read FSaldo write SetSaldo;
    procedure Depositar(const AValor: Currency);
    procedure Sacar(const AValor: Currency);
    procedure Render(const APercentual: Double);
  end;

implementation

{ TConta }

procedure TConta.Depositar(const AValor: Currency);
begin
  Self.Saldo := Self.Saldo + AValor;
end;

procedure TConta.Render(const APercentual: Double);
begin
  Self.Saldo := Self.Saldo * (1 + (APercentual / 100));
end;

procedure TConta.Sacar(const AValor: Currency);
begin
  Self.Saldo := Self.Saldo - AValor;
end;

procedure TConta.SetSaldo(const Value: Currency);
begin
  FSaldo := Value;
end;

end.
