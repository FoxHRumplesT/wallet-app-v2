import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/theme.dart';

class UIProgressBar extends StatelessWidget {

  final double width;
  final double height;
  final double progressPercentage;

  const UIProgressBar({
    Key? key,
    required this.width,
    required this.height,
    required this.progressPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: kNeutralN50,
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: progressPercentage / 100,
        child: Container(
          color: kPrimaryColor,
        ),
      ),
    );
  }
}