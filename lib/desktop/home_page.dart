import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app_colors.dart';
import 'package:flutter_portfolio/desktop/intro_section.dart';
import 'package:flutter_portfolio/desktop/service_section.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'about_section.dart';
import 'components.dart';

class WebHomePage extends StatefulWidget {
  const WebHomePage({Key? key}) : super(key: key);

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.scaffoledColor,
      body: SizedBox(
        height: deviceHeight,
        child: Row(
          children: [
            Container(
              // color: Colors.blue,
              height: deviceHeight,
              width: deviceWidth * 0.2,
              constraints: const BoxConstraints( minWidth: 220),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Jakariya', style: GoogleFonts.pacifico(fontSize: 32, color: AppColors.headlineLight)),
                  const SizedBox(height: 32),
                  const NavLink(title: 'Homepage', icon: FontAwesomeIcons.houseUser),
                  const NavLink(title: 'About', icon: FontAwesomeIcons.addressCard),
                  const NavLink(title: 'Services', icon: FontAwesomeIcons.servicestack),
                  const NavLink(title: 'Portfolio', icon: FontAwesomeIcons.code),
                  const NavLink(title: 'Contact', icon: FontAwesomeIcons.message),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(50),
              height: deviceHeight,
              width: deviceWidth * 0.8,
              // constraints: const BoxConstraints(minWidth: 780),
              child: PageView(
                children: const [
                  // IntroSection(deviceHeight: deviceHeight, deviceWidth: deviceWidth,)
                  // AboutSection(),
                  ServiceSection()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
