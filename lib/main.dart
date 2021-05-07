import 'package:Feriap/InitPage/PageView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Login/login.dart';

main() => runApp(GetMaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFDB5C00),
      ),
      debugShowCheckedModeBanner: false,
      home: InitPage(),
      onGenerateRoute: (setting) {
        final name = setting.name;
        switch (name) {
          case '/login':
            return MaterialPageRoute(builder: (context) => Login());

            break;
          default:
            return null;
        }
      },
    ));
