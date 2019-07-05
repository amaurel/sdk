// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// SharedOptions=--enable-experiment=non-nullable

void f(Object x) {
  if (x is String) {
    try {
      x.length;
    } finally {
      x.length;
      x = 42;
    }
    x.length; //# 01: compile-time error
  }
}

void main() {}