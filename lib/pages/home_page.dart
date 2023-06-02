// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/core/mystore.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/pages/homepage_widgets/catalog_list.dart';
import 'package:http/http.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/models/catalog.dart';

import '../utils/MyRoutes.dart';
import 'homepage_widgets/catalog_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String days = "3rd";
  // final url = "https://api.jsonbin.io/b/604dbddb683e7e079c4eefd3";
  // final url = Uri.http("api.jsonbin.io", "/b/604dbddb683e7e079c4eefd3", {'q': '{http}'});

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");

    // final Response = await get(url);
    // final catalogJson = Response.body;
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final CartModel cart = (VxState.store as MyStore).cart;
    return Scaffold(
        floatingActionButton: VxConsumer(
          notifications: {},
          mutations: {AddMutation, RemoveMutation},
          builder: (context, store, status) => FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.cartRoute);
            },
            backgroundColor: context.theme.colorScheme.primary,
            child: Icon(
              CupertinoIcons.cart,
              color: Colors.white,
            ),
          ).badge(
            color: Colors.redAccent,
            size: 22,
            count: cart.items.length,
            textStyle: TextStyle(
                color: context.theme.colorScheme.primary,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
        ),
        backgroundColor: context.canvasColor,
        body: SafeArea(
            child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items.isNotEmpty)
                CatalogList().py12().expand()
              else
                CircularProgressIndicator().py20().centered().expand(),
            ],
          ),
        )));
  }
}
