import 'package:get/get.dart';
import 'package:my_first_official_app/features/shop/controller/Houses/apartment_controller.dart';
import 'package:my_first_official_app/features/shop/controller/Houses/cart_controller.dart';
import '../utils/Network/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }

}