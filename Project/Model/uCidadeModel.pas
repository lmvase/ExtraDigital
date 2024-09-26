unit uCidadeModel;

interface

uses uModel;

type
  TCidadeModel = class(TModel)
  public
    constructor Create;
  end;

implementation

{ TCidadesModel }

constructor TCidadeModel.Create;
begin
  FEntityName := 'CADCIDADE';
  FPrimaryKeyEntity := 'IDCIDADE';
  FSequenceName := 'GEN_CADCIDADE_ID';
  inherited Create;
end;


end.
