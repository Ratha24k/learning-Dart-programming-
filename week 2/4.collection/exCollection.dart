void main(List<String> args) {
  
  List<String> feature =[];
  feature.addAll(["Dark Mode","Push Notifications","Chat support"]);
  print('Three feature that team work should work on is : ${feature}');
  
  feature.insert(0, "Login Screen");
  print("All featuer after CEO updated is : ${feature}");


  feature.remove("Chat support");
  print("feature after remove chat support");
  feature.sort();
  print("Feature after sort : ${feature}\n\n");

  print('The first feature the team should work on is : ${feature.first}');
  print('The last feature the team should work on is : ${feature.last}');
  print("the total of featuer is : ${feature.length}");


}