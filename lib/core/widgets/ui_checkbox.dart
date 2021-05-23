import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/theme.dart';

class UICheckbox extends StatelessWidget {

  final bool isChecked;
  final Function(bool?) onChange;
  UICheckbox({
    Key? key,
    this.isChecked = false,
    required this.onChange
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
        value: isChecked, 
        checkColor: kWhite,
        activeColor: kPrimaryColor,
        onChanged: onChange
      ),
    );
  }
}