import 'package:flutter/material.dart';

class PageSlider {
  String _image;
  String _title;
  String _subtitle;
  int _id;
  PageSlider(this._image, this._title, this._subtitle, this._id);
  get widgets => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  width: 240,
                  height: 240,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(this._image),
                          alignment: Alignment.center)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  this._title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(this._subtitle, textAlign: TextAlign.justify),
                SizedBox(
                  height: 40.0,
                )
              ],
            ),
          ),
        ),
      );
}
