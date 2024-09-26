program CrudProject;

uses
  MidasLib,
  Vcl.Forms,
  uEmpresaModel in 'src\Model\uEmpresaModel.pas',
  uEmpresaView in 'src\View\uEmpresaView.pas' {FEmpresaView},
  uIModel in 'src\Model\Interfaces\uIModel.pas',
  uDataModule in 'src\Model\uDataModule.pas' {DataModuleConnect: TDataModule},
  uConstants in 'src\Constants\uConstants.pas',
  uModel.Functions in 'src\Model\Util\uModel.Functions.pas',
  uEmpresaController in 'src\Controller\uEmpresaController.pas',
  uController in 'src\Controller\Impl\uController.pas',
  uIController in 'src\Controller\Interfaces\uIController.pas',
  uModel in 'src\Model\Impl\uModel.pas',
  uModel.Transaction in 'src\Model\Impl\uModel.Transaction.pas',
  uModel.Logical.Delete.Strategy in 'src\Model\Impl\DeleteStrategy\uModel.Logical.Delete.Strategy.pas',
  uModel.Physical.Delete.Strategy in 'src\Model\Impl\DeleteStrategy\uModel.Physical.Delete.Strategy.pas',
  uIDeleteStrategy in 'src\Model\Interfaces\uIDeleteStrategy.pas',
  uModel.Delete.Context in 'src\Model\Impl\DeleteStrategy\uModel.Delete.Context.pas',
  uFuncionarioModel in 'src\Model\uFuncionarioModel.pas',
  uFuncionarioController in 'src\Controller\uFuncionarioController.pas',
  uEnderecoEmpresaModel in 'src\Model\uEnderecoEmpresaModel.pas',
  uEnderecoEmpresaController in 'src\Controller\uEnderecoEmpresaController.pas',
  uCidadeModel in 'src\Model\uCidadeModel.pas',
  uCidadeController in 'src\Controller\uCidadeController.pas',
  uUFModel in 'src\Model\uUFModel.pas',
  uUFController in 'src\Controller\uUFController.pas',
  uTitularModel in 'src\Model\uTitularModel.pas',
  uTitularController in 'src\Controller\uTitularController.pas',
  uEmpresaView.Functions.Controll.Combox in 'src\View\Util\uEmpresaView.Functions.Controll.Combox.pas',
  uEmpresaView.Functions in 'src\View\Util\uEmpresaView.Functions.pas',
  uView.Persist.Controll.Functions in 'src\View\Util\uView.Persist.Controll.Functions.pas',
  Unit1 in 'src\Unit1.pas';

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModuleConnect, DataModuleConnect);
  Application.CreateForm(TFEmpresaView, FEmpresaView);
  Application.Run;
end.
