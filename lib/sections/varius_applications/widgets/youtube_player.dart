import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

String getYouTubeVideoId(String url) {
  final Uri uri = Uri.parse(url);
  if (uri.host == 'youtu.be') {
    return uri.pathSegments.first;
  } else if (uri.host == 'www.youtube.com' || uri.host == 'youtube.com') {
    return uri.queryParameters['v'] ?? '';
  }
  return '';
}

class YouTubeVideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

  YouTubeVideoPlayerWidget({required this.videoUrl});

  @override
  _YouTubeVideoPlayerWidgetState createState() =>
      _YouTubeVideoPlayerWidgetState();
}

class _YouTubeVideoPlayerWidgetState extends State<YouTubeVideoPlayerWidget> {
  late YoutubePlayerController _controller;
  late String _videoId;

  @override
  void initState() {
    super.initState();
    try {
      _videoId = getYouTubeVideoId(widget.videoUrl);
      _controller = YoutubePlayerController.fromVideoId(
        videoId: _videoId,
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      );
    } catch (e) {
      debugPrint('Error in YouTubeVideoPlayerWidget: $e');
    }
  }

  @override
  void dispose() async {
    try{
      await _controller.close();
    } catch (e) {
      debugPrint('Error in YouTubeVideoPlayerWidget: $e');
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 250.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Container(
          child: YoutubePlayer(
            controller: _controller,
            aspectRatio: 16 / 9,
          ),
        ),
      ),
    );
  }
}
