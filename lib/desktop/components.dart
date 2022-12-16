import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app_colors.dart';
import 'package:flutter_portfolio/cons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavLink extends StatefulWidget {
  const NavLink({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final IconData icon;

  @override
  State<NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<NavLink> {
  bool isMouseHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isMouseHovered = true;
          print(isMouseHovered);
        });
      },
      onExit: (event) {
        setState(() {
          isMouseHovered = false;
          print(isMouseHovered);
        });
      },
      child: Container(
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
          margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 32),
          decoration: BoxDecoration(
              color: isMouseHovered ? AppColors.headlinePrimary: null,
              border: const Border(bottom: BorderSide(color: Colors.white))),
          child: Row(
            children: [
              FaIcon(widget.icon, size: 20, color: isMouseHovered ? AppColors.scaffoledColor : AppColors.headlinePrimary),
              const SizedBox(width: 24),
              Text(widget.title, style: TextStyle(color: isMouseHovered ? AppColors.scaffoledColor : AppColors.headlinePrimary),),
            ],
          )),
    );
  }
}
class LightDivider extends StatelessWidget {
  const LightDivider({Key? key, required this.width}) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: const Divider(
        color: AppColors.headlineLight,
        height: 10, thickness: 5,),
    );
  }
}


class AboutSectionTile extends StatelessWidget {
  const AboutSectionTile({Key? key, required this.title, required this.description}) : super(key: key);

  final String title, description;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Text(title, style: const TextStyle(color: AppColors.headlinePrimary, fontSize: Cons.normalFontSize, fontWeight: FontWeight.bold),),
          const SizedBox(width: 10),
          Text(description, style: const TextStyle(color: AppColors.headlinePrimary, fontSize: Cons.normalFontSize),)
        ]
    );
  }
}

class ParagraphTitle extends StatelessWidget {
  const ParagraphTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(color: AppColors.paragraphTileColor, fontSize: 18, fontWeight: FontWeight.w500),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({Key? key, required this.title, required this.subTile1, required this.subTile2, required this.date1, required this.date2, required this.descriptions1, required this.description2}) : super(key: key);

  final String title, subTile1, subTile2, date1, date2, descriptions1, description2;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.scaffoledColor,
      elevation: 4,
      shadowColor: AppColors.textPrimary,
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            ParagraphTitle(title: title),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.only(left: 10),
                    decoration: const BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: AppColors.textPrimary
                            )
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  [
                            const Icon(Icons.calendar_month, color: AppColors.textPrimary),
                            const SizedBox(width: 8),
                            Text(date1, style: const TextStyle(color: AppColors.textPrimary),)
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(subTile1, style: const TextStyle(color: AppColors.textPrimary),),
                        const SizedBox(height: 8),
                        Text(descriptions1, textAlign: TextAlign.justify, style: const TextStyle(color: AppColors.textPrimary),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 32),
                Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 16),
                      padding: const EdgeInsets.only(left: 10),
                      decoration: const BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: AppColors.textPrimary
                              )
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(Icons.calendar_month, color: AppColors.textPrimary),
                              const SizedBox(width: 8),
                              Text(date2, style: const TextStyle(color: AppColors.textPrimary),)
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(subTile2, style: const TextStyle(color: AppColors.textPrimary),),
                          const SizedBox(height: 8),
                          Text(description2, textAlign: TextAlign.justify, style: const TextStyle(color: AppColors.textPrimary),),
                        ],
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}


