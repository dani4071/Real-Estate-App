import 'package:flutter/material.dart';
import 'package:my_first_official_app/features/shop/controller/onboarding_controlller.dart';
import 'package:my_first_official_app/utils/device/device_utility.dart';



class skipButton extends StatelessWidget {
  const skipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: danDeviceUtils.getBottomNavigationBarHeight() - 30,
        left: 0,
        child: TextButton(
          child: Text("Skip", style: Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.grey), ),
          onPressed: () => controller.skipPage(),
        ));
  }
}
