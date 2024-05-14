import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';

import '../../../../../common/widgets/icon/circular_icon.dart';

class Row_button_and_icon extends StatelessWidget {
  const Row_button_and_icon({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    final isDark = danHelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: danSizes.iconxs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isDark? Colors.white : Colors.black
              ),
              child: Text("Book Now", style: texttheme.bodyMedium!.apply(color: isDark ? Colors.black : Colors.white),),
              onPressed: (){},
            ),
          ),
          SizedBox(width: 70,),
          danCircularIcon(iconn: Icons.shopping_cart, color: isDark ? Colors.black : Colors.white, backGroundColor: isDark ? Colors.white : Colors.black,),
        ],
      ),
    );
  }
}