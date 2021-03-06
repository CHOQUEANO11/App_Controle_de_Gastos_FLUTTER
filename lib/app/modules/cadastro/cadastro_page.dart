import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:weekmobile/app/Utils/size_utils.dart';
import 'package:weekmobile/app/Utils/theme_utils.dart';
import 'package:weekmobile/app/components/controle_button.dart';
import 'package:weekmobile/app/components/controle_form_field.dart';
import 'cadastro_controller.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key key, this.title = "Cadastro"}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState
    extends ModularState<CadastroPage, CadastroController> {
  //use 'controller' variable to access controller

  AppBar appBar = AppBar(
    elevation: 0,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
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
                  height: (SizeUtils.heigthScreen * .3) - (SizeUtils.statusBarHeigth + appBar.preferredSize.height),
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
                    ControleFormField(label: 'Confirme Senha'),
                    SizedBox(height: 30,
                    ),
                    ControleButon(onPressed: () => Get.toNamed('/login'), label: 'Salvar'),
                    SizedBox(
                      height: 30,
                    )
                  ]
                ),
              ),
            );
  }
}