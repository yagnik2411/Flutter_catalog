import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
   AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);


  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(catalog) ? true : false;
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          final _catalog = CatalogModel();
          final _cart = CartModel();
          _cart.catalog = _catalog;
          _cart.add(catalog);
          
        }
      },
      child: isInCart ? Icon(Icons.done) : "Add To Cart".text.white.make(),
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(context.theme.colorScheme.primary),
        shape: const MaterialStatePropertyAll(StadiumBorder()),
      ),
    );
  }
}
