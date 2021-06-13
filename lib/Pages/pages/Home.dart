import 'package:Feriap/Pages/pages/search.dart';
import 'package:Feriap/Pages/textdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).canvasColor,
        centerTitle: true,
        title: Text(
          TextData.TEXT_LABEL_INICIO,
          style: TextStyle(
              color: Theme.of(context).primaryColor, fontSize: media * 0.073),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: media * 0.2,
              right: media * 0.2,
              bottom: media * 0.02,
            ),
            child: TextField(
              onTap: () {
                Get.to(Search());
              },
              autofocus: false,
              showCursor: false,
              readOnly: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: '¿Que quieres hoy?'),
            ),
          ),
          Flexible(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 300,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.amber,
                    child: Center(child: Text('$index')),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
