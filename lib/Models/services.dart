import 'dart:convert';

import 'package:http/http.dart' as http;
import 'APIServices.dart';

Future<List<APIServices>> getServices() async {
  var response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

  List json = jsonDecode(response.body);

  List<APIServices> api = json.map((e) => APIServices.fromJson(e)).toList();

  if (response.statusCode == 200) {
    return api;
  }
}
