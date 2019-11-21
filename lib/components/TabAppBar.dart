import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget with PreferredSizeWidget {
  var controller;

  var onTabTapped;

  List<String> choices;

  TopAppBar({this.controller, this.onTabTapped, this.choices});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: TabBar(
          labelColor: Colors.black,
          controller: controller,
          onTap: onTabTapped, // new
          tabs: choices.map((String choice) {
            return Tab(
              text: "# $choice",

            );
          }).toList(),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: new BubbleTabIndicator(
            indicatorHeight: 40.0,
            indicatorColor: Colors.blueAccent,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,

          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
