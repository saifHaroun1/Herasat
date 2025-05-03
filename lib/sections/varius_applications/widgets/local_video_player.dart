import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LocalVideoPlayerWidget extends StatefulWidget {
  final String videoPath;

  const LocalVideoPlayerWidget({Key? key, required this.videoPath})
      : super(key: key);

  @override
  _LocalVideoPlayerWidgetState createState() => _LocalVideoPlayerWidgetState();
}

class _LocalVideoPlayerWidgetState extends State<LocalVideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        }); // Update the UI when the video is loaded
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? Container(
            color: Colors.transparent,
            width: double.infinity,
            height: double.infinity,
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            ),
          )
        : Center(child: CircularProgressIndicator());
  }
}
