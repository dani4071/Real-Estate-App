import 'package:flutter/material.dart';
import 'package:my_first_official_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_first_official_app/common/widgets/shimmers/shimmer_effect.dart';

import '../../../utils/constants/sizes.dart';

class apartmentShimmer extends StatelessWidget {
  const apartmentShimmer({super.key, this.itemCount = 16});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return danGridLayout(
      itemCount: itemCount,
      itemBuilder: (_, __) => SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            danShimmerEffect(width: double.infinity, height: 120),
            SizedBox(
              height: danSizes.spacebtwItems / 2,
            ),
            danShimmerEffect(width: 60, height: 20),
            SizedBox(
              height: danSizes.spacebtwItems / 2,
            ),
            danShimmerEffect(width: 60, height: 20),
            SizedBox(
              height: danSizes.spacebtwItems / 2,
            ),
            danShimmerEffect(width: double.infinity, height: 20),
          ],
        ),
      ),
    );
  }
}



class apartmentShimmer2 extends StatelessWidget {
  const apartmentShimmer2({super.key, this.itemCount = 3});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: danShimmerEffect(width: double.infinity, height: 220),
        ),
      ],
    );
  }
}

class favouritesShimmer extends StatelessWidget {
  const favouritesShimmer({super.key, this.itemCount = 3});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: danShimmerEffect(width: double.infinity, height: 120),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: danShimmerEffect(width: double.infinity, height: 120),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: danShimmerEffect(width: double.infinity, height: 120),
        ),
      ],
    );
  }
}
