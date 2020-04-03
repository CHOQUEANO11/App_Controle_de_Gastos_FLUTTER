import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OKToast(
          position: ToastPosition.bottom,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              DefaultCupertinoLocalizations.delegate
            ],
            supportedLocales: [Locale('pt', 'BR')],
          navigatorKey: Get.key,
          title: 'No Controle',
          theme: ThemeData(
            primaryColor: Color(0xFF4B5FCE)
          ),
          initialRoute: '/',
          onGenerateRoute: Modular.generateRoute,
        ),
    );
  }
}

class OkToast {
}
