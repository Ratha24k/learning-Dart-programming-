import 'dart:convert';

import 'package:http/http.dart' as http;


Future<void> main() async {
  double TotalPrice =0;

  Map<String, dynamic> product1 = {};
  Map<String, dynamic> product2 = {};
  Map<String, dynamic> product3 = {};

  print("--- App Starting ---");
   print("Reading Items...");
   await Future.delayed(Duration(milliseconds: 2000));

  // The blocking execution
  product1 = await getProduct1();
  product2 = await getProduct2();
  product3 = await getProduct3();

 
 
  print("product: title: ${product1['title']}");
  print("product: price:\$ ${product1['price']}");

  print("product: title: ${product2['title']}");
  print("product: price: \$${product2['price']}");

  print("product: title: ${product3['title']}");
  print("product: price:\$ ${product3['price']}");

   await Future.delayed(Duration(milliseconds: 2000));

  print("\n----------------------------");

  print("\nCheckout complete!");

  TotalPrice = product1['price'] +product2['price'] + product3['price'];
  print("Grand total : $TotalPrice");

  
 


  
}

Future<Map<String, dynamic>> getProduct1() async {
 
  final url = 'https://fakestoreapi.com/products/1';
 
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    
    return json.decode(response.body) as Map<String, dynamic>;
  } else {
    print("Cannot Get Product");
    throw Exception('Failed to fetch product');
  }
}
Future<Map<String, dynamic>> getProduct2() async {
 
  final url = 'https://fakestoreapi.com/products/5';
 
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
  //  print("Get Product Success");
    return json.decode(response.body) as Map<String, dynamic>;
  } else {
    print("Cannot Get Product");
    throw Exception('Failed to fetch product');
  }
}

Future<Map<String, dynamic>> getProduct3() async {
 
  final url = 'https://fakestoreapi.com/products/10';
 
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
  //  print("Get Product Success");
    return json.decode(response.body) as Map<String, dynamic>;
  } else {
    print("Cannot Get Product");
    throw Exception('Failed to fetch product');
  }
}

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// Future<void> main() async {
//   print("--- App Starting ---");
//   print("Reading Items...");
//   await Future.delayed(Duration(milliseconds: 1500));

//   // Fetch products
//   final products = [
//     await getProduct(1),
//     await getProduct(5),
//     await getProduct(10),
//   ];

//   print("\n--- Product Details ---");
//   for (int i = 0; i < products.length; i++) {
//     print("Product ${i + 1}: ${products[i]['title']} - \nprice: \$${products[i]['price']}");
//   }

//   await Future.delayed(Duration(milliseconds: 1000));

//   print("\n----------------------------");
//   print("Checkout complete!");

//   // Calculate total
//   double totalPrice = 0;
//   for (var p in products) {
//     totalPrice += (p['price'] ?? 0);
//   }

//   print("Grand total: \$${totalPrice.toStringAsFixed(2)}");
// }

// Future<Map<String, dynamic>> getProduct(int id) async {
//   final url = 'https://fakestoreapi.com/products/$id';

//   try {
//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       return json.decode(response.body) as Map<String, dynamic>;
//     } else {
//       throw Exception("Server responded with ${response.statusCode}");
//     }
//   } catch (e) {
//     print("Error fetching product $id: $e");
//     rethrow;
//   }
// }
