A Dart Fandom API library, which makes it easy to access data from specified fandom URL

## Usage

A simple usage example:

```dart
import 'dart:convert';

import 'package:fandom/src/fandom.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  var fandom = Fandom('https://marvel.fandom.com',
      (path) => http.get(path).then((value) => json.decode(value.body)));
  var result = await fandom.search.list('Wolverine');
  print('result: ${result.items.first.snippet}');
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
