import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement2/sayacsayfasi.dart';
import 'package:statemanagement2/counter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Programa git"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ChangeNotifierProvider<Counter>(
                      create: (_) => Counter(0),
                      child: SayacSayfasi(),
                    ))
            );
          },
        ),
      ),
    );
  }
}
