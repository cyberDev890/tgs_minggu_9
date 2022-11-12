import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../model/product.dart';

class DemoController extends GetxController {
  //TODO: Implement HomeController

  var carItems = <Product>[].obs;
  int get cartCount => carItems.length;
  double get totalAmount => carItems.fold(0.0, (sum, item) => sum + item.price);
  addToCart(Product product) {
    carItems.add(product);
  }

  final storage = GetStorage();
  bool get isDarkMode => storage.read('isDarkMode') ?? false;
  ThemeData get theme => isDarkMode ? ThemeData.dark() : ThemeData.light();
  void changeTheme(bool val) {
    storage.write('isDarkMode', val);
  }
}
