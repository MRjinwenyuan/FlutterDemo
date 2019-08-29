import 'package:annotation_route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/base/router/route.dart';

@ARoute(url: "page://PushPage")
class PushPage extends StatelessWidget {
  PushPage(MyRouteOption option) : super();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('push'),
        backgroundColor: Colors.brown,
      ),
      body: new ListView(
        children: <Widget>[
          new topWidget(),
          new Text('demo'),
          new Text('demo'),
          new Text('demo'),
          new Text('demo'),
          new Text('demo'),
          new Text('demo'),
        ],
      ),
    );
  }
}

class topWidget extends StatefulWidget{
  topWidget():super();
  
  @override
  _TopWidgetState createState() => new _TopWidgetState();
  
}

//setState 只能写在子类重  但是可以调用外部函数 或者父类管理
class _TopWidgetState extends State<topWidget> {

  double height = 100;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: (){
        setState(() {
          if (height == 100){
            height = 300;
          }else{
            height = 100;
          }
        });
      },
      child: new Container(
        color: Colors.deepPurple,
        height: height,
        child: new Text("dende"),
      ),
    );
  }
}