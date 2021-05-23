import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app_v2/core/theme.dart';

class UITextInput extends StatelessWidget {

  final String label;
  final String hint;
  final TextEditingController controller;
  final bool isObscure;
  final Icon? icon;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  final TextInputType? inputType;
  final String? prefixText;
  final List<TextInputFormatter>? formatters;

  UITextInput({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
    this.icon,
    this.validator,
    this.onChange,
    this.prefixText,
    this.formatters,
    this.isObscure = false,
    this.inputType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        onChanged: onChange,
        keyboardType: inputType,
        controller: controller,
        obscureText: isObscure,
        validator: validator,
        inputFormatters: formatters,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 4),
          prefixIcon: icon,
          prefixText: prefixText,
          hintText: hint,
          hintStyle: kInputHint,
          labelText: label,
          labelStyle: kInputLabel
        ),
      ),
    );
  }
}