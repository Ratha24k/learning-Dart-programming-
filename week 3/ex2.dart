import 'dart:io';

Future<void> main(List<String> args) async {
  List<double> expenses = [];
  double total_expenses = 0;

  while (true) {
    print("===== Wallet Manager =====");
    stdout.write("Command (add, undo, list, exit): ");
    String? command_input = stdin.readLineSync();

    if (command_input == null) {
      print("Invalid input");
      continue;
    }

    if (command_input == "add") {
      stdout.write("Enter Amount: ");
      String? amountStr = stdin.readLineSync();

      if (amountStr == null) {
        print("Amount cannot be null");
        continue;
      }

      double amount = double.parse(amountStr);
      expenses.add(amount);

      stdout.write("Saving to cloud...");
      await Future.delayed(Duration(seconds: 2));
      stdout.write("  (Saved: \$${expenses.last})\n");
    }

    if (command_input == "undo") {
      if (expenses.isEmpty) {
        print("You still do not have expenses.");
      } else {
        print("Removed: \$${expenses.last}");
        expenses.removeLast();
      }
    }

    if (command_input == "list") {
      
      stdout.write("Loading List... ");
      await Future.delayed(Duration(milliseconds: 2000));
      stdout.write("Done!");
      print("\nList of expenses: $expenses");
    }

    if (command_input == "exit") {
      total_expenses = expenses.fold(0, (sum, value) => sum + value);

      
      print("Syncing final data...");
      await Future.delayed(Duration(milliseconds: 2000));

      print("\n--- Final Summary ---");
      print("Total spent: \$${total_expenses}");

      if (total_expenses > 500) {
        print("Status: Out of budget");
      } else {
        print("Status: In budget");
      }

      break;
    }
  }
}
