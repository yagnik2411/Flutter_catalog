import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/homepage_details.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/MyRoutes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_catalog/utils/mytheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.system,
      theme:mytheme.lighttheme(context),
      darkTheme: mytheme.darktheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(), // "/home" is the route name
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
       
      },
    );
  }
}
