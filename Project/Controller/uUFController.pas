unit uUFController;

interface

uses
  uUFModel, uController;

type
  TUFController = class(TController)
  public
    constructor Create;
  end;

implementation

{ TUFController }

constructor TUFController.Create;
begin
  FModel := TUFModel.Create;
end;

end.
