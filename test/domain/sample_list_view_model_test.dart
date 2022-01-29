// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:equatable_ddd_modeling/src/domain/models/sample_item_model.dart';
import 'package:equatable_ddd_modeling/src/domain/models/sample_list_view_model.dart';

import 'package:flutter_test/flutter_test.dart';



void main() {
  late SampleListViewModel aSampleListModel;
  late SampleItemModel tOne;
  late SampleItemModel tTwo;
  late SampleItemModel tThree;
  late List<SampleItemModel> tItems;
  late bool tTrue;
  late bool tFalse;
  late int tLength;

  setUp(() {
    tOne = SampleItemModel(1);
    tTwo = SampleItemModel(2);
    tThree = SampleItemModel(3);
    tTrue = true;
    tFalse = false;
    tLength = 3;

    tItems = [
      tOne,
      tTwo,
      tThree,
    ];

    aSampleListModel = SampleListViewModel([
      SampleItemModel(1),
      SampleItemModel(2),
      SampleItemModel(3),
    ]);
  });

  test("Sample ListView Model tests", () async {
    expect(aSampleListModel.itemCount, tLength);

    expect(aSampleListModel.isNotEmpty, tTrue);

    expect(aSampleListModel.isEmpty, tFalse);

    expect(aSampleListModel.items, tItems);
  });
}
