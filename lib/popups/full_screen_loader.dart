import 'package:flutter/material.dart';
import 'package:get/get.dart';

class danFullScreenLoader {

  static customLoading(){
    showDialog(context: Get.overlayContext!, builder: (context){
      // return const Center(child: CircularProgressIndicator(),);
      return const Scaffold(
        //backgroundColor: danHelperFunction.isDarkMode(context) ? danColors.black : danColors.white,
        backgroundColor: Colors.transparent,
        // body: Center(
        //   child: Image(image: AssetImage(danImage.homeImage2)),
        // ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }) ;
  }


  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }



}