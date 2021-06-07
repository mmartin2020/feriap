import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Decor encabeza
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              //left
              Positioned(
                  child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.9,
              )),
//right
              Positioned(
                  right: -100.0,
                  top: -50.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          Theme.of(context).primaryColorDark.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.width * 0.5,
                  ))
            ],
          ),

          //Contenedor formulario
          Container(
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
