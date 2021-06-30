import 'package:Feriap/Pages/pageroutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      accentColor: Color(0xFFDB5C00).withOpacity(0.1),
      splashColor: Color(0xFFDB5C00).withOpacity(0.2),
      primaryColor: Color(0xFFDB5C00),
      highlightColor: Color(0xFFDB5C00),
      buttonTheme: ButtonThemeData(
        buttonColor: Color(0xFFDB5C00),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusColor: Color(0xFFDB5C00),
      ),
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    getPages: routes,
  ));
}
