import 'package:counter_store_provider/ui/views/stramBuild/stream_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StreamExample extends StatelessWidget {
  const StreamExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamExampleViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: Center(
                child: Text(model.title),
              ),
            ),
        viewModelBuilder: () => StreamExampleViewModel());
  }
}
