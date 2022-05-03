import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:prueba_tecnica/src/contact/pages/contact_page.dart';
import 'package:prueba_tecnica/src/contact/pages/detail_page.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Netcom',
      initialRoute: "/contact",
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/contact', page: () => ContactPage()),
        GetPage(name: '/detail', page: () => DetailPage()),
      ],
    );
  }
}
