// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:equatable_ddd_modeling/src/domain/models/sample_item_model.dart';

class SampleListViewModel {
  late List<SampleItemModel> items;

  int get itemCount => items.length;
  bool get isEmpty => items.isEmpty;
  bool get isNotEmpty => items.isNotEmpty;

  SampleListViewModel(this.items);
}
