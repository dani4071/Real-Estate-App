import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';


class homeTexts extends StatelessWidget {
  const homeTexts({
    super.key,
    required this.text,
    required this.subtext,
  });

  final String text;
  final String subtext;


  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: danSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: texttheme.headlineMedium,),
          Text(subtext, style: texttheme.headlineMedium!.apply(color: danColors.primary),),
        ],
      ),
    );
  }
}