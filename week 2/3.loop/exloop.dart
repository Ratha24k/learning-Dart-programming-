import 'dart:io';

void main(List<String> args) {
  
   int priceInput;
   double total_price=0;
   List<double> items = [];
   
 do{
  
  stdout.write("Enter Price (press 0 to finished): ");
  String? priceString = stdin.readLineSync();
  if(priceString == null){
    throw Exception("Input must be not null");
  }
   priceInput = int.parse(priceString);

   
   if(priceInput <0){
    print("invalid price Skipping...");
    continue;
    
   }

   if(priceInput == 0){
    break;
   }
   total_price += priceInput;
   items.add(priceInput.toDouble());
   
 

 }while(true);

print("\n== Receipt ==");
for(int i = 0; i < items.length; i++){
  print("Item(${i+1}): \$${items[i].toStringAsFixed(2)}");
}
print("Total price: \$${total_price.toStringAsFixed(2)}");
 
}