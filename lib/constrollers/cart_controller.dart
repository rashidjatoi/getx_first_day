import 'package:get/get.dart';
import 'package:getx_first_day/models/product.dart';

class CartController extends GetxController {
  var cartItems = <Products>[].obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  addToCart(Products products) {
    cartItems.add(products);
  }
}
