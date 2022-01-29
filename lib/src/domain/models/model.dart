// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:equatable_ddd_modeling/src/domain/entities/entity.dart';
import 'package:flutter/material.dart';


/// Model interface will always extend the Entity 
/// interface no matter what value-object plugin-generator 
/// is being used.
@immutable 
abstract class Model  extends Entity {
  const Model(int itemId) : super(itemId);
  
}
