import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/features/shop/controller/Houses/apartment_controller.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';

class danHorizontalListOfHouses extends StatelessWidget {
  const danHorizontalListOfHouses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    // final controller = ApartmentController.instance;
    final controller = Get.put(ApartmentController());

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
              Image: apartment.image,
              title: apartment.name,
              location: apartment.location,
              city: apartment.city,
              bedCount: apartment.bedNumber.toString(),
              showerCount: apartment.showerNumber.toString(),
              isNetworkImage: true,
              padding: EdgeInsets.only(right: danSizes.defaultSpace),
            );
          },
        ),
      ),
    );
  }
}
