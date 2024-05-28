import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_first_official_app/common/widgets/loaders/snackbar.dart';
import 'package:my_first_official_app/navigation_menu.dart';
import 'package:my_first_official_app/popups/full_screen_loader.dart';
import 'package:my_first_official_app/utils/Network/network_manager.dart';
import '../../../../data/repositories/authentication/authentication_repository.dart';


class LoginController extends GetxController{
  static LoginController get instance => Get.find();


  final rememberMe = false.obs;
  final RxBool hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  final _authenticationRepository = Get.put(AuthenticationRepository());


  @override
  void onInit() {
    email.text = localStorage.read("REMEMBER_ME_EMAIL") ?? "";
    password.text = localStorage.read("REMEMBER_ME_PASSWORD") ?? "";
    super.onInit();
  }

  Future<void> signInWithEmailAndPaasword() async {
    try{

      danFullScreenLoader.customLoading();


      final isConnected = await NetworkManager.instance.isConnected();

      if(!isConnected){
        danFullScreenLoader.stopLoading();
        return;
      }

      if(!loginKey.currentState!.validate()){
        danFullScreenLoader.stopLoading();
        return;
      }

      // save data to the local storage
      if(rememberMe.value) {
        localStorage.write("REMEMBER_ME_EMAIL", email.text.trim());
        localStorage.write("REMEMBER_ME_PASSWORD", password.text.trim());
      }

      final userCredentials = await _authenticationRepository.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      danLoaders.successSnackBar(title: "Congratulations", message: "Your account continue my guy.");


      Get.offAll(() => navigationMenu());



    } catch (e) {
      danFullScreenLoader.stopLoading();
      danLoaders.errorSnackBar(title: "oh snap, you no fit login o", message: e.toString());
    }







  }




}