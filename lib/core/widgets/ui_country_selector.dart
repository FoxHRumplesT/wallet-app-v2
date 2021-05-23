import 'package:flutter/material.dart';
import 'package:wallet_app_v2/core/widgets/ui_dropdown.dart';

class UICountrySelector extends StatelessWidget {

  final Function(dynamic) onChanged;
  final String? value;

  const UICountrySelector({
    Key? key,
    required this.onChanged,
    this.value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UIDropdown(
        value: value,
        items: [].map((v) => DropdownMenuItem(
          value: v.id,
          child: Row(
            children: <Widget>[
              Image.network(v.flagUrl, height: 18,),
              const SizedBox(width: 10,),
              Text(v.name),
            ],
          ),
        )).toList(),
        onChanged: onChanged,
        label: 'País',
        icon: const Icon(Icons.public, size: 24,)
      );
  }
}