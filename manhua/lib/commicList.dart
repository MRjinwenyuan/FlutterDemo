import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:manhua/commicRound.dart';

//所有漫画列表

class CommicList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _commicList();
  }
}

Future<String> loadAsset() async {
  return await rootBundle.loadString("assets/json/目录.txt");
}

class _commicList extends State<CommicList> {
  List data;

  @override
  Future initState(){
    // TODO: implement initState
    super.initState();

    //拿到目录
//    Future<String> loadString =
//        DefaultAssetBundle.of(context).loadString("assets/json/目录.txt");
    
    Future<String> loadString = loadAsset();
    loadString.then((String value) {
      setState(() {
        data = json.decode(value)["comic"];
      });
    });
    
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      appBar: new AppBar(
        title: Text(data == null ? "列表" : data.length.toString()),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            tooltip: 'refresh',
            onPressed: (){

              Future<String> loadString = loadAsset();
              loadString.then((String value) {
                setState(() {
                  data = json.decode(value)["comic"];
                });
              });

            },
          ),
        ],
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return new GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return CommicRound(data[index]);
              }));
            },
            child: new Container(
              color: Colors.brown,
              height: 50,
              child: Center(
                child: new Text(
                  data[index],
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
