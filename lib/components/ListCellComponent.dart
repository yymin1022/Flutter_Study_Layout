import 'package:flutter/material.dart';
import 'package:flutter_study/models/NewsModel.dart';

onlyTextCell(String s) {
  return ListTile(
    title: Text(s),
  );
}

columnImageTextCell({NewsModel data, height}){
  return Container(
      child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Column(
              children: <Widget>[
                Image.network(data.images[0]),
                Text("텍스트 1")
              ]
          )
      )
  );
}

