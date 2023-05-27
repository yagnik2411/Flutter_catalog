import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

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
    var mytheme;
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: catalog.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.bold.color(mytheme.darkbluishcolor).make(),
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
                    .color(mytheme.darkbluishcolor)
                    .make(),
                ElevatedButton(
                  onPressed: () {},
                  child: "Buy".text.make(),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(mytheme.darkbluishcolor),
                    shape: MaterialStatePropertyAll(StadiumBorder()),
                  ),
                )
              ],
            ).pOnly(right: 20.0)
          ],
        ))
      ],
    )).roundedLg.color(Vx.white).square(150).make().py12();
  }
}
