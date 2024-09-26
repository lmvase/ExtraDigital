unit uModel.Functions.Tests;

interface

uses
  DUnitX.TestFramework, uModel.Functions, uConstants, System.SysUtils,
  Data.DB;

type

  [TestFixture]
  TModelFunctionsTests = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;

    [Test]
    procedure TestCreateArrayFilterQueryDefaultLogicalDelete;

    [Test]
    procedure TestValuesCreateArrayFilterQueryDefaultLogicalDelete;
  end;

implementation

procedure TModelFunctionsTests.Setup;
begin
end;

procedure TModelFunctionsTests.TearDown;
begin
end;

procedure TModelFunctionsTests.TestCreateArrayFilterQueryDefaultLogicalDelete;
var
  oReturnArray: TArray<TFilterQuery>;
begin
  oReturnArray := CreateArrayFilterQueryDefaultLogicalDelete;
  Assert.IsTrue(Assigned(oReturnArray));
end;

procedure TModelFunctionsTests.
  TestValuesCreateArrayFilterQueryDefaultLogicalDelete;
var
  oReturnArray: TArray<TFilterQuery>;
  nRec: Integer;
  bValid: Boolean;
begin
  oReturnArray := CreateArrayFilterQueryDefaultLogicalDelete;

  bValid := False;
  for nRec := Low(oReturnArray) to High(oReturnArray) do
  begin
    bValid := oReturnArray[nRec].Key <> EmptyStr;

    if not bValid then
      Break;
  end;

  Assert.IsTrue(bValid);
end;

initialization

TDUnitX.RegisterTestFixture(TModelFunctionsTests);

end.
