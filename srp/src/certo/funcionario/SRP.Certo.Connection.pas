unit SRP.Certo.Connection;

interface

uses FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.Stan.Def, FireDAC.Phys.SQLite;

type
  TConnection = class
  private
    FConnection: TFDConnection;
    constructor Create;
  public
    class function GetConnection: TFDConnection;
    class function GetInstance: TConnection;
    class function NewInstance: TObject; override;
    property Connection: TFDConnection read FConnection;
    destructor Destroy; override;
  end;

var
  Instance: TConnection;

implementation

{ TConnection }

constructor TConnection.Create;
begin
  if not Assigned(FConnection) then
  begin
    FConnection := TFDConnection.Create(nil);
    FConnection.LoginPrompt := False;
    FConnection.ConnectionDefName := 'SQLite_Demo';
  end;
end;

destructor TConnection.Destroy;
begin
  FConnection.Free;
  inherited;
end;

class function TConnection.GetConnection: TFDConnection;
begin
  Result := Self.GetInstance.Connection;
end;

class function TConnection.GetInstance: TConnection;
begin
  Result := TConnection.Create;
end;

class function TConnection.NewInstance: TObject;
begin
  if not Assigned(Instance) then
    Instance := TConnection(inherited NewInstance);
  Result := Instance;
end;

initialization

finalization
  Instance.Free;

end.
