import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import './box.dart';
import '../layout/utils.dart';
import '../layout/inner_box.dart';

const aboutUsText = """Burning Torch is a an Mobile App and Web Development
Start Up that that provides superior App as well as Web
development services. The Web and App solutions
developed by us will take your business to new heights.
Moreover, understanding your business and customers
desires, we design and deploy apps and websites that you
may love to see and make the most use of that.\n\n
Our main aim is to offer business solutions that
encourage entrepreneurs in the internet world.
Expertise is always ready to support and serve each
client with top-notch App and web Development
technology and seek success for the client's project
plans.""";

class Layout extends StatefulWidget {
  final BoxConstraints constraints;
  final PageController pageController;

  const Layout({
    super.key,
    required this.constraints,
    required this.pageController,
  });

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends State<Layout> {
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
    var innerWidth = calculateWidh(
      constraints: widget.constraints,
      factor: 80,
    );
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: widget.pageController,
      child: Column(
        children: [
          Box(
            size: 0.1,
            constraints: widget.constraints,
            child: const Text('Top'),
          ),
          Box(
            size: 0.8,
            constraints: widget.constraints,
            backgroundColor: const Color(0xFF806ccc),
            child: SizedBox(
              child: VideoPlayer(videoController),
            ),
          ),
          Box(
            size: 0.7,
            constraints: widget.constraints,
            child: InnerBox(
              constraints: widget.constraints,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: innerWidth,
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: const EdgeInsets.all(100),
                        child: const ListTile(
                          title: Text(
                            'About Us',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            aboutUsText,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Box(
            size: 1.1,
            constraints: widget.constraints,
            child: const Text('Services'),
          ),
          Box(
            size: 0.9,
            constraints: widget.constraints,
            child: const Text('Why Choose Us'),
          ),
          Box(
            size: 0.9,
            constraints: widget.constraints,
            child: const Text('Portafolio'),
          ),
          Box(
            size: 0.5,
            constraints: widget.constraints,
            child: const Text('Footer'),
          ),
        ],
      ),
    );
  }
}
