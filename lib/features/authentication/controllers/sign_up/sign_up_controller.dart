import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/data/models/user_model.dart';
import 'package:my_first_official_app/data/repositories/user/user_repository.dart';
import 'package:my_first_official_app/features/shop/screens/login/login_screen.dart';
import 'package:my_first_official_app/popups/full_screen_loader.dart';
import 'package:my_first_official_app/utils/Network/network_manager.dart';

import '../../../../common/widgets/loaders/snackbar.dart';
import '../../../../data/repositories/authentication/authentication_repository.dart';


class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();


  final email = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final phoneNumber = TextEditingController();
  final username = TextEditingController();
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final _authenticationRepository = Get.put(AuthenticationRepository());
  final _userRepository = Get.put(UserRepository());
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();



  void signUp() async {
    try {

      /// start loading
      danFullScreenLoader.customLoading();

      final isConnected = await NetworkManager.instance.isConnected();

      if(!isConnected){
        danFullScreenLoader.stopLoading();
        return;
      }

      if (!signupFormKey.currentState!.validate()) {
        danFullScreenLoader.stopLoading();
        return;
      }

      if (!privacyPolicy.value) {
        danLoaders.warningSnackBar(
            title: "Accept Privacy Policy!",
            message:
            "In other to create an account you must read and accept the privacy policy"
        );
        return;
      }

      /// Register user in  the firebase Authentication and save user data in the firebase
      final userCredentials = await _authenticationRepository.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      final newUser = UserModel(
          id: userCredentials.user!.uid,
          firstname: firstName.text.trim(),
          lastname: lastName.text.trim(),
          username: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text,
          profilePicture: '',
      );

      await _userRepository.saveUserRecord(newUser);


      danLoaders.successSnackBar(title: "Congratulations", message: "Your account has been Created successfully! Verify email to continue my guy.");

      Get.to(() => loginScreen());

    } catch (e) {
      danFullScreenLoader.stopLoading();
      danLoaders.errorSnackBar(title: "oh snap!", message: e.toString());
    }
  }






}