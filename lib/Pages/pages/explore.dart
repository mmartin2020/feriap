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
                      left: 10.0, right: 100.0, bottom: 10.0, top: 10.0),
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
                    _textTitle(
                      'Descubrir cosas nuevas',
                      20.0,
                    ),
                    _globalList(
                        context,
                        Axis.horizontal,
                        300.0,
                        _listNuevasCosas(context),
                        20,
                        AlwaysScrollableScrollPhysics()),
                    _textTitle(
                        'Productos más vendidos', 17.0, fila('masVendido')),
                    _globalList(
                        context,
                        Axis.vertical,
                        200.0,
                        _listMasVendidos(context),
                        3,
                        NeverScrollableScrollPhysics()),
                    _textTitle(
                        'Recomendada para ti', 17.0, fila('recomendado')),
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

//lista general
Widget _globalList(
  BuildContext context,
  Axis _scrollDirection,
  double _containerSize,
  Widget _listContain,
  int _itemCount,
  ScrollPhysics _scrollableScrollPhysics,
) {
  return Container(
    height: _containerSize,
    child: //
        ListView.builder(
      physics: _scrollableScrollPhysics,
      scrollDirection: _scrollDirection,
      itemCount: _itemCount,
      itemBuilder: (BuildContext context, int index) {
        return _listContain;
      },
    ),
  );
}

//lista descubre nuevas cosas
Widget _listNuevasCosas(BuildContext context) {
  final descubrir = productos["descubrir"].toList();
  String _txtDescripcionPoroductos = descubrir[1]["subtitulo"];
  String price = descubrir[1]["precio"];
  String unidad = descubrir[1]["medida"];
  String image = descubrir[1]["image"];
  String titulo = descubrir[1]["titulo"];

  return Container(
    margin: EdgeInsets.only(right: 7.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
              width: 200,
              height: 220,
              fit: BoxFit.cover,
              image: NetworkImage(image)),
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
            Text('3.8',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500)),
            Text('(388 Clasificación)',
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
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
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
}

// lista mas vendido
Widget _listMasVendidos(BuildContext context) {
  return Container(
      child: ListTile(
          title: Text('Incomienda abarrotes'),
          subtitle: Text('Productos de almacenen'),
          leading: Image.network(
              'https://asset1.cxnmarksandspencer.com/is/image/mands/010421_foodslp_update?wid=900&qlt=70&fmt=pjpeg')));
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
