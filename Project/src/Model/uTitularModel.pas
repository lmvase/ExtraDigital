unit uTitularModel;

interface

uses uModel;

type
  TTitularModel = class(TModel)
  public
    constructor Create;
  end;

implementation

{ TTitularModel }

constructor TTitularModel.Create;
begin
  FEntityName := 'CADTITULAR';
  FPrimaryKeyEntity := 'IDTITULAR';
  FSequenceName := 'GEN_CADTITULAR_ID';
  inherited Create;
end;

end.
