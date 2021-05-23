import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/theme.dart';

class UIButton extends StatelessWidget {

  final String text;
  final VoidCallback onPress;
  final bool isLoading;
  final bool isEnabled;
  final Icon? iconBeforeText;
  final Icon? iconAfterText;
  final Color? color;

  UIButton({
    Key? key,
    required this.text,
    required this.onPress,
    this.isLoading = false,
    this.isEnabled = true,
    this.iconBeforeText,
    this.iconAfterText,
    this.color = kPrimaryColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onPress : null,
      child: Container(
        height: 44,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isEnabled ? color : kPrimaryColorDisabled,
          borderRadius: const BorderRadius.all(Radius.circular(6))
        ),
        child: !this.isLoading ? 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconBeforeText ?? Container(),
              const SizedBox(width: 10,),
              Text(text, style: TextStyle(color: kWhite, letterSpacing: .2, fontSize: 14, fontWeight: FontWeight.w500)),
              const SizedBox(width: 10,),
              iconAfterText ?? Container(),
            ],
          ) :
          const CircularProgressIndicator(
            backgroundColor: kPrimaryColor,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
      ),
    );
  }
}