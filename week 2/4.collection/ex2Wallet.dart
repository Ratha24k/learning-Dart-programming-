import 'dart:io';

void main(List<String> args) {
  List<double> expenses = [];

  double total_expenses = 0;
  double amount;

  do {
    print("===== Wellet Manager =====");
    stdout.write("Command  (add, undo, list, exit): ");
    String? command_input = stdin.readLineSync()!;

    if (command_input == "add") {
      stdout.write("Enter Amount: ");
      String? amountStr = stdin.readLineSync()!;
      amount = double.parse(amountStr);
      expenses.add(amount);

      print("Add: ${expenses.last}");
    }
    ;

    if (command_input == "undo") {
      if (expenses.length == 0) {
        print("You still not have expenses");
      } else if (expenses.length >= 1) {
        print(" remove : ${expenses.last}");
        expenses.removeLast();
      } else {
        print("Invalid");
      }
    }
    ;

    if (command_input == "list") {
      print("list of expenses : ${expenses}");
    }
    ;

    if (command_input == "exit") {
      for (double sum_exp in expenses) {
        total_expenses += sum_exp;
      }
      print("---Final Summary----");

      print("Total spent : ${total_expenses}");
      if (total_expenses > 500) {
        print("Status : Out of budget");
      } else {
        print("Status In budget");
      }

      break;
    }
  } while (true);
}
