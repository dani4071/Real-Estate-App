import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_first_official_app/features/authentication/controllers/sign_up/sign_up_controller.dart';

import '../../../../../common/widgets/appbar/app_bar.dart';
import 'home_counter_icons.dart';

class danHomeAppBar extends StatelessWidget {
  const danHomeAppBar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final texttheme = Theme.of(context).textTheme;
    return danAppBar(
      leadingIcon: Iconsax.location,
      leadingOnPressed: () {},
      title: Text("San Francisco", style: texttheme.titleMedium,),
      centertile: true,
      actions: [
        danCounterIcons()
      ],
    );
  }
}


