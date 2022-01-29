// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dartz/dartz.dart';
import 'package:equatable_ddd_modeling/src/domain/datasource/sample_list_view_model_data_source.dart';
import 'package:equatable_ddd_modeling/src/domain/errors/app_error.dart';



import 'package:equatable_ddd_modeling/src/domain/models/sample_list_view_model.dart';
import 'package:equatable_ddd_modeling/src/domain/usecase/use_case.dart';

class InitSampleListViewModelUseCase
    implements UseCase<SampleListViewModel, NoParams> {
  late final SampleListViewModelDataSource sampleListViewModelDataSource;

  InitSampleListViewModelUseCase(this.sampleListViewModelDataSource);

  @override
  Future<Either<AppError, SampleListViewModel>> call(NoParams params) async {
    return sampleListViewModelDataSource.initViewModel();
  }
}
