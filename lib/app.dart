import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/bindings/general_bindings.dart';
import 'package:my_first_official_app/features/shop/screens/login/login_screen.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/theme/theme.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: danTheme.lightTheme,
      darkTheme: danTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialBinding: GeneralBindings(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: danColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}