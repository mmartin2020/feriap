import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              'Creación de cuenta',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
                child: TextField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      labelText: 'Nombre Completo',
                      labelStyle: TextStyle(color: Colors.black),
                      prefix: Icon(
                        Icons.person,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    ))),
            SizedBox(height: 10.0),
            Container(
                child: TextField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black),
                      prefix: Icon(
                        Icons.email_outlined,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ))),
            SizedBox(height: 10.0),
            Container(
                child: TextField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      labelText: 'Teléfono',
                      labelStyle: TextStyle(color: Colors.black),
                      prefix: Icon(
                        Icons.phone,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ))),
            SizedBox(height: 10.0),
            Container(
                child: TextField(
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      labelText: 'Contraseña',
                      labelStyle: TextStyle(color: Colors.black),
                      prefix: Icon(
                        Icons.lock,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ))),
            SizedBox(height: 10.0),
            Container(
                child: TextField(
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      labelText: 'Repetir la contraseña',
                      labelStyle: TextStyle(color: Colors.black),
                      prefix: Icon(
                        Icons.lock,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ))),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor)),
              child: Text('Registrarse'),
              onPressed: () {
                Get.dialog(AlertDialog(
                  actions: [
                    ElevatedButton(
                        onPressed: () => Get.offAllNamed('/login'),
                        child: Text('Acceptar'))
                  ],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  content: Card(
                    elevation: 0.0,
                    child: Text('Cuenta creada con exito!',
                        style: TextStyle(fontSize: 20.0)),
                  ),
                ));
              },
            ),
            SizedBox(height: 30.0),
            Text(
                'Al presionar registrarse estas acceptando las codiciones y terminos para utilizar nuestro servicio ',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.black)),
            SizedBox(height: 10.0),
            Center(
              child: GestureDetector(
                onTap: () => Get.toNamed('/condiciones'),
                child: Text('Revisar termino y condiciones',
                    style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline)),
              ),
            ),
            SizedBox(height: 5.0),
          ]),
        ),
      ),
    );
  }
}
