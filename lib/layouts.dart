import 'package:flutter/material.dart';
import 'package:flutterwebtutorial/helpers/responsiveness.dart';
import 'package:flutterwebtutorial/widgets/Large_Screen.dart';
import 'package:flutterwebtutorial/widgets/small_screen.dart';
import 'package:flutterwebtutorial/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
