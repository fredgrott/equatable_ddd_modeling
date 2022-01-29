// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Entity interface. Both in Clean Arch and 
/// Domain-Driven-Design one implements interfaces
/// for everything in the domain and then implement 
/// those interfaces in the domain except for datasource and 
/// repositories in which the interface is still defined 
/// in domain but the implementation is in the data layer.
@immutable
abstract class Entity with EquatableMixin {
  final int itemId;

  @override
  List<Object> get props => [itemId];

  const Entity(this.itemId);

  
}
