// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dartz/dartz.dart';
import 'package:equatable_ddd_modeling/src/domain/datasource/datasource.dart';
import 'package:equatable_ddd_modeling/src/domain/errors/app_error.dart';


import 'package:equatable_ddd_modeling/src/domain/models/sample_item_model.dart';
import 'package:equatable_ddd_modeling/src/domain/models/sample_list_view_model.dart';

class SampleListViewModelDataSource implements Datasource {
  late final SampleListViewModel sampleListViewModel;

  SampleListViewModelDataSource({required this.sampleListViewModel});

  @override
  Future<Either<AppError, SampleListViewModel>> initViewModel() async {
    sampleListViewModel.items = [
      SampleItemModel(1),
      SampleItemModel(2),
      SampleItemModel(3),
    ];

    return sampleListViewModel as Future<Either<AppError, SampleListViewModel>>;
  }
}
