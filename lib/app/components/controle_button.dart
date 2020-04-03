import 'package:flutter/material.dart';
import 'package:weekmobile/app/Utils/theme_utils.dart';

class ControleButon extends RawMaterialButton{
  static var primaryColor;

  ControleButon({
    @required VoidCallback onPressed,
    @required String label,
    Color highligthColor,

  }) : super(
    onPressed: onPressed,
    child: Container(
      padding: EdgeInsets.all(10),
      height: 60,
      alignment: Alignment.center,
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
        color: Colors.white, 
        fontSize: 20, 
        fontWeight: FontWeight.bold),
      ),
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)
    ),
    fillColor: primaryColor ?? ThemeUtils.primaryColor,
    highlightColor: highligthColor ?? ThemeUtils.primaryColor
  );
}