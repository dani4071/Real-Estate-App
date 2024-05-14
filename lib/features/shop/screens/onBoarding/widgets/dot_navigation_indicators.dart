import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../controller/onboarding_controlller.dart';


class dotNavigationIndicator extends StatelessWidget {
  const dotNavigationIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: danDeviceUtils.getBottomNavigationBarHeight() - 45,
        left: 2,
        child: SmoothPageIndicator(
          count: 3,
          effect: const ExpandingDotsEffect(activeDotColor: danColors.primary, dotHeight: 6),
          controller: controller.pageController,
        ));
  }
}