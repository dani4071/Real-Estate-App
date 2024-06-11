import 'package:get/get.dart';
import '../data/upload_dummy_data/upload_dummy_model.dart';


class searchableController extends GetxController{
  static searchableController get instance => Get.find();

  /// variables
  final RxList<ApartmentModel> products = <ApartmentModel>[].obs;
  final RxList<ApartmentModel> result = <ApartmentModel>[].obs;


  void runFilterr(String enteredKeyword) {
    if (enteredKeyword.isEmpty) {
      result.assignAll(products);
    } else {
      result.assignAll(products.where((user) => user.name.toLowerCase().contains(enteredKeyword.toLowerCase())).toList());
    }
  }


  void assignHouseList(List<ApartmentModel> products) {
    this.products.assignAll(products);
    result.assignAll(products);
  }

}