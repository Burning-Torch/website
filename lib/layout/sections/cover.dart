import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

import '../box.dart';

class Cover extends StatefulWidget {
  final BoxConstraints constraints;

  const Cover({
    super.key,
    required this.constraints,
  });

  @override
  State<StatefulWidget> createState() {
    return CoverState();
  }
}

class CoverState extends State<Cover> {
  late VideoPlayerController videoController;

  @override
  void initState() {
    videoController = VideoPlayerController.asset(
        'assets/videos/expenses-presentation-video.mp4');
    videoController.addListener(() {});
    videoController.initialize().then((_) => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    videoController.play();
    return Box(
      size: 0.8,
      constraints: widget.constraints,
      backgroundColor: const Color(0xFF806ccc),
      child: SizedBox(
        child: VideoPlayer(videoController),
      ),
    );
  }
}
