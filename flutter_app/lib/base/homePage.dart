import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Page();
  }
}

class Page extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(context),
      body: new ListView(
        children: <Widget>[
          MyHomePage(),
          SpaceWidget(10),
          TabItemsWidget(),
          SpaceWidget(10),
          ShopsWidget(),
        ],
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(title: const Text('首页'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage() : super();

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 200,
      //本身没有高度 依靠外面容器高度
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return new Image.network(
              "http://pic51.nipic.com/file/20141025/8649940_220505558734_2.jpg",
              fit: BoxFit.fill,
            );
          }
          if (index == 1) {
            return new Image.network(
              "http://pic30.nipic.com/20130619/9885883_210838271000_2.jpg",
              fit: BoxFit.fill,
            );
          }
          return new Image.network(
            "http://pic16.nipic.com/20111006/6239936_092702973000_2.jpg",
            fit: BoxFit.fill,
          );
        },
        autoplay: true,
        itemCount: 3,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }
}

class SpaceWidget extends StatelessWidget {
  final double height;

  SpaceWidget(this.height) : super();

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: height,
    );
  }
}

class TabItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      width: 100.0,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: new Container(
        child: Text("demo"),
        alignment: Alignment.center,
      ),
    );
  }
}

class ShopsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      children: <Widget>[
        new Container(
          width: 170,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.yellow,
          ),
        ),
        new Container(
          width: 170,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        new Container(
          width: 170,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.red,
          ),
        ),
        new Container(
          width: 170,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.black45,
          ),
        ),
        new Container(
          width: 170,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.yellow,
          ),
        ),
        new Container(
          width: 170,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        new Container(
          width: 170,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.red,
          ),
        ),
        new Container(
          width: 170,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}
