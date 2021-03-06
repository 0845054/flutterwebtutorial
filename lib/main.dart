// https://www.youtube.com/watch?v=i6gFRSnE6Ro&list=PLaP9FQ89vSfGE2hOt029nHDRokEEVwHUW&index=1&t=600s

import 'package:flutter/material.dart';
import 'package:flutterwebtutorial/controllers/menu_controller.dart';
import 'package:flutterwebtutorial/layouts.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(MenuController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dash',
      theme: ThemeData(
          backgroundColor: Colors.white,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            },
          ),
          primaryColor: Colors.blue),
      home: SiteLayout(),
    );
  }
}
