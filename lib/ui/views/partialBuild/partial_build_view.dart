import 'package:counter_store_provider/ui/views/partialBuild/partial_build_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildView extends StatelessWidget {
  const PartialBuildView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuilderViewModel>.nonReactive(
      createNewModelOnInsert: true,
        builder: (context, model, child) => Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    _StringForm(),
                    _TextValue()

                ],
              ),
            ),
        viewModelBuilder: () => PartialBuilderViewModel());
  }


  
}

class _StringForm extends HookViewModelWidget<PartialBuilderViewModel>{
  _StringForm():super(reactive: false);
  @override
  Widget buildViewModelWidget(BuildContext context, PartialBuilderViewModel viewModel) {
    var text  = useTextEditingController();
    return  TextField(
      controller: text,
      onChanged: viewModel.updateString,
    );
  }

}
class _TextValue extends ViewModelWidget<PartialBuilderViewModel> {
  const _TextValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, PartialBuilderViewModel viewModel) {
    // TODO: implement build
    return Text('${viewModel.text}');
  }

  
}