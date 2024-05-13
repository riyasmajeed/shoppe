
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shop_example/models/product.dart';

class ProductProvider extends ChangeNotifier {
  late List<Product> _products;

  List<Product> get products => _products;

  // Future<void> fetchProducts() async {
  //   final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

  //   if (response.statusCode == 200) {
  //     List jsonResponse = json.decode(response.body);
  //     _products = jsonResponse.map((data) => Product.fromJson(data)).toList();
  //     notifyListeners();
  //   } else {
  //     throw Exception('Failed to load products');
  //   }
  // }
}