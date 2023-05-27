import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/utils/mytheme.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(mytheme.creamcolor)
        .make()
        .p16()
        .w40(context);
  }
}