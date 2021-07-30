import 'package:counter_store_provider/ui/views/home/home_viewmodel.dart';
import 'package:counter_store_provider/ui/views/startUp/startup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: Center(child: Text(' Hello Start Up'),),
            ),
        viewModelBuilder: () => StartUpViewModel());
  }
}
