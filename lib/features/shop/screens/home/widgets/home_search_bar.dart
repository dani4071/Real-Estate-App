import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/device/device_utility.dart';


class danSearchContainer extends StatelessWidget {
  const danSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    // final textTheme = Theme.of(context).textTheme;
    // final isDark = danHelperFunction.isDarkMode(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: danSizes.defaultSpace),
      child: Container(
        width: danDeviceUtils.getScreenWidth(),
        padding: EdgeInsets.all(danSizes.md),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(danSizes.cardRadiusSm),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Iconsax.search_normal, color: Colors.black,),
                SizedBox(width: danSizes.spacebtwItems / 2,),
                Text("Search your favourite location", style: TextStyle(color: Colors.black,),),
              ],
            ),
            Icon(Iconsax.sort, color: danColors.primary,)
          ],
        ),
      ),
    );
  }
}