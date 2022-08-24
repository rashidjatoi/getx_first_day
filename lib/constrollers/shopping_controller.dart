import 'package:get/get.dart';
import 'package:getx_first_day/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Products>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProduct();
  }

  void fetchProduct() async {
    await Future.delayed(const Duration(seconds: 2));
    var serverResponse = [
      Products(
          id: 1,
          productName: 'First Product',
          ProductImage: 's',
          productDescription: 'First Product Description',
          price: 30),
      Products(
          id: 2,
          productName: 'Second Product',
          ProductImage: 'abd',
          productDescription: 'Second Product Description',
          price: 34),
      Products(
          id: 3,
          productName: 'Third Product',
          ProductImage: 'abd',
          productDescription: 'Third Product Description',
          price: 44)
    ];

    products.value = serverResponse;
  }
}
