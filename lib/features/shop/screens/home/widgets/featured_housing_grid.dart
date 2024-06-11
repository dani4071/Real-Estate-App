import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/common/widgets/shimmers/apartment_shimmer.dart';

import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../controller/Houses/apartment_controller.dart';

class danFeaturedHousing extends StatelessWidget {
  const danFeaturedHousing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //final controller = ApartmentController.instance;
    final controller = Get.put(ApartmentController());


    return Obx(() {

      if(controller.isLoading.value) return const apartmentShimmer();

      if(controller.featuredApartments.isEmpty) {
        return Center(child: Text('No Data Found!', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.red),),);
      }

      return danGridLayout(
          itemCount: controller.featuredApartments.length,
          itemBuilder: (BuildContext, index) {
            final apartment = controller.featuredApartments[index];
            return danProductCardvertical(
              // isForGrid: true,
              // onPress: () => Get.to(houseScreen(apartment: controller.allApartments[index],)),
              apartment: apartment,
            );
          });
    });
  }
}
