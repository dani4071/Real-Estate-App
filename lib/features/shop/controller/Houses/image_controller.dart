import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

class ImageController extends GetxController {
  static ImageController get instance => Get.find();

















  void showEnlargedImage(String image) {
    Get.to(
        fullscreenDialog: true,
        () => Dialog.fullscreen(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: danSizes.defaultSpace * 2,
                    ),
                    // child: CachedNetworkImage(imageUrl: image),
                    child: Image(image: AssetImage(image), fit: BoxFit.contain,),
                  ),
                  const SizedBox(
                    height: danSizes.spacebtwItems,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: double.infinity,
                        //width: 150,
                        child: OutlinedButton(
                          onPressed: () => Get.back(),
                          child: const Text("Close"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
