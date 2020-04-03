import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:weekmobile/app/Utils/size_utils.dart';
import 'package:weekmobile/app/Utils/theme_utils.dart';
import 'package:weekmobile/app/components/controle_button.dart';
import 'package:weekmobile/app/components/controle_form_field.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _makeHeader(),
          SizedBox(
            height: 30,
          ),
          _makeForm()
                  ],
                ),
              );
            }
          
            Widget _makeHeader() {
                return Container(
                  color: ThemeUtils.primaryColor,
                  width: SizeUtils.widthScreen,
                  height: (SizeUtils.heigthScreen * .4) - SizeUtils.statusBarHeigth,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Positioned(
                        bottom: 50,
                      child: Image.asset('assets/images/banco.png'),
                      )
                    ]
                  )
                );
            }
          
          Form _makeForm() {
            return Form(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    ControleFormField(label: 'Login'),
                    SizedBox(height: 30),
                    ControleFormField(label: 'Senha'),
                    SizedBox(height: 30,),
                    ControleButon(label: 'Entrar',
                     onPressed: () => Get.toNamed('/movimentacoes'),
                    ),
                    SizedBox(height: 30,),
                    FlatButton(onPressed: () => Get.toNamed('/login/cadastro'), 
                    child: Text('Cadastre-se', style: TextStyle(color: ThemeUtils.primaryColor, fontSize: 20),),
                    )
                  ]
                ),
              ),
            );
          }
}
