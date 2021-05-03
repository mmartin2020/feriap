import 'package:flutter/foundation.dart';

class APIServices {
  int _id;
  String _title;
  String _url;
  String _thumbnailUrl;

  APIServices(this._id, this._title, this._url, this._thumbnailUrl);

  // parse
  factory APIServices.fromJson(Map<String, dynamic> jsonMap) {
    return APIServices(jsonMap['id'], jsonMap['title'], jsonMap['url'],
        jsonMap['thumbnailUrl']);
  }

  get id => _id;
  get title => _title;
  get url => _url;
  get thumbnailUrl => _thumbnailUrl;
}
