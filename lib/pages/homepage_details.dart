import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/mytheme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomePageDetails extends StatelessWidget {
  final Item catalog;
  const HomePageDetails({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:context.canvasColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar:Container(
          color: context.cardColor,
          child:  ButtonBar(
        
           alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}"
                .text
                .xl4
                
                .bold
                .red800
                .make(),
            ElevatedButton(
              onPressed: () {},
              child: "Add To Cart".text.white.xl2.make(),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(context.theme.colorScheme.primary),
                shape: const MaterialStatePropertyAll(StadiumBorder()),
              ),
            ).wh(140, 50),
          ],
        ).py16().px20(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h40(context),
              Expanded(
                child: VxArc(
                  edge: VxEdge.top,
                  arcType: VxArcType.convey,
                  height: 30.0,
                  child: Container(
                    width: context.screenWidth,
                    color:context.cardColor,
                    child: Column(
                      children: [
                        catalog.name.text.xl4.bold
                            .color(context.theme.colorScheme.secondary)
                            .make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle!)
                            .make(),
                        10.heightBox,
                         "Dolor sea takimata ipsum sea eirmod aliquyam est. Eos ipsum voluptua eirmod elitr, no dolor dolor amet eirmod dolor labore dolores magna. Amet vero vero vero kasd, dolore sea sed sit invidunt nonumy est sit clita."
                            .text
                            .textStyle(context.captionStyle)
                            .make()
                            .p16(),
                      ],
                    ).py64(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
