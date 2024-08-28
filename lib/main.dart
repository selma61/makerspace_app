import 'package:flutter/material.dart';
import 'package:makerspace/cart_page.dart';
import 'package:makerspace/pages/event_pages/nahmaschiene.dart';
import 'package:makerspace/pages/event_pages/DDruckerPage.dart';
import 'package:makerspace/pages/event_pages/topf.dart';
import 'package:makerspace/pages/event_pages/zeiten.dart';
import 'package:makerspace/pages/menu_page.dart';
import 'package:makerspace/pages/models/cart_model.dart';
import 'package:makerspace/pages/start_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (context) => CartModel(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      routes: {
        "/startpage": (context) => StartPage(),
        "/menupage": (context) => MenuPage(),
        "/festivalpage": (context) => NahmschienePage(),
        "/topfpage": (context) => TopfPage(),
        "/noodleharmonypage": (context) => DDruckerPage(),
        "/cartpage": (context) => CartPage(),
        "/zeiten": (context) => Zeiten(),
      },
    );
  }
}
