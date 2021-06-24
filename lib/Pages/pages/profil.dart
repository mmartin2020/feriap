import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Card(
            margin: EdgeInsets.all(0),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0, top: 30.0),
              child: Row(
                children: [
                  (Icon(
                    Icons.account_circle_sharp,
                    size: 80.0,
                  )),
                  Column(
                    children: [
                      Text(
                        'Janita Perez ',
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        'Email: jperez@gmail.com',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Text('Administrar mi cuenta',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ))),
                    ],
                  )
                ],
              ),
            ),
          )),
          ListTile(
            title: Text('Mis favoritos'),
            leading: Icon(Icons.favorite),
          ),
          ListTile(
            title: Text('Soy repartidor'),
            leading: Icon(Icons.delivery_dining_rounded),
          ),
          ListTile(
            title: Text('Soy negociante'),
            leading: Icon(Icons.group),
          ),
          ListTile(
            title: Text('Terminos y condiciones'),
            leading: Icon(Icons.info),
          ),
          ListTile(
              title: Text('Cerrar sessión'),
              leading: Icon(
                Icons.delete_rounded,
              )),
        ],
      ),
    );
  }
}
