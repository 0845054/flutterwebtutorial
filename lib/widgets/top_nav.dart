import 'package:flutter/material.dart';
import 'package:flutterwebtutorial/constants/style.dart';
import 'package:flutterwebtutorial/helpers/responsiveness.dart';
import 'package:flutterwebtutorial/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: Icon(Icons.menu)),
      elevation: 0,
      title: Row(
        children: [
          Visibility(
            visible: !ResponsiveWidget.isSmallScreen(context),
            child: CustomText(
              text: "Dash",
              color: Constanst.lightGrey,
              size: 20,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            color: Constanst.dark.withOpacity(0.7),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
                color: Constanst.dark.withOpacity(0.7),
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Constanst.active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Constanst.light, width: 2),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: Constanst.lightGrey,
          ),
          SizedBox(
            width: 16,
          ),
          CustomText(
            text: "Santos Enoque",
            color: Constanst.lightGrey,
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: CircleAvatar(
              backgroundColor: Constanst.light,
              child: Icon(
                Icons.person_outline,
                color: Constanst.dark,
              ),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: Constanst.dark),
      backgroundColor: Colors.transparent,
    );
