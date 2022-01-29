// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';

@immutable
class AppError extends  Error {
  // ignore: no-object-declaration
  final Object? message;


  AppError(this.message);

  @override
  String toString() {
    if (message != null) {
      return "App failed: ${Error.safeToString(message)}";
    }

    return "App failed";
  }
}
