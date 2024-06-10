import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/common/widgets/loaders/snackbar.dart';
import 'package:my_first_official_app/data/repositories/apartments/apartments_repository.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';
import 'package:my_first_official_app/utils/local_storage/local_storage.dart';


class favouriteController extends GetxController {
  static favouriteController get instance => Get.find();


  /// variables
  final favourites = <String, bool>{}.obs;

  @override
  void onInit() {
    super.onInit();
    initFavourite();
  }


  Future<void> initFavourite() async {
    final json = danLocalStorage.instance().readData('FAVOURITES');
    if (json != null) {
      final storedFavourites = jsonDecode(json) as Map<String, dynamic>;
      favourites.assignAll(
          storedFavourites.map((key, value) => MapEntry(key, value as bool)));
    }
  }

  bool isFavourite(String apartmentId) {
    return favourites[apartmentId] ?? false;
  }


  void toggleFavouriteApartment(String apartmentId) {
    if (!favourites.containsKey(apartmentId)) {
      favourites[apartmentId] = true;
      saveFavouriteToStorage();
      danLoaders.customToast(
          message: "Apartment has been added to Favourites.");
    } else {
      danLocalStorage.instance().removeData(apartmentId);
      favourites.remove(apartmentId);
      saveFavouriteToStorage();
      favourites.refresh();
      danLoaders.customToast(
          message: "Apartment has been removed from the Favourites.");
    }
  }

  void saveFavouriteToStorage() {
    final encodedFavourites = json.encode(favourites);
    danLocalStorage.instance().writeData('FAVOURITES', encodedFavourites);
  }

  Future<List<ApartmentModel>> favouriteApartments() async {
    return await ApartmentRepository.instance.getFavouriteApartment(favourites.keys.toList());
  }
}