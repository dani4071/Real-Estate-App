import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';


class locationMap extends StatelessWidget {
  const locationMap({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: danSizes.iconxs),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Iconsax.location, color: danColors.primary),
              SizedBox(width: danSizes.spacebtwItems / 2,),
              Text("Milan", style: texttheme.bodyMedium,),
            ],
          ),
          SizedBox(height: danSizes.spacebtwItems,),
          Image(image: AssetImage(danImage.mapImage1)),
        ],
      ),
    );
  }
}