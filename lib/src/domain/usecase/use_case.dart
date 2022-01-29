// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:equatable_ddd_modeling/src/domain/errors/app_error.dart';


import 'package:flutter/material.dart';

/// UseCase interface for use cases that takes a
/// parameter or takse a NoParams.
///
/// @author Fredrick Allan Grott
@immutable
abstract class UseCase<Type, Params> {
  // states that we can call an implementation of AppUseCase as a function, i.e. AppUseCase(t, params)
  Future<Either<AppError, Type>> call(Params params);
}

@immutable
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
