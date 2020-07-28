import 'dart:convert';

import 'package:fandom/src/json_provider.dart';
import 'package:http/http.dart' as http;

class HttpClient extends JsonProvider {
  @override
  Future<Map<String, dynamic>> get(String path) async {
    return http.get(path).then((value) => json.decode(value.body));
  }
}
