import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<String> list = [
      "Uno",
      "dos",
      "tres",
      "cuatro",
      "cinco",
      "seis",
      "siete",
      "ocho",
    ];
    final List<int> colorCodes = <int>[
      100,
      200,
      300,
      400,
      500,
      600,
      700,
      900,
    ];

    final TextStyle style = TextStyle(fontSize: 30);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: ListView.builder(
          padding: EdgeInsets.all(100),
          itemCount: list.length,
          itemBuilder: (BuildContext context, index) {
            return Container(
              width: 100,
              height: 200,
              color: Colors.blue[colorCodes[index]],
              child: Center(
                child: Text('${list[index]}', style: style),
              ),
            );
          },
        ),
      ),
    );
  }
}
