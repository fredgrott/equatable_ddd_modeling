// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:equatable_ddd_modeling/src/domain/models/sample_item_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'mock_sample_item_entity.dart';
import 'mock_sample_item_model.dart';

void main() {
  late final MockSampleItemEntity mockSampleItemEntity;
  late final MockSampleItemModel mockSampleItemModel;
  late final int tSampleItemId;
  late final SampleItemModel tSampleItemModel;

  setUp(() {
    mockSampleItemEntity = MockSampleItemEntity();
    mockSampleItemModel = MockSampleItemModel();
    tSampleItemId = 1;
    tSampleItemModel = SampleItemModel(tSampleItemId);
  });

  group("Model and Entity Tests", () {
    test('Entity Test', () async {
      // if using streams its thenAnswer instead, stubbing the mock
      // to state what answer is returned during interacting with the
      // mock
      when<dynamic>(() => mockSampleItemEntity).thenReturn(tSampleItemId);

      // show that we have no interaction as of yet
      verifyNever(() => mockSampleItemEntity);

      // show that during interaction with entity we get back an id of int
      expect(mockSampleItemEntity, tSampleItemId);
    });

    test("Model Test", () async {
      when<dynamic>(() => mockSampleItemModel).thenReturn(tSampleItemModel);

      verifyNever(() => mockSampleItemModel);

      expect(mockSampleItemModel, tSampleItemModel);
    });
  });
}
