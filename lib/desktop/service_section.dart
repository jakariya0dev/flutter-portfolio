import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app_colors.dart';
import 'package:flutter_portfolio/components/common_components.dart';
import 'package:flutter_portfolio/desktop/components.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeading(titleText: 'My Services'),
        const LightDivider(width: 100.0),
        const SizedBox(height: 50),
        Row(
          children: [
            Flexible(
              child: Card(
                shadowColor: AppColors.cardElevationColor,
                color: AppColors.scaffoledColor,
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      const FaIcon(FontAwesomeIcons.cubes, color: AppColors.headlinePrimary,),
                      const SizedBox(height: 16,),
                      const ParagraphTitle(title: 'Web Design'),
                      const SizedBox(height: 16),
                      const Text('Font Awesome is the Internet\'s icon library and toolkit, used by millions of designers, developers, and content creators. Start for Free Get More with Pro.', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                      const SizedBox(height: 16),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                          SizedBox(width: 5),
                          Text('Cross browser support', style: TextStyle(color: AppColors.paragraphTileColor),)
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                          SizedBox(width: 5),
                          Text('Fully responsive website', style: TextStyle(color: AppColors.paragraphTileColor),)
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                          SizedBox(width: 5),
                          Text('Professional quality coding', style: TextStyle(color: AppColors.paragraphTileColor),)
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                          SizedBox(width: 5),
                          Text('High performance output', style: TextStyle(color: AppColors.paragraphTileColor),)
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                          SizedBox(width: 5),
                          Text('Pixel perfect design', style: TextStyle(color: AppColors.paragraphTileColor),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Flexible(
                child: Card(
                  shadowColor: AppColors.cardElevationColor,
              elevation: 8,
                  color: AppColors.scaffoledColor,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    const FaIcon(FontAwesomeIcons.cubes, color: AppColors.headlinePrimary,),
                    const SizedBox(height: 16,),
                    const ParagraphTitle(title: 'Web Design'),
                    const SizedBox(height: 16),
                    const Text('Font Awesome is the Internet\'s icon library and toolkit, used by millions of designers, developers, and content creators. Start for Free Get More with Pro.', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                    const SizedBox(height: 16),
                    Row(
                      children: const [
                        Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                        SizedBox(width: 5),
                        Text('Cross browser support', style: TextStyle(color: AppColors.paragraphTileColor),)
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: const [
                        Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                        SizedBox(width: 5),
                        Text('Fully responsive website', style: TextStyle(color: AppColors.paragraphTileColor),)
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: const [
                        Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                        SizedBox(width: 5),
                        Text('Professional quality coding', style: TextStyle(color: AppColors.paragraphTileColor),)
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: const [
                        Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                        SizedBox(width: 5),
                        Text('High performance output', style: TextStyle(color: AppColors.paragraphTileColor),)
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: const [
                        Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                        SizedBox(width: 5),
                        Text('Pixel perfect design', style: TextStyle(color: AppColors.paragraphTileColor),)
                      ],
                    ),
                  ],
                ),
              ),
            )),
            const SizedBox(width: 16),
            Flexible(
              child: Card(
                shadowColor: AppColors.cardElevationColor,
                elevation: 8,
                color: AppColors.scaffoledColor,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      const FaIcon(FontAwesomeIcons.cubes, color: AppColors.headlinePrimary,),
                      const SizedBox(height: 16,),
                      const ParagraphTitle(title: 'Web Design'),
                      const SizedBox(height: 16),
                      const Text('Font Awesome is the Internet\'s icon library and toolkit, used by millions of designers, developers, and content creators. Start for Free Get More with Pro.', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                      const SizedBox(height: 16),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                          SizedBox(width: 5),
                          Text('Cross browser support', style: TextStyle(color: AppColors.paragraphTileColor),)
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                          SizedBox(width: 5),
                          Text('Fully responsive website', style: TextStyle(color: AppColors.paragraphTileColor),)
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                          SizedBox(width: 5),
                          Text('Professional quality coding', style: TextStyle(color: AppColors.paragraphTileColor),)
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                          SizedBox(width: 5),
                          Text('High performance output', style: TextStyle(color: AppColors.paragraphTileColor),)
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: AppColors.paragraphTileColor),
                          SizedBox(width: 5),
                          Text('Pixel perfect design', style: TextStyle(color: AppColors.paragraphTileColor),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
