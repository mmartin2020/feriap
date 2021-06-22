import 'package:Feriap/Pages/pageroutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      splashColor: Color(0xFFDB5C00),
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
