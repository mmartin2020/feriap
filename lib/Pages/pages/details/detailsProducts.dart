import 'package:flutter/material.dart';

import 'package:get/get.dart';

class detailsproducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _txtDescripcionPoroductos = Get.arguments['subtitulo'];
    final _txtfieldcontroler = TextEditingController(text: '1');

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.offAllNamed('/home');
              },
              icon: Icon(Icons.close)),
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Card(
                        elevation: 0.2,
                        child: Image(
                            errorBuilder: (context, error, stackTrace) => Icon(
                                  Icons.image_not_supported_outlined,
                                  size: 150.0,
                                  color: Colors.grey[100],
                                ),
                            width: 150,
                            height: 200,
                            fit: BoxFit.contain,
                            image: AssetImage(Get.arguments['image'])),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(Get.arguments['titulo'],
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18.0)),
                      ),
                    ),
                    Center(
                      child: Container(
                        child: Text(
                            _txtDescripcionPoroductos.length > 40
                                ? _txtDescripcionPoroductos.substring(0, 37) +
                                    '...'
                                : _txtDescripcionPoroductos,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                                fontSize: 13.0)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 15.0),
                        Text(Get.arguments['calif'],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500)),
                        Text('(${Get.arguments['califtotal']} Clasificación)',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  child: IconButton(
                                      constraints:
                                          BoxConstraints(maxHeight: 30.0),
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      padding: EdgeInsets.all(0.0),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.remove,
                                      ))),
                              VerticalDivider(
                                color: Colors.grey,
                              ),
                              Container(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  controller: _txtfieldcontroler,
                                  decoration: InputDecoration(
                                      constraints: BoxConstraints(
                                          maxWidth: 20.0, maxHeight: 5.0),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey))),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14.0),
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.grey,
                              ),
                              Container(
                                  child: IconButton(
                                      constraints:
                                          BoxConstraints(maxHeight: 30.0),
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      padding: EdgeInsets.all(0.0),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: Text(
                            '\$${Get.arguments['precio'] + ' ' + Get.arguments['medida']}',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton.icon(
                      icon: Row(
                        children: [Icon(Icons.shopping_cart_outlined)],
                      ),
                      label: Text('Ir al carro'),
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
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Recomendado para ti',
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                    ),
                  ),
                ],
              ),

              //lista de recomendaciones
              Flexible(
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (_, i) {
                    return Card(
                      child: Container(
                        height: 130,
                        width: 150,
                        child: Column(children: [
                          Image(
                              errorBuilder: (context, error, stackTrace) =>
                                  Icon(
                                    Icons.image_not_supported_outlined,
                                    size: 50.0,
                                    color: Colors.grey[100],
                                  ),
                              width: 80,
                              height: 80,
                              fit: BoxFit.contain,
                              image: AssetImage('image')),
                          Container(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text('titulo',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 10.0)),
                          ),
                          Container(
                            child: Text(
                                _txtDescripcionPoroductos.length > 40
                                    ? _txtDescripcionPoroductos.substring(
                                            0, 37) +
                                        '...'
                                    : _txtDescripcionPoroductos,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                    fontSize: 10.0)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star,
                                  color: Colors.yellow, size: 11.0),
                              Text('calif',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500)),
                              Text('(${'califtotal'} Clasificación)',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ]),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ));
  }
}
