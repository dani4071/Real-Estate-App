import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/features/shop/screens/house_details/house_screen.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';

class danFeaturedHousing extends StatelessWidget {
  const danFeaturedHousing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return danGridLayout(
        itemCount: 6,
        itemBuilder: (BuildContext, int) => danProductCardvertical(
              Image: danImage.homeImage3,
              price: '290',
              width: 180,
              padding: EdgeInsets.only(left: danSizes.defaultSpace),
              isForGrid: true,
              title: "St. George",
              location: "2018 Road, ",
              city: "Enugu",
              onPress: () => Get.to(houseScreen()),
            ));
  }
}
