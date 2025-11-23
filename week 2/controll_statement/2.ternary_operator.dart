void main(List<String> args) {
  int low_batterylevel = 15;
  String status = low_batterylevel <=20 ? "Low battery" : "Battery Good";
  print("battery status is: ${status}");
}