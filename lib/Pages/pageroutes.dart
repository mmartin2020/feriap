import 'package:Feriap/Home/HomeView.dart';
import 'package:Feriap/InitPage/PageView.dart';
import 'package:Feriap/Login/login.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes=[

GetPage(name: '/login', page: ()=>Login(),title: 'Login',unknownRoute: GetPage(name: '/login', page: ()=>Login())),
GetPage(name: '/initialpage', page: ()=>InitPage(),title: 'Login',unknownRoute: GetPage(name: '/login', page: ()=>Login())),
GetPage(name: '/HomeView', page: ()=>HomeView(),title: 'HomeView',unknownRoute: GetPage(name: '/login', page: ()=>Login())),

];


