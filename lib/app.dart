import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/features/shop/screens/login/login_screen.dart';
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
      debugShowCheckedModeBanner: false,
      home: const loginScreen(),
    );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Homa', style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),),
      ),
    );
  }
}