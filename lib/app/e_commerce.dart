import 'package:ecommerce/main.dart';
import 'package:flutter/material.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp._internal();
  static  const ECommerceApp _instance =   ECommerceApp._internal();
  factory ECommerceApp()=> _instance;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}