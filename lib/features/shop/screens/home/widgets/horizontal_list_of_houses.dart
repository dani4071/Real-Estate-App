import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';

class danHorizontalListOfHouses extends StatelessWidget {
  const danHorizontalListOfHouses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: danSizes.defaultSpace),
      child: SizedBox(
        height: 240,
        child: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return danProductCardvertical(
              Image: danImage.homeImage1,
              title: 'St. Crystals',
              location: '2016 Road, ',
              city: 'Texas',
              bedCount: '3',
              showerCount: '2',
              padding: EdgeInsets.only(right: danSizes.defaultSpace),
            );
          },
        ),
      ),
    );
  }
}
