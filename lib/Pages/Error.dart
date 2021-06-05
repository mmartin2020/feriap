import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('¡¡ERROR!!',style: TextStyle(fontSize: 40.0,color: Colors.grey),)),
    );
  }
}