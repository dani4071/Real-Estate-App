import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../common/widgets/texts/houses_price_text.dart';


class ratingAndPrice extends StatelessWidget {
  const ratingAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            RatingBarIndicator(
                rating: 2.5,
                itemSize: 30,
                unratedColor: Colors.grey,
                itemBuilder: (__, _) => Icon(Icons.star, color: Colors.amber,)),
            Text("(4.9)")
          ],
        ),
        danPriceText(
          price: "5800",
          isLarge: true,
        ),
      ],
    );
  }
}