import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_application/newPage.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Test Uygulaması"),
      ),
      body: buildBody(context)
    );
  }

  void alertDialogGetir(BuildContext context)
  {
    var alert = AlertDialog(
      title: Text("Popup"),
      content: Text("Popup açıldı."),
      actions: <Widget>[
        MaterialButton(
          child: Text("Tıkla"),
          onPressed: ()
          {},
          color: Colors.black12,
        )
      ],
    );
    showDialog(context: context,builder:(BuildContext context) => alert);
  }

  Widget buildBody(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        children : <Widget>[
          RaisedButton(
            child: Text("Popup"),
            onPressed: () {
              alertDialogGetir(context);
            },
          ),
          RaisedButton(
            child: Text("Yeni Sayfa Aç"),
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => newPage()));
            },
          ),
        ],
      ),
    );
  }

}
