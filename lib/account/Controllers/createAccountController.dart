import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  final _emailcontroller = TextEditingController();
  final _passwdcontroller = TextEditingController();
  // final _formkey = GlobalKey<FormState>();
  final _tokenController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _result;
  String _userEmail = '';

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwdcontroller.dispose();
    _tokenController.dispose();
    super.dispose();
  }

  // Example code for registration.
  Future<void> _register() async {
    final User user = (await _auth.createUserWithEmailAndPassword(
      email: _emailcontroller.text,
      password: _passwdcontroller.text,
    ))
        .user;
    if (user != null) {
      _result = true;

      Future.delayed(Duration(seconds: 2), () => Get.offAllNamed('/home'));
      _userEmail = user.uid;
    } else {
      _result = false;
    }
  }
}
