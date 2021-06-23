import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: AlignmentDirectional.center,
                  end: AlignmentDirectional.bottomCenter,
                  stops: [
                0.6,
                1.0
              ],
                  colors: [
                Colors.white,
                Theme.of(context).primaryColor.withOpacity(0.5)
              ])),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70.0,
                ),
                Text(
                  'Bienvenido',
                  style: TextStyle(fontSize: 40.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('Ingresa tus datos para iniciar',
                    style: TextStyle(color: Colors.grey)),
                SizedBox(
                  height: 60.0,
                ),
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _inputT(
                        Icon(
                          Icons.person,
                          size: 12.0,
                        ),
                        'Ingresa tu email ',
                        false,
                        context),
                    SizedBox(height: 12.0),
                    _inputT(Icon(Icons.lock, size: 12.0),
                        'Ingresa tu contraseña ', true, context),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      child: Text('Iniciar sessión'),
                      onPressed: () => Get.offAllNamed('/home'),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)))),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Divider(
                            height: 36.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('OR'),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Divider(
                            height: 36.0,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF3b5998)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)))),
                      label: Text('Loggear con Facebook'),
                      onPressed: () {},
                      icon: Icon(Icons.facebook_outlined),
                    ),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFdb4a39)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)))),
                      label: Text('Loggear con Google'),
                      onPressed: () {},
                      icon: Icon(Icons.g_mobiledata_outlined),
                    ),
                    SizedBox(
                      height: 75.0,
                    ),
                    GestureDetector(
                        onTap: () => Get.toNamed('/forgetpassword'),
                        child: Center(
                          child: Text(
                            '¿Has olvidado tu cuenta?',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('¿No tienes una cuenta?',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          width: 5.0,
                        ),
                        GestureDetector(
                            onTap: () => Get.toNamed('/createAccount'),
                            child: Text(
                              'Inscribirse',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    ),
                  ],
                ))
              ],

              //Contenedor formulario
            ),
          ),
        ),
      ),
    );
  }

  Widget _inputT(Icon icon, String text, bool obscur, BuildContext context) {
    return Container(
      child: TextField(
          style: TextStyle(fontSize: 13.0),
          keyboardType: TextInputType.emailAddress,
          cursorColor: Colors.grey,
          obscureText: obscur ?? false,
          decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(12),
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
