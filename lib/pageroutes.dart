import 'package:get/get.dart';

import 'HomePages/Pages/categoria.dart';
import 'HomePages/Pages/condiciones.dart';
import 'HomePages/Pages/detailsProducts.dart';
import 'HomePages/Pages/home.dart';
import 'HomePages/Pages/masVendido.dart';
import 'HomePages/Pages/offer.dart';
import 'HomePages/Pages/search.dart';
import 'account/GlobalsBindings.dart';
import 'account/Pages/administrarmicuenta.dart';
import 'account/Pages/createaccount.dart';
import 'account/Pages/forgetpassword.dart';
import 'account/Pages/login.dart';
import 'initialPage/PageView.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
      binding: LoginBindings(),
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
      page: () => Forgetpassword(),
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
      page: () => Admincuenta(),
      title: '/admincuenta',
      unknownRoute: GetPage(
        name: '/login',
        page: () => Login(),
      )),
  GetPage(
      name: '/detailsproducts',
      page: () => Detailsproducts(),
      title: '/detailsproducts',
      unknownRoute: GetPage(
        name: '/login',
        page: () => Login(),
      ))
];
