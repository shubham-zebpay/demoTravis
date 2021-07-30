import 'package:stacked/stacked.dart';


class PartialBuilderViewModel  extends  BaseViewModel{
  late String _text ='';
  String get text=>_text;
  void updateString(String value) {
    _text  = value;
    notifyListeners();
  }
}