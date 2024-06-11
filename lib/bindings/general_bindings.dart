import 'package:get/get.dart';
import 'package:my_first_official_app/features/shop/controller/search_controller.dart';
import '../utils/Network/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
    Get.put(searchableController());
  }

}