import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manhua/commicDetail.dart';

//所有漫画列表

class CommicRound extends StatefulWidget {
  String title;

  CommicRound(this.title):super();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _commicRound(title);
  }
}

class _commicRound extends State<CommicRound> {
  String title;

  _commicRound(this.title):super();

  List data;

  @override
  Future initState() {
    // TODO: implement initState
    super.initState();
    Future<String> loadString =
    DefaultAssetBundle.of(context).loadString("assets/json/" + title);
    loadString.then((String value) {
      setState(() {
        data = json.decode(value)["imgs"];
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("列表"),
      ),
      body: new ListView.builder(
        itemCount: data==null ? 0 : data.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return new GestureDetector(
            onTap: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return CommicDetail(data[index]);
              }));
            },
            child: new Container(
              color: Colors.green,
              height: 50,
              child: Center(
                child: new Text(
                  "第" + index.toString() + "回",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
