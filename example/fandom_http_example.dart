import 'dart:convert';

import 'package:fandom/src/fandom.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  var fandom = Fandom('https://marvel.fandom.com',
      (path) => http.get(path).then((value) => json.decode(value.body)));
  var result = await fandom.activity.latestActivity();
  print('result: ${result}');
}
