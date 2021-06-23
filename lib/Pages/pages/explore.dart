import 'package:Feriap/Pages/Data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => Get.toNamed('/search'),
                child: Container(
                  padding: EdgeInsets.only(
                      left: 10.0, right: 100.0, bottom: 7.0, top: 7.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.grey.withOpacity(0.3)),
                  child: Row(children: [
                    Icon(Icons.search),
                    Text('Buscar...'),
                  ]),
                ),
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.map,
                      size: 20.0,
                    ),
                  ),
                  Text('Americo Vespucio #0484',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10.0)),
                ],
              )
            ],
          ),
          SizedBox(height: 10.0),
          Flexible(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate([
                    // descubrir nuevas cosas
                    _textTitle(
                      'Descubrir cosas nuevas',
                      20.0,
                    ),
                    _listNuevasCosas(),

                    // Mas vendidos
                    _textTitle(
                        'Productos más vendidos', 17.0, fila('masVendido')),

                    _listMasVendidos(),

                    //  Variedad de productos
                    _textTitle(
                        'Variedad de productos', 17.0, fila('categoria')),
                    SizedBox(height: 5.0),
                    _listVariedades(),
                  ]),
                )
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}

Widget _textTitle(String text, double _fontSize, [Widget _showAll]) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Text(text,
        style: TextStyle(
            color: Colors.black,
            fontSize: _fontSize,
            fontWeight: FontWeight.bold)),
    _showAll ?? Spacer(),
  ]);
}

//lista nuevas cosas
Widget _listNuevasCosas() {
  List descubrir = productos["descubrir"].toList();

  return Container(
    height: 310,
    child: //
        ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: descubrir.length,
      itemBuilder: (BuildContext context, int index) {
        String _txtDescripcionPoroductos = descubrir[index]["subtitulo"];
        String price = descubrir[index]["precio"];
        String unidad = descubrir[index]["medida"];
        String image = descubrir[index]["image"];
        String titulo = descubrir[index]["titulo"];
        String calif = descubrir[index]["calificacion"];
        String califtotal = descubrir[index]["clasificacion_total"];

        return Container(
          margin: EdgeInsets.symmetric(horizontal: 3.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                    width: 200,
                    height: 220,
                    fit: BoxFit.cover,
                    image: AssetImage(image)),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(titulo,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 12.0)),
              ),
              Container(
                child: Text(
                    _txtDescripcionPoroductos.length > 40
                        ? _txtDescripcionPoroductos.substring(0, 37) + '...'
                        : _txtDescripcionPoroductos,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        fontSize: 11.0)),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 15.0),
                  Text(calif,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500)),
                  Text('(${califtotal} Clasificación)',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500)),
                ],
              ),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 3.0, top: 3.0),
                      child: Text(
                        'Agregar al carro',
                        style: TextStyle(color: Colors.white, fontSize: 11.0),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Theme.of(context).primaryColor)),
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Text(
                      '\$${price + ' ' + unidad}',
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    ),
  );
}

// lista mas vendido
Widget _listMasVendidos() {
  List masvendido = productos["masvendido"].toList();

  return Container(
    height: 260,
    child: //
        ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        String image = masvendido[index]["image"];
        String titulo = masvendido[index]["titulo"];
        String subtitulo = masvendido[index]["subtitulo"];
        String calif = masvendido[index]["calificacion"];
        String precio = masvendido[index]["precio"];
        String califtotal = masvendido[index]["clasificacion_total"];
        String medida = masvendido[index]["medida"];

        return Container(
            child: ListTile(
                title: Text(titulo),
                subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(subtitulo),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 15.0),
                          Text(calif,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500)),
                          Text(' (${califtotal} Clasificación)',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15.0),
                            child: Text(
                              '\$${precio + ' ' + medida}',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 12.0),
                              padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  bottom: 3.0,
                                  top: 3.0),
                              child: Text(
                                'Agregar al carro',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11.0),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Theme.of(context).primaryColor)),
                        ],
                      ),
                    ]),
                leading: Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset(
                        image,
                        width: 80,
                        height: 100,
                      )),
                )));
      },
    ),
  );
}

//fila mostrar todos
Widget fila(String indicador) {
  return GestureDetector(
      onTap: () {
        Get.toNamed('/details/${indicador}');
      },
      child: Row(
        children: [
          Text('Mostrar todos', style: TextStyle(fontSize: 10.0)),
          Icon(
            Icons.play_arrow_rounded,
            size: 12.0,
          )
        ],
      ));
}

// variedad de productos
Widget _listVariedades() {
  List abarrotes = productos["variedades"].toList();

  return Container(
    height: 120,
    child: //
        ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: abarrotes.length,
      itemBuilder: (BuildContext context, int index) {
        String image = abarrotes[index]["image"];
        String titulo = abarrotes[index]["titulo"];
        return Stack(alignment: Alignment.center, children: [
          Container(
            width: 250,
            margin: EdgeInsets.symmetric(horizontal: 3.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          Container(
            child: Text(titulo,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold)),
          ),
        ]);
      },
    ),
  );
}
