

import 'package:annotation_route/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/base/router/route.dart';
import 'package:video_player/video_player.dart';

//未成功播放  不确定是不是网络问题

@ARoute(url: "page://VideoPage")
class VideoPage extends StatefulWidget{
  VideoPage(MyRouteOption option) : super();

  @override
  _VideoState createState() {
    // TODO: implement createState
    return _VideoState();
  }

}

class _VideoState extends State<VideoPage>{
  VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(
      'https://media.w3.org/2010/05/sintel/trailer.mp4'
    )..initialize().then((_){
      setState(() {

      });
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('video'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: _controller.value.initialized ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ): Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _controller.value.isPlaying ? _controller.pause():_controller.play();
          });
        },
        child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
}
