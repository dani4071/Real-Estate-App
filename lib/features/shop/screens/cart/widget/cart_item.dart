import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/product_cards/product_card_horizontal.dart';

class cartItems extends StatelessWidget {
  const cartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        return danProductCardHorizontal();
      },
    );
  }
}