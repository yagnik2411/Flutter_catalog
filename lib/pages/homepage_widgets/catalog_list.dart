import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage_details.dart';

import '../../models/catalog.dart';
import 'catalog_item.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getByPosition(index);
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePageDetails(catalog: catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}
