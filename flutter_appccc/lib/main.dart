import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Welcome to Flutter'),
          ),
          body: SingleChildScrollView(
            child: Container(
              width: 375.0,
              height: 667.0,
              color: Color(0xffe91e63),
              child: ColumDefault(),
            ),
          )
          ),
    );
  }
}

class ColumDefault extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Color(0xfffce4ec),
          width: 90,
          height: 50,
        ),
        Container(
          color: Color(0xfffce4ec),
          width: 90,
          height: 50,
        ),
        Container(
          color: Color(0xfffce4ec),
          width: 90,
          height: 50,
        ),
        Container(
          color: Color(0xfffce4ec),
          width: 90,
          height: 50,
        ),
        Container(
          color: Color(0xfffce4ec),
          width: 90,
          height: 50,
        ),
        Text('ddd'),
        Text('ddd'),
        Text('ddd'),
        Text('ddd'),
      ],
    );
  }
}


void test(){
  Image image = Image.network('ddd');

}

