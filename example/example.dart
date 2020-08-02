import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fandom/fandom.dart';
import 'package:fandom/src/fandom.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  LocalWikiSearchResultSet resultSet =
      await usingHttp().search.list('Wolverine');
  print('result: ${resultSet.items.first.snippet}');
}

Fandom usingHttp() {
  return Fandom('https://marvel.fandom.com',
      (path) => http.get(path).then((value) => json.decode(value.body)));
}

Fandom usingDio() {
  return Fandom('https://marvel.fandom.com',
      (path) => Dio().get(path).then((value) => value.data));
}
