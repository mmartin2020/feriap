// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatelessWidget {
  Login({Key key}) : super(key: key);

  final GlobalKey<FormState> _formstate = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    String nombre = 'Max Martin';
    return Container(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 0.0,
              child: Container(
                  width: media.width,
                  height: media.height / 3,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Theme.of(context).primaryColor.withOpacity(0.3),
                            Theme.of(context).primaryColor.withOpacity(0.6),
                            Theme.of(context).primaryColor.withOpacity(1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(50.0),
                          bottomStart: Radius.circular(150.0)))),
            ),
            Positioned(
              top: 150.0,
              child: Container(
                  color: Colors.blue,
                  width: media.width / 1.3.toDouble(),
                  height: media.height / 1.7.toDouble(),
                  child: Form(
                      key: _formstate,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Enter your email'),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                icon: InputChip(label: Text('label')),
                                labelText: 'Enter your password'),
                          ),
                          new TextField(
                            decoration: new InputDecoration(
                              icon: new Icon(Icons.search),
                              labelText: "Describe Your Issue...",
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ))),
            ),
            Positioned(
                top: 110.0,
                child: ClipOval(
                  child: Container(
                    child: Text(nombre[0] + nombre[4],
                        style: TextStyle(
                            fontSize: media.width * 0.1.toDouble(),
                            fontWeight: FontWeight.bold)),
                    alignment: Alignment.center,
                    color: Colors.amber,
                    width: media.width * 0.2.toDouble(),
                    height: media.width * 0.2.toDouble(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

