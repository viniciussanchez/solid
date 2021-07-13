unit ISP.Errado.Ave.Pinguin;

interface

uses ISP.Errado.Ave.Intf;

type
  TPinguin = class(TInterfacedObject, IAve)
  private
    procedure Bicar;
    procedure Voar;
  public
    class function New: IAve;
  end;

implementation

uses Vcl.Dialogs, System.SysUtils;

{ TPinguin }

procedure TPinguin.Bicar;
begin
  ShowMessage('Bicar');
end;

class function TPinguin.New: IAve;
begin
  Result := TPinguin.Create;
end;

procedure TPinguin.Voar;
begin
  raise Exception.Create('Pinguin não sabe voar!');
end;

end.
