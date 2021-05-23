import 'package:flutter/material.dart';

PreferredSizeWidget genericAppbar({
  required Color background,
  required Brightness brightness
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(0),
    child: AppBar(
      backgroundColor: background,
      brightness: brightness,
      elevation: 0,
    )
  );
}