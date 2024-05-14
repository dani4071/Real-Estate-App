import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';

class danPriceText extends StatelessWidget {
  const danPriceText(
      {super.key,
      required this.price,
      this.currencySign = '\$',
      this.month = '/month',
      this.isLarge = false,
      });

  final String price;
  final String currencySign;
  final String month;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text.rich(
      TextSpan(children: [
        TextSpan(
            text: currencySign + price,
            style: isLarge
                ? textTheme.headlineMedium!.apply(
                    color: danColors.primary,
                  )
                : textTheme.bodyMedium!.apply(color: danColors.primary)),
        TextSpan(text: month, style: textTheme.bodyMedium),
      ]),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

// Text(
// currencySign + price + month,
// style: textTheme.bodyMedium!.apply(color: danColors.primary,),
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// );
