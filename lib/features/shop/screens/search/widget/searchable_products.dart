import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/features/shop/controller/search_controller.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../../data/upload_dummy_data/upload_dummy_model.dart';

class searchable_products extends StatelessWidget {
  const searchable_products({
    super.key,
    required this.apartment,
  });

  final List<ApartmentModel> apartment;


  @override
  Widget build(BuildContext context) {
    final controller = searchableController.instance;
    controller.assignHouseList(apartment);

    return Obx(
      () => danGridLayout(
          itemCount: controller.result.length,
          itemBuilder: (BuildContext, index) {
            return danProductCardvertical(
              apartment: controller.result[index],
            );
          }),
    );
  }
}
