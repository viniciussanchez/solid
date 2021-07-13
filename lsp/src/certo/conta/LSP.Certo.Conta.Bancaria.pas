unit LSP.Certo.Conta.Bancaria;

interface

uses LSP.Certo.Conta;

type
  TContaBancaria = class
  protected
    FConta: TConta;
  public
    constructor Create;
    procedure Depositar(const AValor: Currency);
    procedure Sacar(const AValor: Currency);
    procedure Render; virtual;
    destructor Destroy; override;
  end;

implementation

{ TContaBancaria }

constructor TContaBancaria.Create;
begin
  FConta := TConta.Create;
end;

procedure TContaBancaria.Depositar(const AValor: Currency);
begin
  FConta.Depositar(AValor);
end;

destructor TContaBancaria.Destroy;
begin
  FConta.Free;
  inherited;
end;

procedure TContaBancaria.Render;
begin
  FConta.Render(3);
end;

procedure TContaBancaria.Sacar(const AValor: Currency);
begin
  FConta.Sacar(AValor);
end;

end.
