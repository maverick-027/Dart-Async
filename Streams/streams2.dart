import 'dart:async';

void main(){
  // Stream controller - control the stream by providig some methods


  countDown().listen((event) {
    print(event);
  });

}

Stream<int> countDown(){
  final controller = StreamController();

  controller.sink.add(1);

  controller.stream.listen((event) {
    print(event);
  });
  return Stream.periodic(Duration(seconds: 1), (val){
    return val;
  });

  
}