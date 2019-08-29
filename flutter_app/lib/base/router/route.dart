


import 'package:annotation_route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/base/router/route.internal.dart';

//每次新增都要允许指令
// flutter packages pub run build_runner clean
// flutter packages pub run build_runner build --delete-conflicting-outputs

@ARouteRoot()
class MyRouteOption {
  String urlpattern;
  Map<String, dynamic> query;
  MyRouteOption(this.urlpattern, this.query );
}

class AppRoute {
  static Widget getPage(String urlString, Map<String, dynamic> query) {
    ARouterInternalImpl internal = ARouterInternalImpl();
    ARouterResult routeResult = internal.findPage(ARouteOption(urlString, query), MyRouteOption(urlString, query));
    if(routeResult.state == ARouterResultState.FOUND) {
      return routeResult.widget;
    }
    return Scaffold(   // 这里只是例子，返回的是未匹配路径的控件
      appBar: AppBar(),
      body: Center(
        child: Text('NOT FOUND'),
      ),
    );
  }
}
