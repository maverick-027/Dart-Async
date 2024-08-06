void main() async {
  // Streams - is basically a genrator for asynchornous programming
  // it allows you to produce sequence of values over time.

  // in streams - you send the request (it is just like subscribed to a event)
  // when you use async*, you need to make that function Stream
  // when you are using Streams and async* , you need to yield (in place of return).
  // when you are using Streams only, you can use return.
  
  print(await countDown().first);

  countDown().listen((event) { 
    print(event);
  }, onDone: (){
    print('hey i completed!!!!');
  });
}

Stream<int> countDown() async* {
  for(int i = 5; i > 0; i--){
    yield i;
    await Future.delayed(Duration (seconds: 1)); 
  }
}