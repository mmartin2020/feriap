import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  static final emailcontroller = TextEditingController();
  static final passwdcontroller = TextEditingController();
  static final _formkey = GlobalKey<FormState>();
  static final _tokenController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

//Code to signin with email and password
  Future<void> _signInWithEmailAndPassword() async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwdcontroller.text,
      ))
          .user;

      Future.delayed(
          Duration(seconds: 5),
          () => Get.defaultDialog(
                  content: Row(children: [
                RefreshProgressIndicator(),
                Text('Cargando...')
              ])));
    } catch (e) {
      Get.snackbar('Error', '$e',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.black,
          showProgressIndicator: true);
    }
  }

// Code to signin to Facebook

  Future<void> _signInWithFacebook() async {
    try {
      final AuthCredential credential = FacebookAuthProvider.credential(
        _tokenController.text,
      );
      final User user = (await _auth.signInWithCredential(credential)).user;
      Get.snackbar('Info', 'Signin succefully',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.black,
          showProgressIndicator: true);
    } catch (e) {
      Get.snackbar('Error', '$e',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.black,
          showProgressIndicator: true);
    }
  }

// Code to signin with google
  Future<void> _signInWithGoogle() async {
    try {
      UserCredential userCredential;

      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final googleAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      userCredential = await _auth.signInWithCredential(googleAuthCredential);

      final user = userCredential.user;

      Get.snackbar('info', 'Sign in with Google: ${user.uid}',
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign in with Google: $e',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  // Code to signout

  Future<void> _signout() async {
    await _auth.signOut();
  }

  Future<void> signOut() {
    final User user = _auth.currentUser;

    if (user == null) {
      Get.snackbar('Alert', 'No existe sesion',
          snackPosition: SnackPosition.BOTTOM);
    }
    _signout();
    Get.offAllNamed('/login');
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passwdcontroller.dispose();
    _tokenController.dispose();
    super.dispose();
  }
}
