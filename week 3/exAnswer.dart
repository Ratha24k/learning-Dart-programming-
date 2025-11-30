Future<void> main() async {
  final stopwatch = Stopwatch()..start();
  
  print("--- App Starting ---");
  
  // The blocking execution
  await fetchSchoolNews(); // Takes 3 seconds
  await fetchUserData();   // Takes 2 seconds
  await fetchWeather();    // Takes 3 seconds
  
  stopwatch.stop();
  print("--- App Loaded in ${stopwatch.elapsed.inSeconds} seconds ---");
}

// Mock API Functions
Future<String> fetchSchoolNews() async {
  await Future.delayed(Duration(seconds: 3));
  print("✔️ News Loaded");
  return "News Data";
}

Future<String> fetchUserData() async {
  await Future.delayed(Duration(seconds: 2));
  print("✔️ User Data Loaded");
  return "User Data";
}

Future<String> fetchWeather() async {
  await Future.delayed(Duration(seconds: 3));
  print("✔️ Weather Loaded");
  return "Weather Data";
}
