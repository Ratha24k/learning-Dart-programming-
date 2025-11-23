import 'dart:io';
void main(List<String> args) {

  int amountInputArgs;
  stdout.write("Input your  amount: ");
  String? amountString = stdin.readLineSync();
  if (amountString == null) {
    throw Exception("Input must be not null");
  }
  amountInputArgs = int.parse(amountString);

  String status = amountInputArgs >= 500? "Vip" :
                  (amountInputArgs >= 200) ? "Gold":
                  (amountInputArgs >= 100) ? "Silver" :
                  (amountInputArgs <100 && amountInputArgs>0)? "Regular" : "invalid input";

print(status);
}