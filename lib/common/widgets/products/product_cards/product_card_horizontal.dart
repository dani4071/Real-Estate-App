import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';

class danProductCardHorizontal extends StatelessWidget {
  const danProductCardHorizontal({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    final isDark = danHelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 150,
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isDark ? Colors.black : Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0, bottom: 15.0, right: 15),
                  child: Container(
                    height: double.infinity,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image(
                          image: AssetImage(danImage.homeImage1),
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "St. Crystal",
                      style: texttheme.headlineSmall!
                          .apply(color: danColors.primary),
                    ),
                    Text(
                      "Robert Smith",
                      style: texttheme.bodyMedium,
                    ),
                    Text(
                      "\$5800 + 1",
                      style: texttheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.delete_forever, color: Colors.red,),
          ],
        ),
      ),
    );
  }
}