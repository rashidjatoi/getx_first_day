import 'package:flutter/material.dart';
import 'package:getx_first_day/views/shop_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Management using Getx',
      home: ShoppingPage(),
    );
  }
}
