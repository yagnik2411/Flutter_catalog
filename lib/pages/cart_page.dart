import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/mytheme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(context.theme.colorScheme.secondary).make(),
      ),
      body: Column(
        children: [
          _cartList().p32().expand(),
          Divider(
            color: context.theme.colorScheme.secondary.withOpacity(1.0),
          ),
          _cartTotal(),
        ],
      ),
    );
  }
}

class _cartTotal extends StatelessWidget {
   final _cart = CartModel(); 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}".text.xl4.color(context.theme.colorScheme.secondary).make(),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: "Buying not supported yet."
                          .text
                          .color(context.theme.colorScheme.secondary)
                          .center
                          .medium
                          .bold
                          .make(),
                      backgroundColor: context.theme.colorScheme.primary,
                      elevation: 0,
                      duration: Duration(milliseconds: 500),
                      margin: EdgeInsets.all(25),
                      padding: EdgeInsets.all(15),
                      behavior: SnackBarBehavior.floating,
                      shape: ShapeBorder.lerp(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        double.maxFinite,
                      ),
                      ));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        context.theme.colorScheme.primary),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                  ),
                  child: "Buy".text.white.center.make())
              .w24(context),
        ],
      ),
    );
  }
}

class _cartList extends StatefulWidget {
  @override
  State<_cartList> createState() => _cartListState();
}

class _cartListState extends State<_cartList> {
  final _cart = CartModel();  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _cart.items.length,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () {},
              ),
              title: _cart.items[index].name.text.make(),
            ));
  }
}
