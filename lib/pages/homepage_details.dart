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
        backgroundColor: mytheme.creamcolor,
        appBar: AppBar(),
        bottomNavigationBar:Container(
          color: Colors.white,
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
              child: "Buy".text.xl2.make(),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(mytheme.darkbluishcolor),
                shape: const MaterialStatePropertyAll(StadiumBorder()),
              ),
            ).wh(100, 50),
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
                    color: Colors.white,
                    child: Column(
                      children: [
                        catalog.name.text.xl4.bold
                            .color(mytheme.darkbluishcolor)
                            .make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle!)
                            .make(),
                        10.heightBox,
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
