program CrudProject;

uses
  MidasLib,
  Vcl.Forms,
  uEmpresaModel in 'Model\uEmpresaModel.pas',
  uEmpresaView in 'View\uEmpresaView.pas' {FEmpresaView},
  uIModel in 'Model\Interfaces\uIModel.pas',
  uDataModule in 'Model\uDataModule.pas' {DataModuleConnect: TDataModule},
  uConstants in 'Constants\uConstants.pas',
  uModel.Functions in 'Model\Util\uModel.Functions.pas',
  uEmpresaController in 'Controller\uEmpresaController.pas',
  uController in 'Controller\Impl\uController.pas',
  uIController in 'Controller\Interfaces\uIController.pas',
  uModel in 'Model\Impl\uModel.pas',
  uModel.Transaction in 'Model\Impl\uModel.Transaction.pas',
  uModel.Logical.Delete.Strategy in 'Model\Impl\DeleteStrategy\uModel.Logical.Delete.Strategy.pas',
  uModel.Physical.Delete.Strategy in 'Model\Impl\DeleteStrategy\uModel.Physical.Delete.Strategy.pas',
  uIDeleteStrategy in 'Model\Interfaces\uIDeleteStrategy.pas',
  uModel.Delete.Context in 'Model\Impl\DeleteStrategy\uModel.Delete.Context.pas',
  uFuncionarioModel in 'Model\uFuncionarioModel.pas',
  uFuncionarioController in 'Controller\uFuncionarioController.pas',
  uEnderecoEmpresaModel in 'Model\uEnderecoEmpresaModel.pas',
  uEnderecoEmpresaController in 'Controller\uEnderecoEmpresaController.pas',
  uCidadeModel in 'Model\uCidadeModel.pas',
  uCidadeController in 'Controller\uCidadeController.pas',
  uUFModel in 'Model\uUFModel.pas',
  uUFController in 'Controller\uUFController.pas',
  uTitularModel in 'Model\uTitularModel.pas',
  uTitularController in 'Controller\uTitularController.pas',
  uEmpresaView.Functions.Controll.Combox in 'View\Util\uEmpresaView.Functions.Controll.Combox.pas',
  uEmpresaView.Functions in 'View\Util\uEmpresaView.Functions.pas',
  uView.Persist.Controll.Functions in 'View\Util\uView.Persist.Controll.Functions.pas';

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModuleConnect, DataModuleConnect);
  Application.CreateForm(TFEmpresaView, FEmpresaView);
  Application.Run;
end.
