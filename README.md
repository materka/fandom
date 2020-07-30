A library for Fandom [APIv1][api] (formerly known as Wikia) interaction, which makes it easy to access data from specified fandom URL

## Usage
One only need to provide a Fandom URL and a callback method which will take a complete Fandom API URL, and return a json
response. With this approach the library is fully http client agnostic, so you may use any http client library you like
for requests.

A simple usage example using Dart http library for request:

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

## Documentation

One should be able to read the Fandom [APIv1][api] documentation, to understand how the library can be used.
Library documentation are pretty much the same as the [APIv1][api] documentation.

### Differences between library and API
Some model names differ between API documentation and library, due to desire of having the model naming
convention consistent in the library. 

#### Resource 'Search Suggestions' 
Merged into resource 'Search'

#### Resource 'Navigation'
WikiaItem -> WikiaInfo\
Wikia -> NavigationLink\
ChildrenItem -> NavigationChildren\

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/materka/fandom
[api]: https://www.wikia.com/api/v1

