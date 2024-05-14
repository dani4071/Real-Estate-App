import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/features/shop/screens/login/widgets/login_form.dart';
import 'package:my_first_official_app/features/shop/screens/login/widgets/login_header.dart';
import 'package:my_first_official_app/features/shop/screens/signup/signup_screen.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              /// image
              const loginHeader(),
              const SizedBox(
                height: 20,
              ),

              /// form
              const loginForm(),

              /// sign up
              TextButton(
                  onPressed: () => Get.to(() => const signUpScreen()),
                  child: Text(
                    "Register",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}


