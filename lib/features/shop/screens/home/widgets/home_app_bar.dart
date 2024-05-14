import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_first_official_app/utils/constants/texts.dart';

import '../../../../../common/widgets/appbar/app_bar.dart';
import 'home_counter_icons.dart';

class danHomeAppBar extends StatelessWidget {
  const danHomeAppBar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    return danAppBar(
      leadingIcon: Iconsax.location,
      leadingOnPressed: () {},
      title: Text(danTexts.homeAppBarTitle, style: texttheme.titleMedium,),
      centertile: true,
      actions: [
        danCounterIcons()
      ],
    );
  }
}

