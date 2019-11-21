import 'package:flutter/material.dart';
import 'package:flutter_study/models/NewsModel.dart';

onlyTextCell(String s) {
  return ListTile(
    title: Text(s),
  );
}

columnImageTextCell({NewsModel data, height = 140.0}){
  return Container(
      child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: new NetworkImage(
                                data.images[0])
                        )
                    ),
                    height: height,
                ),
                Text(data.title, maxLines: 2,overflow: TextOverflow.ellipsis,)
              ]
          )
      )
  );
}

refImageTextCell({NewsModel data,}){
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 10),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    data.ref,
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  )
                ]
            ),
          ),
          Expanded(
            flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left : 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new NetworkImage(
                              data.images[0])
                      )
                  ),
                  height: 70,
                ),
              ),
          )
        ]
    ),
  );
}
