import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_first_day/constrollers/cart_controller.dart';
import 'package:getx_first_day/constrollers/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({Key? key}) : super(key: key);
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx State Management'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      margin: const EdgeInsets.all(12),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.products[index].productName,
                                      style: const TextStyle(fontSize: 24),
                                    ),
                                    Text(controller
                                        .products[index].productDescription),
                                  ],
                                ),
                                Text('\$${controller.products[index].price}',
                                    style: const TextStyle(fontSize: 24)),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                cartController
                                    .addToCart(controller.products[index]);
                              },
                              child: const Text('Add to Cart'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          GetX<CartController>(builder: (controller) {
            return Text('Total Amount: ${cartController.totalPrice} \$');
          }),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
