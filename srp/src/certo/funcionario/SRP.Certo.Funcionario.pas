unit SRP.Certo.Funcionario;

interface

uses SRP.Certo.Funcionario.Cargo.Enum;

type
  TFuncionario = class
  private
    FSalario: Currency;
    FId: Integer;
    FNome: string;
    FCargo: TCargoEnum;
    procedure SetId(const Value: Integer);
    procedure SetNome(const Value: string);
    procedure SetSalario(const Value: Currency);
    procedure SetCargo(const Value: TCargoEnum);
  public
    property Id: Integer read FId write SetId;
    property Nome: string read FNome write SetNome;
    property Salario: Currency read FSalario write SetSalario;
    property Cargo: TCargoEnum read FCargo write SetCargo;
    function CalcularSalario: Currency;
    constructor Create(const AId: Integer; const ANome: string; const ASalario: Currency; const ACargo: TCargoEnum); overload;
    constructor Create; overload;
  end;

implementation

{ TFuncionario }

function TFuncionario.CalcularSalario: Currency;
begin
  Result := Self.Cargo.GetCalculoSalario.Calcular(Self.Salario);
end;

constructor TFuncionario.Create(const AId: Integer; const ANome: string; const ASalario: Currency; const ACargo: TCargoEnum);
begin
  FId := AId;
  FNome := ANome;
  FSalario := ASalario;
  FCargo := ACargo;
end;

constructor TFuncionario.Create;
begin

end;

procedure TFuncionario.SetCargo(const Value: TCargoEnum);
begin
  FCargo := Value;
end;

procedure TFuncionario.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TFuncionario.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TFuncionario.SetSalario(const Value: Currency);
begin
  FSalario := Value;
end;

end.
