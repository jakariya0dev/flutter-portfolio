import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroSection extends StatelessWidget {
  const IntroSection(
      {Key? key, required this.deviceHeight, required this.deviceWidth})
      : super(key: key);

  final String imageUrl =
      'https://images.pexels.com/photos/1462980/pexels-photo-1462980.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
  final double deviceHeight, deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'Hi, I am ',
                style: TextStyle(
                    fontSize: deviceWidth * 0.030, color: Colors.white),
                children: [
                  TextSpan(
                    text: 'Jakariya',
                    style: GoogleFonts.acme(
                        fontSize: deviceWidth * 0.035, color: Colors.white),
                  )
                ],
              ),
            ),
            Text(
              'Full-Stack Software Developer',
              style: TextStyle(
                  fontSize: deviceWidth * 0.020, color: AppColors.headlineLight ),
            ),
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Specialized in',
                    style: TextStyle(fontSize: deviceWidth*0.025, color: Colors.white),
                  ),
                  const SizedBox(width: 20.0, height: 100.0),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(
                      totalRepeatCount: 100000,
                      pause: const Duration(microseconds: 500),
                      animatedTexts: [
                        RotateAnimatedText('Flutter', textStyle: TextStyle(fontSize: deviceWidth*0.025, color: Colors.white)),
                        RotateAnimatedText('Laravel', textStyle: TextStyle(fontSize: deviceWidth*0.025, color: Colors.white)),
                      ],

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        CircleAvatar(
          radius: deviceWidth * 0.12,
            backgroundColor: AppColors.headlineLight,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: deviceWidth * 0.12,
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
        ),
      ],
    );
  }
}
