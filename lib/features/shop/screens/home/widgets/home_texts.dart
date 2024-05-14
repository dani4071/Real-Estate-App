import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/constants/texts.dart';


class homeTexts extends StatelessWidget {
  const homeTexts({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: danSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(danTexts.homeText, style: texttheme.headlineMedium,),
          Text(danTexts.homeSubText, style: texttheme.headlineMedium!.apply(color: danColors.primary),),
        ],
      ),
    );
  }
}