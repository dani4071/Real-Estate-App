import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_first_official_app/features/shop/screens/login/login_screen.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();


  final pageController = PageController();
  Rx<int> currentPage = 0.obs;



  void updatePageIndicator(index){
    currentPage.value = index;
  }


  void dotNavigationClick(index){
    currentPage.value = index;
    pageController.jumpToPage(index);
  }


  void nextPage(){
    if(currentPage.value == 2){
      final storage = GetStorage();

      if(kDebugMode){
        print("===============================Get Storage Next Button ===============");
        print(storage.read("IsFirstTime"));
      }

      storage.write("IsFirstTime", false);

      if(kDebugMode){
        print("===============================Get Storage Next Button ===============");
        print(storage.read("IsFirstTime"));
      }
      Get.offAll(const loginScreen());

    } else {
      final page = currentPage.value + 1;
      pageController.jumpToPage(page);
    }
  }


  void skipPage() {
    // currentPage.value = 2;
    // pageController.jumpToPage(2);
    Get.offAll(const loginScreen());
  }
}