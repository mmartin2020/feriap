import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';
import 'package:get/get.dart';

class forgetpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Ingresa su correo para recuperar su cuenta',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  labelText: 'Ingresa tu email...',
                  labelStyle: TextStyle(color: Colors.black),
                  prefix: Icon(
                    Icons.email_outlined,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                )),
            SizedBox(height: 30.0),
            ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor)),
              icon: Icon(Icons.send_outlined),
              label: Text('Enviar'),
              onPressed: () {
                Get.dialog(AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  content: Card(
                    elevation: 0.0,
                    child: Text('Enviado con exito!',
                        style: TextStyle(fontSize: 20.0)),
                  ),
                ));
              },
            ),
            SizedBox(height: 100.0),
            Text(
                'Te va a llegar una notificacion a tu correo por favor revisar tu correo para confirmar.')
          ],
        ),
      ),
    );
  }
}
