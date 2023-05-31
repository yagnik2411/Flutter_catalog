import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/mytheme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      title: "Cart".text.color(context.theme.colorScheme.secondary).make(),
    ));
  }
}