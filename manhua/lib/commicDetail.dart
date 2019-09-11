import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommicDetail extends StatelessWidget {
  List data;

  CommicDetail(this.data):super();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("详情"),
      ),
      body: new ListView.builder(
        itemCount: data==null ? 0 : data.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(data[index]);
        },
      ),
    );
  }
}


//class CommicDetail extends StatefulWidget {
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return new _commicDetail();
//  }
//}

//class _commicDetail extends State<CommicDetail> {
//  List data;
//
//  @override
//  Future initState() {
//    // TODO: implement initState
//    super.initState();
//    //拿到目录
//    Future<String> loadString = DefaultAssetBundle.of(context).loadString("assets/json/目录.txt");
//    loadString.then((String value){
//       json.decode(value);
//       print(json.decode(value)["comic"]);
//    });
//    Future<String> loadString =
//        DefaultAssetBundle.of(context).loadString("assets/json/女佣初希.json");
//    loadString.then((String value) {
//      json.decode(value);
//      setState(() {
//        data = json.decode(value)["imgs"][0];
//      });
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Scaffold(
//      appBar: new AppBar(
//        title: const Text("详情"),
//      ),
//      body: new ListView.builder(
//        itemCount: data==null ? 0 : data.length,
//        scrollDirection: Axis.vertical,
//        itemBuilder: (BuildContext context, int index) {
//          return Image.network(data[index]);
//        },
//      ),
//    );
//  }
//}
