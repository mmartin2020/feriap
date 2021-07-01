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
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                suffix: IconButton(
                  onPressed: () => _txtcontroller.clear(),
                  icon: Icon(Icons.close),
                ),
                prefixIcon: Icon(Icons.search_rounded),
                hintText: 'Buscar...'),
          ),
        ),
        Container(
            child: Text('Busquedas recientes'),
            width: double.infinity,
            height: 20,
            decoration: BoxDecoration(color: Colors.grey)),
      ]),
    );
  }
}


class Searchclass extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }

}