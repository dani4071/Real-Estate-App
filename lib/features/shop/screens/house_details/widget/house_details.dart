import 'package:flutter/material.dart';
import 'package:my_first_official_app/features/shop/screens/house_details/widget/ratings_and_price.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/constants/texts.dart';
import 'package:readmore/readmore.dart';

import 'icon_and_availability.dart';

class house_details extends StatelessWidget {
  const house_details({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Name
          Text(
            "San Lax",
            style: texttheme.headlineMedium,
          ),

          SizedBox(
            height: danSizes.spacebtwItems / 2,
          ),

          /// Rating and Price
          ratingAndPrice(),
          SizedBox(
            height: danSizes.spacebtwItems,
          ),

          /// Overview and description
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Overview",
                style: texttheme.headlineSmall,
              ),
              SizedBox(
                height: danSizes.spacebtwItems / 2,
              ),
              ReadMoreText(
                danTexts.descriptionText1,
                trimLines: 2,
                trimMode: TrimMode.Line,
                moreStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: danSizes.spacebtwItems,
              ),

              Row(
                children: [
                  iconAndAvailability(available: '2', name: 'Bed',),
                  iconAndAvailability(icon: Icons.shower,available: '2', name: 'Bathroom',),
                  iconAndAvailability(icon: Icons.crop_square_outlined,available: '2400', name: 'sqft',),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}