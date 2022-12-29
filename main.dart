import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> city = ['Dhaka', 'Gazipur', 'Narsingdi', 'Singapore', 'Delhi', 'Kolkata', 'Narayangonj'];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listview Class'),
        ),
        body: ListView.builder(
          itemCount: city.length,
            itemBuilder: (context, index) {
          return Container(
             height: 50,
            margin: EdgeInsets.all(5),
            color: Colors.amber,
            child: Center(child: Text(city[index])),
          );
        }),
      ),
    );
  }
}
