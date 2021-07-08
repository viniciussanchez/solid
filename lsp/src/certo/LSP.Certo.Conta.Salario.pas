unit LSP.Certo.Conta.Salario;

interface

uses LSP.Certo.Conta;

type
  TContaSalario = class
  private
    FConta: TConta;
  public
    constructor Create;
    procedure Depositar(const AValor: Currency);
    procedure Sacar(const AValor: Currency);
    destructor Destroy; override;
  end;

implementation

{ TContaSalario }

constructor TContaSalario.Create;
begin
  FConta := TConta.Create;
end;

procedure TContaSalario.Depositar(const AValor: Currency);
begin
  FConta.Depositar(AValor);
end;

destructor TContaSalario.Destroy;
begin
  FConta.Free;
  inherited;
end;

procedure TContaSalario.Sacar(const AValor: Currency);
begin
  FConta.Sacar(AValor);
end;

end.
