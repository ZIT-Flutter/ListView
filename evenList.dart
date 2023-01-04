import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> city = ['Dhaka', 'Gazipur'];

  @override
  Widget build(BuildContext context) {
    List<int> myList = getEvenList(100);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My List View'),
        ),
        body: ListView.builder(
            itemCount: myList.length,
            itemBuilder: (context, index) {
              return Container(
                margin:
                    EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0),
                padding: EdgeInsets.all(010),
                color: Colors.amber,
                // padding: EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    (myList[index]).toString(),
                  ),
                ),
              );
            }),
      ),
    );
  }

  List<int> getEvenList(int limit) {
    List<int> myList = [];

    for (int i = 1; i <= limit; i++) {
      if (i % 2 == 0) {
        myList.add(i);
      }
    }

    return myList;
  }
}
