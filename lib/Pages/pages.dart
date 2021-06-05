import 'package:Feriap/Login/login.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes=[

GetPage(name: '/login', page: ()=>Login(),title: 'Login',unknownRoute: GetPage(name: '/login', page: ()=>Login())),

];


