import 'package:stacked/stacked.dart';

class StreamExampleViewModel  extends  StreamViewModel<int>{
  
  String get title  => 'The Time $data '; 
  
  @override  
  Stream<int> get stream => updateTime();

  Stream<int > updateTime()async*{
    while(true){
    await Future.delayed(Duration(seconds: 1));
    yield DateTime.now().second;}

  }
@override
  int transformData(int data) {
    
    return super.transformData(data);
  }
  // @override
  // // TODO: implement stream
  // Stream<int> get stream => throw UnimplementedError();

}