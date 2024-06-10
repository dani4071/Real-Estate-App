import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/common/widgets/shimmers/apartment_shimmer.dart';
import 'package:my_first_official_app/features/shop/controller/Houses/apartment_controller.dart';
import 'package:my_first_official_app/features/shop/screens/house_details/widget/house_details.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../house_details/house_screen.dart';

class danHorizontalListOfHouses extends StatelessWidget {
  const danHorizontalListOfHouses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    // final controller = ApartmentController.instance;
    final controller = Get.put(ApartmentController());

    return Obx(
      () {

        if(controller.isLoading.value) return apartmentShimmer2();

        if(controller.featuredApartments.isEmpty) {return Center(child: Text('No Data Found!', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.red),),);}


        return Padding(
          padding: const EdgeInsets.only(left: danSizes.defaultSpace),
          child: SizedBox(
            height: 240,
            child: ListView.builder(
              itemCount: controller.featuredApartments.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final apartment = controller.featuredApartments[index];
                return danProductCardvertical(
                  padding: EdgeInsets.only(right: danSizes.defaultSpace),
                  isForGrid: false,
                  // onPress: () => Get.to(houseScreen(apartment: controller.featuredApartments[index],)),
                  apartment: apartment,
                );
              },
            ),
          ),
        );
      }
    );
  }
}
