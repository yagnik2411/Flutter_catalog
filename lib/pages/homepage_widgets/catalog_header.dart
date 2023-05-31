import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/utils/mytheme.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "Catalog App"
          .text
          .xl4
          .color(context.theme.colorScheme.secondary)
          .bold
          .make(),
      "Trending Products"
          .text
          .color(context.theme.colorScheme.secondary)
          .xl2
          .make(),
    ]);
  }
}
