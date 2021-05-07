// Inipage
import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:Feriap/InitPage/PageData.dart';
import 'package:Feriap/InitPage/PageSlider.dart';

class InitPage extends StatefulWidget {
  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  PageController _pageController = new PageController(initialPage: 0);
  int _currenPage = 0;
  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 6), (Timer t) {
      setState(() {
        if (_currenPage < 2) {
          _currenPage++;
        } else {
          _currenPage = 0;
        }
        _pageController.animateToPage(_currenPage,
            duration: Duration(microseconds: 100), curve: Curves.easeInOut);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int i) {
    setState(() {
      _currenPage = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Stack(alignment: AlignmentDirectional.bottomCenter, children: [
      PageView.builder(
        onPageChanged: _onPageChanged,
        controller: _pageController,
        itemCount: elements.length,
        itemBuilder: (context, i) => PageSlider(
                elements[i]["image"],
                elements[i]["title"],
                elements[i]["subtitle"],
                elements[i]["id"])
            .widgets(context),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int t = 0; t < elements.length; t++)
                    t == _currenPage ? Slider(true) : Slider(false)
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Empezar a explorar'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor)),
            ),
            SizedBox(height: media.height * 0.037),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Registrarse',
                      style: TextStyle(
                          color: Colors.grey, fontSize: media.height * 0.015),
                    )),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(
                          color: Colors.grey, fontSize: media.height * 0.015),
                    )),
              ],
            ),
          ],
        ),
      )
    ]);
  }
}

class Slider extends StatelessWidget {
  bool state;
  Slider(this.state);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInOutCubic,
      duration: Duration(microseconds: 200),
      margin: EdgeInsets.only(left: 8.0),
      height: state ? 8 : 6,
      width: state ? 8 : 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: state ? Theme.of(context).primaryColor : Colors.grey,
      ),
    );
  }
}
