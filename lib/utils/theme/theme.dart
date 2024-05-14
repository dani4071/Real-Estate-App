import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/theme/custom_theme/appbar_theme.dart';
import 'package:my_first_official_app/utils/theme/custom_theme/button_sheet_theme.dart';
import 'package:my_first_official_app/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:my_first_official_app/utils/theme/custom_theme/chip_theme.dart';
import 'package:my_first_official_app/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:my_first_official_app/utils/theme/custom_theme/outline_button_theme.dart';
import 'package:my_first_official_app/utils/theme/custom_theme/text_form_field_theme.dart';
import 'package:my_first_official_app/utils/theme/custom_theme/text_theme.dart';


class danTheme {
  danTheme._();


  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: danTexttheme.lightTexttheme,
    elevatedButtonTheme: danElevatedBtnTheme.lightElevatedBtn,
    appBarTheme: danAppbar.lightAppBarTheme,
    bottomSheetTheme: danBottomsheet.lightBtnsheet,
    checkboxTheme: danCheckboxTheme.lightCheckboxtheme,
    chipTheme: danChipTheme.lightChiptheme,
    outlinedButtonTheme: danOutlinedbtnTheme.lightOutlinedThemedata,
    inputDecorationTheme: danTextFormfield.lightInputDecTheme,
  );




  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: danTexttheme.darktexttheme,
    elevatedButtonTheme: danElevatedBtnTheme.darkElevatedBtn,
    appBarTheme: danAppbar.darkAppBarTheme,
    bottomSheetTheme: danBottomsheet.darkBtnsheet,
    checkboxTheme: danCheckboxTheme.darkCheckboxtheme,
    chipTheme: danChipTheme.darkChiptheme,
    outlinedButtonTheme: danOutlinedbtnTheme.darkOutlinedThemedata,
    inputDecorationTheme: danTextFormfield.darkInputDecTheme,
  );


}