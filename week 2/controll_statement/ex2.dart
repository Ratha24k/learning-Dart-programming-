import 'dart:io';

void main(List<String> args) {
  int amountInputArgs;
  stdout.write("Input your  amount: ");
  String? amountString = stdin.readLineSync();
  if (amountString == null) {
    throw Exception("Input must be not null");
  }
  amountInputArgs = int.parse(amountString);
  if (amountInputArgs >= 500) {
    print("Vip");
  } else if(amountInputArgs >= 200){
    print("Gold");
  }else if(amountInputArgs >= 100){
    print("Silver");
  }else{
    print("normal");
  }
}