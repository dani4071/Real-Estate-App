import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

class ImageController extends GetxController {
  static ImageController get instance => Get.find();

  /// variables
  RxString selectedProductImage = ''.obs;


  List<String> getAllHousesImages(ApartmentModel apartment) {
    // use set to add unique images only
    Set<String> images = {};

    // load thumbnail image
    images.add(apartment.image);

    // Assign thumbnail as selected image
    selectedProductImage.value = apartment.image;
    
    // // Get all images from the product model if not null
    // if (apartment.image != null) {
    //   images.addAll(apartment.image!)
    // }

    return images.toList();

  }





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
                    child: CachedNetworkImage(imageUrl: image),
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
        )
    );
  }
}
