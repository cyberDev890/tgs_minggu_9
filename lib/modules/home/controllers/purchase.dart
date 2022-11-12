import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';

import '../../model/product.dart';

class Purchase extends GetxController {
  //TODO: Implement HomeController

  var products = <Product>[].obs;
  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Product(1, 'Demo product', 'aby',  
          'This is a Product that we are going to show by getX', 300.0),
      Product(1, 'Demo product', 'aby',
          'This is a Product that we are going to show by getX', 300.0),
      Product(1, 'Demo product', 'aby',
          'This is a Product that we are going to show by getX', 300.0),
      Product(1, 'Demo product', 'aby',
          'This is a Product that we are going to show by getX', 300.0),
      Product(1, 'Demo product', 'aby',
          'This is a Product that we are going to show by getX', 300.0),
      Product(1, 'Demo product', 'aby',
          'This is a Product that we are going to show by getX', 300.0),
    ];
    products.value = serverResponse;
  }
}
