// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:equatable_ddd_modeling/src/domain/entities/entity.dart';


// ignore: avoid_implementing_value_types
class SampleItemEntity implements Entity {
  final int sampleItemId;

  @override
  int get itemId => sampleItemId;

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [sampleItemId];

  SampleItemEntity(this.sampleItemId);

  
}
