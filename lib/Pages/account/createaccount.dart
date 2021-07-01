import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size.height;
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
            SizedBox(height: media * 0.07),
            Text(
              'Creación de cuenta',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: media * 0.1),

            // textInput name
            _inputT(
                Icon(
                  Icons.person,
                  size: 12.0,
                ),
                'Nombre Completo',
                context),

            SizedBox(height: 20.0),

            // email
            _inputT(
                Icon(
                  Icons.email,
                  size: 12.0,
                ),
                'Correo',
                context),

            SizedBox(height: 20.0),

            // Teléfono
            _inputT(
                Icon(
                  Icons.phone,
                  size: 12.0,
                ),
                'Teléfono',
                context),

            SizedBox(height: 20.0),

            // Contraseña
            _inputT(
                Icon(
                  Icons.lock,
                  size: 12.0,
                ),
                'Contraseña',
                context,
                true),

            SizedBox(height: 20.0),

            // Repetir la contraseña
            _inputT(
                Icon(
                  Icons.lock,
                  size: 12.0,
                ),
                'Repetir la contraseña',
                context,
                true),
            SizedBox(height: 40.0),

            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor)),
              child: Text('Registrarse'),
              onPressed: () {
                Get.dialog(AlertDialog(
                  actions: [
                    ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0))),
                        ),
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
            SizedBox(height: media * 0.1),
            Center(
              child: Text(
                  'Al presionar registrarse estas acceptando las codiciones y terminos para utilizar nuestro servicio ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 10.0),
            Center(
              child: GestureDetector(
                onTap: () => Get.toNamed('/condiciones'),
                child: Text('Revisar termino y condiciones',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
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

  Widget _inputT(Icon icon, String text, BuildContext context, [bool obscur]) {
    return Container(
      child: TextField(
        textInputAction: TextInputAction.next,
          style: TextStyle(
            fontSize: 14.0,decoration: TextDecoration.none
          ),
          keyboardType: TextInputType.emailAddress,
          cursorColor: Colors.grey,
          obscureText: obscur ?? false,
          decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(14),
              fillColor: Colors.grey.withOpacity(0.2),
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20.0),
              ),
              prefix: icon,
              hintText: text,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ))),
    );
  }
}
