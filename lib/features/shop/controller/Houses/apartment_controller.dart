import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/common/widgets/loaders/snackbar.dart';
import 'package:my_first_official_app/data/repositories/apartments/apartments_repository.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';

class ApartmentController extends GetxController{
  static ApartmentController get instance => Get.find();

  final isLoading = false.obs;
  final _apartmentRepository = Get.put(ApartmentRepository());
  RxList<ApartmentModel> allApartments = <ApartmentModel>[].obs;
  RxList<ApartmentModel> featuredApartments = <ApartmentModel>[].obs;

  @override
  void onInit() {
    fetchApartments();
    super.onInit();
  }


  Future<void> fetchApartments() async {
    try{

      // show loader while loading categories
      isLoading.value = true;

      // fetch categories from data source (firebase, api, etc)
      final apartments = await _apartmentRepository.getAllApartments();

      allApartments.assignAll(apartments);

      // Filter featured categories
      featuredApartments.assignAll(allApartments.where((apartment) => apartment.isFeatured == true).take(allApartments.length).toList());

      //
      // popularCategories.assignAll(
      //     allCategories.where((category) => category.isFeatured &&
      //         category.parentId.isEmpty).take(8).toList());


    } catch (e) {
      danLoaders.errorSnackBar(title: 'Oh snap', message: e.toString());
    } finally {
      // remove loader
      isLoading.value = false;
    }
  }
}