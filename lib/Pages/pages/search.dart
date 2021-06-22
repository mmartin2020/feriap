import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final _txtcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            controller: _txtcontroller,
            decoration: InputDecoration(
                suffix: IconButton(
                    onPressed: () => _txtcontroller.clear(),
                    icon: Icon(Icons.close),
                    color: Theme.of(context).primaryColor),
                prefixIcon: Icon(Icons.search_rounded),
                hintText: 'Buscar...'),
          ),
        ),
      ]),
    );
  }
}
