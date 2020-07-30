// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

class ResultSet<T> {
  /// Element collection
  final List<T> items;

  /// Common URL prefix for relative URLs
  final String basePath;

  ResultSet(this.items, this.basePath);
}
