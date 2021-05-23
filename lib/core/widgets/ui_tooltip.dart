import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/painters/triangle_painter.dart';
import 'package:wallet_app_v2/core/theme.dart';

class UITooltip extends StatelessWidget {

  final String text;

  const UITooltip({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(6)
            ),
            child: Text(text, style: kD1.copyWith(color: kWhite)),
          ),
          CustomPaint(
            painter: TrianglePainter(
              color: kPrimaryColor
            ),
            child: Container(
              width: 20,
              height: 10,
            ),
          )
        ],
      ),
    );
  }
}