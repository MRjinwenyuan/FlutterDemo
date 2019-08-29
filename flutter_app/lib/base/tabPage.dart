

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('发现')),
      body: new TabWidget(),
    );
  }
}

class TabWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Expanded(
          flex: 2,
          child: new Column(
            children: <Widget>[
              Text("ddd"),
              Text("ddd"),
              TabItemWidget(),
            ],
          ),
        ),
        new Expanded(
          flex: 5,
          child: Container(
            color: Colors.blue,

          ),
        ),
      ],
    );
  }
}


class TabItemWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      height: 50,
      child: Text('demo',textAlign: TextAlign.center,),
    );
  }
}

