import 'package:flutter/material.dart';
import 'package:flutter_study/pages/MainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(

        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: MainPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text('리스트 1'),
            onTap: (){},
          ),
          ListTile(
            title: Text('리스트 2'),
            onTap: (){},
          ),
          ListTile(
            title: Text('리스트 3'),
            onTap: (){},
          ),
          ListTile(
            title: Text('리스트 4'),
            onTap: (){},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                    child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/test_image.jpg'),
                          Text("텍스트 1")
                        ]
                    )
                  )
                )
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                    child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/test_image.jpg'),
                          Text("텍스트 2")
                        ]
                    )
                  )
                )
              )
            ]
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "제목 1",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "부제목 1",
                      style: TextStyle(fontSize: 15),
                    )
                  ]
                ),
                Image.asset('assets/images/test_image.jpg', height: 70, fit: BoxFit.fitHeight)
              ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                    children: <Widget>[
                      Text(
                        "제목 2",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "부제목 2",
                        style: TextStyle(fontSize: 15),
                      )
                    ]
                ),
                Image.asset('assets/images/test_image.jpg', height: 70, fit: BoxFit.fitHeight)
              ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                    children: <Widget>[
                      Text(
                        "제목 3",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "부제목 3",
                        style: TextStyle(fontSize: 15),
                      )
                    ]
                ),
                Image.asset('assets/images/test_image.jpg', height: 70, fit: BoxFit.fitHeight)
              ]
            ),
          )
          ],
      ),
    );
  }
}
