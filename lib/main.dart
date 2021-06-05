import 'package:Feriap/InitPage/PageView.dart';
import 'package:Feriap/Login/login.dart';
import 'package:Feriap/Models/initPageBindings.dart';
import 'package:Feriap/Pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Models/initPageConroller.dart';

main() => runApp(GetMaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFDB5C00),
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: InitPageBindings(),
      home: InitPageController().getPrefs() ? Login() : InitPage(),
      getPages: routes,
    ));
