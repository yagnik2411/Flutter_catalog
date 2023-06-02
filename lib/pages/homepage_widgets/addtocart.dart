import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/mystore.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
   AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  final CartModel _cart = (VxState.store as MyStore).cart;
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation,RemoveMutation]);
    bool isInCart = _cart.items.contains(catalog) ? true : false;
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
        AddMutation(catalog);
          
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
