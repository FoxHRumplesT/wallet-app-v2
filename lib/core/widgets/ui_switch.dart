import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/theme.dart';

class UISwitch extends StatelessWidget {

  final bool isActive;
  final Function(bool)? onChange;

  UISwitch({
    Key? key,
    this.isActive = false,
    this.onChange
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isActive,
      onChanged: onChange,
      activeTrackColor: kYellowY400,
      activeColor: kWhite,
    );
  }
}