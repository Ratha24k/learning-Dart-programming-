import 'dart:io';
void main(List<String> args) {
   int amountInputArgs;
  stdout.write("Input your  amount: ");
  String? amountString = stdin.readLineSync();
  if (amountString == null) {
    throw Exception("Input must be not null");
  }
  amountInputArgs = int.parse(amountString);
  String status;
  switch(amountInputArgs){
    case >= 500 :
    {
      status = "VIP";
    }
    break;
    case >=200:
    {
      status = "Gold";
    }
    break;
    case >= 100:
    {
      status = "Silver";
    }
    break;
    case <100 && >=0 :
    {
      status = "regular";
    }
    break;
    default:{
      status = "Invalid input";
    }
  }

  print("Your status is ${status}");

}