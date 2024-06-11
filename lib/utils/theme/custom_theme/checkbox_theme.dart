import 'package:flutter/material.dart';

class danCheckboxTheme {
  danCheckboxTheme._();

  static CheckboxThemeData lightCheckboxtheme = CheckboxThemeData(
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      } else {
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    }),
  );


  static CheckboxThemeData darkCheckboxtheme = CheckboxThemeData(
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
