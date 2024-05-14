import 'package:flutter/material.dart';


class danChipTheme{
  danChipTheme._();


  static ChipThemeData lightChiptheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: Colors.blue,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      checkmarkColor: Colors.white
  );

  static ChipThemeData darkChiptheme = const ChipThemeData(
      disabledColor: Colors.grey,
      labelStyle: TextStyle(color: Colors.black),
      selectedColor: Colors.blue,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      checkmarkColor: Colors.white
  );
}