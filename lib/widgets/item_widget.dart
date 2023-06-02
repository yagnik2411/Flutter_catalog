import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemView extends StatelessWidget {
  final Item item;

  ItemView({Key? key, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      shadowColor: Colors.deepPurple,
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price.toString()}",
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
