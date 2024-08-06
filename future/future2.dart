void main(){
  // Fetch data from internet
  // primary work of future - to get/fetch data form the internet or external packages
  // to fetch data from internet, you have to use external packages or dependency.

  // pub.dev -> official repository for dart and flutter packages
  // http package - we'll use hhtp package to send api requets

  /*
  // Dartpad code or (we'll see it later)
  // Example 1 - fetch data from the http/internet
  /*
 import 'package:http/http.dart' as http;
 import 'dart:convert';

  void main() async {
  
    var url = Uri.https('jsonplaceholder.typicode.com', 'users');
    final res = await http.get(url);
  
    // print(res); // Intance of 'Response'
  
    // print(res.body); 
  
    print(jsonDecode(res.body)['name']);
  }
  */

  // Example 2 - if something exception occured while fetching data
  /*
  import 'package:http/http.dart' as http;
  import 'dart:convert';
  void main(){

  /*
  Sometimes it happens that the service which we are requesting doesn't work or     unavailable  at the moment.
  OR,
  we type the wrong domain name/url which doesn't exits. 
  and more. 
  
  So exception/error arises.
  In that case, we need to use try catch block or use then() instead of async       await (try catch block).
  
  Note - don't use async await if you are using then() and if you are async await   then in this case don't use then(). Either should be used.
  */

    var url = Uri.https('jsonplaceholder.typicode.com', 'users');
    try{
      final res = await http.get(url);
      print(jsonDecode(res.body)['name']);
    }catch(e){
      print('Some unexcepted error occured!!');
    }
  }
  */




  */


} 