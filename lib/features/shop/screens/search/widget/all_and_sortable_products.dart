import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_first_official_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';

import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../controller/Houses/sortable_all_houses_controller.dart';

class all_and_sortableProducts extends StatelessWidget {
  const all_and_sortableProducts({
    super.key,
    required this.apartment,
  });

  final List<ApartmentModel> apartment;

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(AllHousesController());
    controller.assignProducts(apartment);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DropdownButtonFormField(
              value: controller.selectedSortOption.value,
              decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
              items: ['Name', 'Higher Price', 'Lower Price', 'More Bed-Space']
                  .map((options) =>
                      DropdownMenuItem(child: Text(options), value: options))
                  .toList(),
              onChanged: (value) {
                controller.sortProducts(value!);
              }),
        ),

        SizedBox(
          height: 20,
        ),

        /// ALL Items
        Obx(
          () => danGridLayout(
              itemBuilder: (_, index) => danProductCardvertical(
                    apartment: controller.products[index],
                  ),
              itemCount: controller.products.length),
        )

        /// Trending Items
        // danFeaturedHousing(),
      ],
    );
  }
}
