import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/common/widgets/appbar/app_bar.dart';
import 'package:my_first_official_app/features/shop/screens/signup/widget/sign_up_form.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

class signUpScreen extends StatelessWidget {
  const signUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// AppBar
      appBar: danAppBar(
        showBackArrow: true,
        leadingOnPressed: () => Get.back(),
      ),


      /// Form
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(danSizes.defaultSpace),
          child: Form(
            child: danSignUpForm(),
          ),
        ),
      ),
    );
  }
}

