import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app_colors.dart';
import 'package:flutter_portfolio/cons.dart';
import 'package:flutter_portfolio/desktop/components.dart';
import 'package:flutter_portfolio/components/common_components.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  List skills = [
    'Firebase',
    'Node',
    'Laravel',
    'AWS',
  ];

  @override
  Widget build(BuildContext context) {

    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionHeading(titleText: 'About Me'),
              const LightDivider(width: 100.0),
              const SizedBox(height: 16),
              const SectionSubHeading(titleText: 'I Am Professional Laravel And Flutter Developer'),
              const SizedBox(height: 20),
              const SectionDescription(titleText: Cons.aboutDescription),
              const SizedBox(height: 10),
              const AboutSectionTile(title: 'Country:', description: 'Bangladesh'),
              const AboutSectionTile(title: 'City:', description: 'Rangpur'),
              const AboutSectionTile(title: 'Freelance:', description: 'Available'),
              const SizedBox(height: 10),
              const ParagraphTitle(title: 'SKILLS'),
              Wrap(
                children: List.generate(
                  skills.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: OutlinedButton(
                      style: const ButtonStyle(
                        side: MaterialStatePropertyAll(BorderSide(
                          color: AppColors.headlinePrimary
                        )),

                      ),
                      onPressed: null,
                      child: Text(skills[index], style: const TextStyle(color: AppColors.textPrimary),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 32),
        Flexible(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ExperienceCard(
                  title: 'Experience',
                  date1: '2013-2015',
                  date2: '2015-18',
                  subTile1: 'App Developer',
                  subTile2: 'Web Developer',
                  descriptions1: 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam, voluptatibus.',
                  description2: 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam, voluptatibus.'
              ),
              SizedBox(height: 32),
              ExperienceCard(
                title: 'Education',
                date1: '2013-2015',
                date2: '2015-18',
                subTile1: 'Master of Science',
                subTile2: 'Bachelor of Science',
                descriptions1: 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam, voluptatibus.',
                description2: 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam, voluptatibus.'
              )
            ],
          ),
        )
      ],
    );
  }
}
