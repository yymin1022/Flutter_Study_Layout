import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter_study/components/ListCellComponent.dart';
import 'package:flutter_study/components/TabAppBar.dart';

import '../Dummy.dart';

class FeaturedPage extends StatefulWidget {
  @override
  _FeaturedPageState createState() => _FeaturedPageState();
}

class _FeaturedPageState extends State<FeaturedPage> with SingleTickerProviderStateMixin {
  var controller;


  var choices = ["인기", "자동차", "게임"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        controller:  controller,
        choices: choices,
        onTabTapped: onTabTapped,
      ),
      body: SingleChildScrollView(
        child: buildDummyContent()
      ),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
        controller: controller,
        onTap: onTabTapped, // new
        tabs: choices.map((String choice) {
          return Tab(
            text: "# $choice",
          );
        }).toList(),
      );
  }

  void onTabTapped(int value) {

  }

  buildDummyContent() {
   return Column(
      children: <Widget>[
        onlyTextCell("국도닭 꼬꼬 드디어.gif"),
        onlyTextCell("한국의 메뚜기를 찾아서"),
        onlyTextCell("무기제작) 윈스턴 무기 제작기"),
        buildRowDiv2(
          columnImageTextCell(
              data: dummyNews()[0]
          ),
          columnImageTextCell(
              data: dummyNews()[2]
          ),
        ),
        refImageTextCell(data: dummyNews()[0]),
        refImageTextCell(data: dummyNews()[1]),
        refImageTextCell(data: dummyNews()[2]),
        refImageTextCell(data: dummyNews()[3]),
        refImageTextCell(data: dummyNews()[4]),
        refImageTextCell(data: dummyNews()[5]),
      ],
    );
  }

  buildRowDiv2(widget1, widget2) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
              child: widget1
          ),
          Expanded(
              child: widget2
          )
        ]
    );
  }
}
