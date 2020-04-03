import 'package:weekmobile/app/modules/cadastro/cadastro_module.dart';
import 'package:weekmobile/app/modules/login/login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:weekmobile/app/modules/login/login_page.dart';
import 'package:weekmobile/app/modules/movimentacoes/movimentacoes_module.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LoginPage()),
        Router('/cadastro', module: CadastroModule()),
        Router('/movimentacoes', module: MovimentacoesModule()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
