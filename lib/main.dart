
import 'package:counter_store_provider/app/locator.dart';
import 'package:counter_store_provider/ui/views/home/home_view.dart';
import 'package:counter_store_provider/ui/views/partialBuild/partial_build_view.dart';
import 'package:counter_store_provider/ui/views/partialBuild/partial_build_viewmodel.dart';
import 'package:counter_store_provider/ui/views/stramBuild/stream_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'ui/views/stramBuild/stream_build_view.dart';

void main() {

  setupLocator();
  PartialBuilderViewModel();
  runApp(MaterialApp(
        home: StreamExample(),
  ));
}


