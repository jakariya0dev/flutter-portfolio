import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app_colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({Key? key, required this.titleText}) : super(key: key);

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Text(titleText, style: const TextStyle(color: AppColors.headlineLight, fontSize: 28),);
  }
}

class SectionSubHeading extends StatelessWidget {
  const SectionSubHeading({Key? key, required this.titleText}) : super(key: key);

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Text(titleText, style: const TextStyle(color: AppColors.headlinePrimary, fontSize: 20, fontWeight: FontWeight.w500));
  }
}

class SectionDescription extends StatelessWidget {
  const SectionDescription({Key? key, required this.titleText}) : super(key: key);

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Text(titleText, textAlign: TextAlign.justify, style: const TextStyle(fontWeight: FontWeight.normal, color: AppColors.headlinePrimary),);
  }
}
