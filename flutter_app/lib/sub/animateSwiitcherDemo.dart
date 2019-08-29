
import 'package:annotation_route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/base/router/route.dart';

@ARoute(url: "page://AnimatedPage")
class AnimatedPage extends StatelessWidget {
  AnimatedPage(MyRouteOption option) : super();

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
          AnimatedPaddindDemo(),
        ],
      ),
    );
  }
}

//widget 的替换
class AnimatedSwitcherDemo extends StatefulWidget{
  const AnimatedSwitcherDemo({Key key}):super(key:key);

  @override
  _ClickCounterState createState()=> _ClickCounterState();

}

class _ClickCounterState extends State<AnimatedSwitcherDemo>{
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child,Animation<double> animation){
            return ScaleTransition(child: child,scale: animation,);
          },
          child: Text(
            '$_count',
            key: ValueKey<int>(_count),
            style: Theme.of(context).textTheme.display4,
          ),
        ),
        RaisedButton(
          child: const Text('inrement'),
          onPressed: (){
            setState(() {
              _count += 1;
            });
          },
        ),
      ],
    );
  }

}

//widget自身的改变

class AnimatedPaddindDemo extends StatefulWidget{
  @override
  _AnimatedPaddindDemo createState() {
    // TODO: implement createState
    return _AnimatedPaddindDemo();
  }
}

class _AnimatedPaddindDemo extends State<AnimatedPaddindDemo>{
  double paddingValue;

  void initState(){
    super.initState();
    paddingValue = 10.0;
  }

  _changePadding(){
    if (paddingValue == 10.0){
      setState(() {
        paddingValue = 100.0;
      });
    }else{
      setState(() {
        paddingValue = 10.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        AnimatedPadding(
          padding: EdgeInsets.symmetric(
            horizontal: paddingValue,vertical: paddingValue,
          ),
            duration:  const Duration(milliseconds: 100),
          curve: Curves.easeOut,
          child: Container(
            height: 200.0,
            color: Colors.blueAccent,
          ),
        ),
        RaisedButton(
          onPressed: _changePadding,
          child: Text('text padding'),
        )
      ],
    );
  }
}