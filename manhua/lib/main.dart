

import 'package:flutter/material.dart';

import 'commicList.dart';

void main() {
  return runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CommicList(),
      debugShowCheckedModeBanner: false,
    );

  }
}
