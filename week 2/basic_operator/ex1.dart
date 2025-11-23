void main(List<String> args) {
  int apple = 47;
  int apple_perBox = 8;
  int totalbox = apple ~/ apple_perBox;
  int apple_left = apple % apple_perBox;

  print('i have ${apple} apples.');
  print('i can fill ${totalbox} boxes.');
  print('i will have ${apple_left} left.');
  
}