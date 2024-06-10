import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/data/repositories/apartments/apartments_repository.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';
import '../../../../common/widgets/loaders/snackbar.dart';


class AllHousesController extends GetxController {
  static AllHousesController get instance => Get.find();


  final respository = ApartmentRepository.instance;
  final RxString selectedSortOption = "Name".obs;
  final RxList<ApartmentModel> products = <ApartmentModel>[].obs;

  


  void sortProducts (sortOption) {

    selectedSortOption.value = sortOption;

    switch (sortOption) {
      case "Name" :
        products.sort((a, b) => a.name.compareTo(b.name));
        break;
      case "Higher Price" :
        products.sort((a, b) => b.price.compareTo(a.price));
        break;
      case "Lower Price" :
        products.sort((a, b) => a.price.compareTo(b.price));
        break;
      case "More Bed-Space" :
        products.sort((a, b) => a.bedNumber.compareTo(b.bedNumber));
      //   break;
      // case "Sale" :
      //   products.sort((a, b) {
      //     if(b.salePrice > 0) {
      //       return b.salePrice.compareTo(a.salePrice);
      //     } else if (a.salePrice > 0) {
      //       return -1;
      //     } else {
      //       return 1;
      //     }
      //   });
        break;
      default:
      // Default sorting option: Name
        products.sort((a, b) => a.name.compareTo(b.name));
    }
  }

  void assignProducts(List<ApartmentModel> products) {
    // Assign products to the products List
    this.products.assignAll(products);
    sortProducts("Name");
  }

}