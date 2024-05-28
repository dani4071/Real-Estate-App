import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/helpers/danHelperFunctions.dart';


class danLoaders {
  static hideSnackBar() => ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();


  static customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: danHelperFunction.isDarkMode(Get.context!) ? Colors.grey.withOpacity(0.9) : Colors.grey.withOpacity(0.9),
          ),
          child: Center(child: Text(message, style: Theme.of(Get.context!).textTheme.labelLarge,),),
        ),
      ),
    );
  }

  /// possibly make message here required to make it easier for you.
  static successSnackBar ({required title, message = "", duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.green,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.check, color: Colors.white,),
    );
  }

  /// normally called warning snackbar
  static warningSnackBar ({required title, message = ""}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.warning_2, color: Colors.white,),
    );
  }

  static errorSnackBar ({required title, message = ""}) {
    Get.snackbar(title, message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.black,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 23),
      margin: const EdgeInsets.all(21),
      icon: const Icon(Iconsax.warning_2, color: Colors.white,),
    );


  }
}