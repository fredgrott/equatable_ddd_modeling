// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:equatable_ddd_modeling/src/domain/datasource/sample_list_view_model_data_source.dart';
import 'package:equatable_ddd_modeling/src/domain/models/sample_item_model.dart';
import 'package:equatable_ddd_modeling/src/domain/models/sample_list_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'mock_sample_list_view_model_data_source.dart';

void main() {
  late final MockSampleListViewModelDataSource
      mockSampleListViewModelDataSource;
  late final SampleListViewModel aSampleListViewModel;
  late final List<SampleItemModel> aItems;
  late final SampleItemModel aOne;
  late final SampleItemModel aTwo;
  late final SampleItemModel aThree;

  setUp(() {
    aOne = SampleItemModel(1);
    aTwo = SampleItemModel(2);
    aThree = SampleItemModel(3);
    aItems = [aOne, aTwo, aThree];
    aSampleListViewModel = SampleListViewModel(aItems);
    mockSampleListViewModelDataSource = SampleListViewModelDataSource(
      sampleListViewModel: aSampleListViewModel,
    ) as MockSampleListViewModelDataSource;
  });

  test("Data Source has a ListViewModel", () async {
    // stubbing the mock with a return value
    when<dynamic>(() => mockSampleListViewModelDataSource)
        .thenReturn(aSampleListViewModel);

    verifyNever(() => mockSampleListViewModelDataSource);

    expect(mockSampleListViewModelDataSource, aSampleListViewModel);
  });
}
