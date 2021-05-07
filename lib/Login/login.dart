import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 0.0,
              child: Container(
                  width: media.width,
                  height: media.height / 2,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadiusDirectional.circular(30.0))),
            ),
            Positioned(
              top: 100.0,
              child: Container(
                color: Colors.blue,
                width: media.width / 2,
                height: media.height / 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
