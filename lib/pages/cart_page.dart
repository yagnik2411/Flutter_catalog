import 'package:flutter/cupertino.dart';
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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl4.color(context.theme.colorScheme.secondary).make(),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {},
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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: "Item 1".text.make(),
      )
    );
  }
}
