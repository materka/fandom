import 'package:fandom/src/client.dart';

import 'http_client.dart';

Future<void> main() async {
  var client = HttpClient();
  var fandom = Fandom('https://marvel.fandom.com', client);
  var result = await fandom.activity.latestActivity();
  print('result: ${result}');
}
