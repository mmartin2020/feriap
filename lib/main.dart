import 'package:Feriap/Pages/pageroutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      primaryColor: Color(0xFFDB5C00),
    
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: '/HomeView',
    getPages: routes,
  ));
}
