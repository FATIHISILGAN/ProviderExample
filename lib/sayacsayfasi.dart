import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement2/counter.dart';

class SayacSayfasi extends StatefulWidget {
  @override
  _SayacSayfasiState createState() => _SayacSayfasiState();
}

class _SayacSayfasiState extends State<SayacSayfasi> {
  @override
  Widget build(BuildContext context) {
    var mySayac = Provider.of<Counter>(context);

    return Scaffold(
      body: Center(
        child: Text(mySayac.counter.toString()),
      ),
      floatingActionButton: MyFloatingActionButtons(),
    );
}
}

class MyFloatingActionButtons extends StatefulWidget {
  @override
  _MyFloatingActionButtonsState createState() => _MyFloatingActionButtonsState();
}

class _MyFloatingActionButtonsState extends State<MyFloatingActionButtons> {


  @override
  Widget build(BuildContext context) {
    var mySayac = Provider.of<Counter>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: "1",
          child: Icon(Icons.add),
          onPressed: mySayac.artirma,

        ),
        FloatingActionButton(
          heroTag: "2",
          child: Icon(Icons.remove),
          onPressed: mySayac.azaltma,

        ),
      ],
    );
  }
}



