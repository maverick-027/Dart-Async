void main(){
  // Exception Handling

  /*
  print(10~/3); // 10/3 = 3.33 -> 3

  print(10/0); // infinity

  print(10~/0); // Exception

  // after the excenption (unhandled exception), program terminates
  // so the next line does or code doesn't executes
  print('Aniwesh Kumar');
  */

  // Handling exception - try catch block
  // a try block must be followed by an 'on;, 'catch' or 'finaly' clause.
  // finally bloack always executes (it doen't care wheter try or catch run or not, the final block always executes)
  // catch block is executed when try throws some exception
  // on exception is used to handle some particular exception
  
  print(10~/3);

  print(10/0);

  try{
    print(10~/0);
  } catch(e){
    // e is exception
    print(e); // IntegerDivisionByZeroException
    // you can print any message here
  }
  print('name');
}