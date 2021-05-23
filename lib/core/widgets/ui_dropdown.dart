import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/theme.dart';

class UIDropdown extends StatelessWidget {
  
  final dynamic value;
  final List<DropdownMenuItem> items;
  final Function(dynamic) onChanged;
  final String? hint;
  final String? label;
  final Icon? icon;

  const UIDropdown({
    Key? key,
    this.value,
    required this.items,
    required this.onChanged,
    this.hint,
    this.label,
    this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField(
        value: value,
        items: items,
        onChanged: onChanged,
        elevation: 1,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 4),
          prefixIcon: icon,
          hintText: hint,
          hintStyle: kInputHint,
          labelText: label,
          labelStyle: kInputLabel
        ),
      ),
    );
  }
}