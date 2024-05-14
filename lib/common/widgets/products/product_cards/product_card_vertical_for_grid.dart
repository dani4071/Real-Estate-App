import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

import '../../images/rounded_images.dart';

class danProductCardForGrid extends StatelessWidget {
  const danProductCardForGrid({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.city,
    required this.price,
  });

  final String image;
  final String title;
  final String location;
  final String city;
  final String price;

  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: 180,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          // boxShadow: [danShadowStyle.verticalProductShadow],
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Image
            danRoundedImage(
              imageUrl: image,
              backgroundColor: Colors.transparent,
              borderRadius: danSizes.sm,
            ),
            SizedBox(
              height: danSizes.xs,
            ),

            /// Texts
            Padding(
              padding: const EdgeInsets.only(left: danSizes.xs),
              child: Text(
                title,
                style: texttheme.titleMedium,
              ),
            ),
            SizedBox(
              height: danSizes.sm,
            ),
            Padding(
              padding: const EdgeInsets.only(left: danSizes.xs),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: location,
                  style: texttheme.bodyMedium!.apply(color: Colors.grey),
                ),
                TextSpan(
                  text: city,
                  style: texttheme.bodyMedium!.apply(
                    color: Colors.grey,
                  ),
                ),
              ])),
            ),

            Spacer(),

            /// Rows with icons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: price,
                      style:
                          texttheme.bodyMedium!.apply(color: danColors.primary),
                    ),
                    TextSpan(
                      text: "/month",
                      style: texttheme.bodyMedium,
                    ),
                  ])),
                  Icon(
                    Icons.favorite_border,
                    color: danColors.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
