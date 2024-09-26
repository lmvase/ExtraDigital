unit uUFModel;

interface

uses uModel;

type
  TUFModel = class(TModel)
  public
    constructor Create;
  end;

implementation

{ TUFModel }

constructor TUFModel.Create;
begin
  FEntityName := 'CADUF';
  FPrimaryKeyEntity := 'IDUF';
  inherited Create;
end;

end.

