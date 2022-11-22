import 'package:flutter/material.dart';

import '../inner_box.dart';
import '../box.dart';
import '../../layout/utils.dart';
import '../../utils/fonts.dart';

const aboutUsText =
    """Burning Torch is a an Mobile App and Web Development Start Up that provides superior Apps. The Web and App solutions developed by us will take your business to new heights. Moreover, understanding your business and customers desires, we design and deploy apps and websites that you may love to see and make the most use of that.\n\n Our main aim is to offer business solutions that encourage entrepreneurs in the internet world. Expertise is always ready to support and serve each client with top-notch App and web Development technology and seek success for the client's project plans.""";

class AboutUs extends StatelessWidget {
  final BoxConstraints constraints;

  const AboutUs({
    super.key,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var innerWidth = calculateWidh(
      constraints: constraints,
      factor: 80,
    );
    return Box(
      size: 0.7,
      constraints: constraints,
      child: InnerBox(
        constraints: constraints,
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
                  child: ListTile(
                    title: Text(
                      'About Us',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: getFontSizeBig(width),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      aboutUsText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: getFontSize(width),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
