import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/utils/mytheme.dart';

import '../../models/cart.dart';
import '../home_page.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;
  CatalogItem({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var mytheme;
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(image: catalog.image),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.bold
                .color(context.theme.colorScheme.secondary)
                .make(),
            catalog.desc.text.textStyle(context.captionStyle!).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}"
                    .text
                    .xl
                    .bold
                    .color(context.theme.colorScheme.secondary)
                    .make(),
               _AddToCart(catalog: catalog)
              ],
            ).pOnly(right: 10.0)
          ],
        ))
      ],
    )).roundedLg.color(context.cardColor).square(150).make().py12();
  }
}

class _AddToCart extends StatefulWidget {
  final Item catalog;
  const _AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
   bool isAdded = false;
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ? true : false;
    return ElevatedButton(
      onPressed: () {
        isAdded = isAdded.toggle();
        final _catalog = CatalogModel();
        final _cart = CartModel();
        _cart.catalog = _catalog;
        _cart.add(widget.catalog);
        setState(() {
          
        });
      },
      child: isAdded?Icon(Icons.done):"Add To Cart".text.white.make(),
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(context.theme.colorScheme.primary),
        shape: const MaterialStatePropertyAll(StadiumBorder()),
      ),
    );
  }
}
