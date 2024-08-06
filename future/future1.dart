/*
  1. try catch (exception handling) is much used in futures
  In futures, you are contacting external APIs or services

  2. Future - is a class that represents that a function or some computation may complete in the future
  and this produces a result or an error. This is related to asynchorouns programming.

  3. Async Programming - is a programming that allows us to perform tasks concurrently without
  blocking the execution.

  4. to make any function asynchornous, use async after fn(), that is
  String function() async{
    return 'Hi'; // error
  }

  5. The functions marked 'async' must have a return type to'Future'.
  Future<String> function() async {
    return 'Hi';
  }

  6. when you use Future withour async, then return a Future from the function.
    Future<String> function(){
      // returning a future<String>
      retrun Future((){
        return 'hey!!';
      });
    }
  
  7. async is not compulsory to use with Future, you can return a Future as well wihtout using async. (Point-6)
  
  8. async is used when you want to use 'await'.
  await is for an event.

  9. Future<void> and void are different from each other.
  you can use async in void function without maing it Future.
  void function() async{

  }

  10. Instead of async and await use, you can alos use then() - Example 2
*/

void main() async {
  // Future (Promises in JavaScript - Future in Dart)
  // Future is not present in other languages except Js

  /*
  // Example 1
  print('Start');
  final result = await giveMeResultAfter2Sec(); // prints Future after a delay of 2 seconds
  print(result);
  print('hi');
  print('heyy');
  print('Greetings');
  */


  // Example 2
  print('Start');
  giveMeResultAfter2Sec().then((value){
    print(value); // waits for 2 seconds then prints
  });
  print('Hey!!');
  print('End!!');

}

Future<String> giveMeResultAfter2Sec(){
  return Future.delayed(Duration(seconds: 2), () async {
    return 'Future';
  });
}