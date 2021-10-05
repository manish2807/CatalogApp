import 'package:catalog_app/core/store.dart';
import 'package:catalog_app/pages/login.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app/pages/Homepage.dart';
import 'package:catalog_app/pages/cart_page.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Homepage(),
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.cartRoute: (context) => Cartpage(),
      },
    );
  }
}
