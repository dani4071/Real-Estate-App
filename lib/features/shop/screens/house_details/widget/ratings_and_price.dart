import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';

import '../../../../../common/widgets/texts/houses_price_text.dart';


class ratingAndPrice extends StatelessWidget {
  const ratingAndPrice({
    super.key,
    required this.apartment,
  });

  final ApartmentModel apartment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            RatingBarIndicator(
                rating: apartment.showerNumber.toDouble(),
                itemSize: 30,
                unratedColor: Colors.grey,
                itemBuilder: (__, _) => Icon(Icons.star, color: Colors.amber,)),
            Text("(${apartment.showerNumber.toString()})")
          ],
        ),
        danPriceText(
          price: apartment.price.toStringAsFixed(0),
          isLarge: true,
        ),
      ],
    );
  }
}