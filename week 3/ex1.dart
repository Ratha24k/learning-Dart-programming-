/**
 * Async programing is running not blocking in block of code
*/

Future<void> main(List<String> args) async {
  print("--------- App starting  ----------");
  runAllAsyncFunction();
  
}

Future<void> runAllAsyncFunction() async {
   newsLoad();
   userDataLoad();
   weatherLoad(2);
   

}

Future<void> newsLoad() async {
 
  print(" 👍 News Loaded.");
  
  
}

Future<void> userDataLoad() async {
 
  print("👍 User Data Loaded.");
 ;
}

Future<void> weatherLoad(int sec) async {
  final startTime = DateTime.now();
  print("👍 Weather Loaded.");
  
  await Future.delayed(Duration(seconds: sec));
  print("---- App load in $sec s ------");
}
