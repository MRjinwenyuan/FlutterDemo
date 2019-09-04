import 'dart:ffi';

import 'package:flutter_app/base/router/route.dart';
import 'package:flutter_app/tools/jcolor.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FindPage extends StatelessWidget {

  //要跳转的page
   List ary = [
     {'name':'push','page':'page://PushPage'},
     {'name':'frame动画','page':'page://AnimatedPage'},
     {'name':'视频播放','page':'page://VideoPage'},
     {'name':'音频','page':'page://AudioPage'},
     {'name':'动画','page':'pagename'},
     {'name':'动画','page':'pagename'},
     {'name':'动画','page':'pagename'},
     {'name':'动画','page':'pagename'},
     {'name':'动画','page':'pagename'},
     {'name':'动画','page':'pagename'},
     {'name':'动画','page':'pagename'},
     {'name':'动画','page':'pagename'},
     {'name':'动画','page':'pagename'},
     {'name':'动画','page':'pagename'},
     {'name':'动画','page':'pagename'},
     {'name':'动画','page':'pagename'},
   ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('发现')),
      body: new StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: ary.length,
        itemBuilder: (BuildContext context, int index) => new GestureDetector(
          onTap: (){

            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context){
                return AppRoute.getPage(ary[index]["page"], {});
              }
            ));

          },
          child: new Container(
            color: randomColor(),
            child: new Center(
              child: new Text(
                ary[index]["name"],
                style: TextStyle(fontSize: 20),

              ),
            ),
          ),
        ),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}

