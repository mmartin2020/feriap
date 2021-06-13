import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded), hintText: 'Buscar...'),
          ),
        ),
      ]),
    );
  }
}
