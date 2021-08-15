import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/menu-controller.dart';
import 'package:flutter_app/controllers/navigation-controller.dart';
import 'package:flutter_app/layout.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyAdminApp());
}

class MyAdminApp extends StatefulWidget {
  @override
  _MyAdminAppState createState() => _MyAdminAppState();
}

class _MyAdminAppState extends State<MyAdminApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Admin Panel',
      theme: ThemeData(
        backgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black
        ),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
        }),
        primaryColor: Colors.blueAccent,
      ),
      home: SiteLayout(),
    );
  }
}

