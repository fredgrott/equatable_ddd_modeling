// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:dartz/dartz.dart';
import 'package:equatable_ddd_modeling/src/domain/datasource/sample_list_view_model_data_source.dart';
import 'package:equatable_ddd_modeling/src/domain/errors/app_error.dart';
import 'package:equatable_ddd_modeling/src/domain/models/sample_item_model.dart';
import 'package:equatable_ddd_modeling/src/domain/models/sample_list_view_model.dart';
import 'package:equatable_ddd_modeling/src/domain/usecase/init_sample_list_view_model_use_case.dart';
import 'package:equatable_ddd_modeling/src/domain/usecase/use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'mock_sample_list_view_model_data_source.dart';

void main() {
  late final MockSampleListViewModelDataSource
      mockSampleListViewModelDataSource;
  late final List<SampleItemModel> aItems;
  late final SampleItemModel aOne;
  late final SampleItemModel aTwo;
  late final SampleItemModel aThree;
  late final SampleListViewModel aSampleListViewModel;
  late final InitSampleListViewModelUseCase usecase;

  setUp(() {
    aOne = SampleItemModel(1);
    aTwo = SampleItemModel(2);
    aThree = SampleItemModel(3);

    aItems = [aOne, aTwo, aThree];
    aSampleListViewModel = SampleListViewModel(aItems);

    mockSampleListViewModelDataSource = SampleListViewModelDataSource(
      sampleListViewModel: aSampleListViewModel,
    ) as MockSampleListViewModelDataSource;

    usecase = InitSampleListViewModelUseCase(mockSampleListViewModelDataSource);
  });

  test("Has a DataSource", () async {
    when<dynamic>(() => mockSampleListViewModelDataSource.initViewModel())
        .thenReturn(aSampleListViewModel);

    final result = usecase(NoParams());

    

    expect(result, Right<AppError, SampleListViewModel>(aSampleListViewModel));
  });
}
