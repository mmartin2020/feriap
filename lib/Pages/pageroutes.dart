import 'package:Feriap/Pages/account/createaccount.dart';
import 'package:Feriap/Pages/account/forgetpassword.dart';
import 'package:Feriap/Pages/account/login.dart';
import 'package:Feriap/Pages/initialPage/PageView.dart';
import 'package:Feriap/Pages/pages/home.dart';
import 'package:Feriap/Pages/account/administrarmicuenta.dart';
import 'package:Feriap/Pages/pages/condiciones.dart';
import 'package:Feriap/Pages/pages/categoria.dart';
import 'package:Feriap/Pages/pages/detailsProducts.dart';
import 'package:Feriap/Pages/pages/masVendido.dart';
import 'package:Feriap/Pages/pages/offer.dart';
import 'package:Feriap/Pages/pages/search.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
      name: '/login',
      page: () => Login(),
      title: 'Login',
      unknownRoute: GetPage(name: '/login', page: () => Login())),
  GetPage(
      name: '/initialpage',
      page: () => InitPage(),
      title: 'Login',
      unknownRoute: GetPage(name: '/login', page: () => Login())),
  GetPage(
      name: '/home',
      page: () => Home(),
      title: 'HomeView',
      unknownRoute: GetPage(name: '/login', page: () => Login())),
  GetPage(
      name: '/forgetpassword',
      page: () => forgetpassword(),
      title: 'forgetpassword',
      unknownRoute: GetPage(name: '/login', page: () => Login())),
  GetPage(
      name: '/createAccount',
      page: () => CreateAccount(),
      title: 'CreateAccount',
      unknownRoute: GetPage(
        name: '/login',
        page: () => Login(),
      )),
  GetPage(
      name: '/condiciones',
      page: () => Condiciones(),
      title: '/condiciones',
      unknownRoute: GetPage(
        name: '/login',
        page: () => Login(),
      )),
  GetPage(
      name: '/offer',
      page: () => Offer(),
      title: '/Offer',
      unknownRoute: GetPage(
        name: '/login',
        page: () => Login(),
      )),
  GetPage(
      name: '/search',
      page: () => Search(),
      title: '/search',
      unknownRoute: GetPage(
        name: '/login',
        page: () => Login(),
      )),
  GetPage(
      name: '/details/masVendido',
      page: () => MasVendido(),
      title: '/details/masVendido',
      unknownRoute: GetPage(
        name: '/login',
        page: () => Login(),
      )),
  GetPage(
      name: '/details/categoria',
      page: () => Categoria(),
      title: '/details/categoria',
      unknownRoute: GetPage(
        name: '/login',
        page: () => Login(),
      )),
  GetPage(
      name: '/admincuenta',
      page: () => admincuenta(),
      title: '/admincuenta',
      unknownRoute: GetPage(
        name: '/login',
        page: () => Login(),
      )),
  GetPage(
      name: '/detailsproducts',
      page: () => detailsproducts(),
      title: '/detailsproducts',
      unknownRoute: GetPage(
        name: '/login',
        page: () => Login(),
      ))
];
