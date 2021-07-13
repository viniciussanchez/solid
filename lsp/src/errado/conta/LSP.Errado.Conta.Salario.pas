unit LSP.Errado.Conta.Salario;

interface

uses LSP.Errado.Conta;

type
  TContaSalario = class(TContaBancaria)
  public
    procedure Render; override;
  end;

implementation

uses System.SysUtils;

{ TContaSalario }

procedure TContaSalario.Render;
begin
  raise Exception.Create('Essa conta não possui rendimento');
  inherited;
end;

end.
