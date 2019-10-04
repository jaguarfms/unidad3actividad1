import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() => MyButtonState();
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> strings = ["Estoy",'Aprendiendo', 'a', 'Programar', "en","FLUTTER!"];
  String displayedString = "HOLA PROFESOR!";

  void onPressOfButton() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 5 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(displayedString, style: TextStyle(fontSize: 50.0)),
              Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                child: Text(
                  "Press me",
                  style: TextStyle(color: Colors.red),
                ),
                color: Colors.amberAccent,
                onPressed: onPressOfButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}