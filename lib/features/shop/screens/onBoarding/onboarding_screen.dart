import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/features/shop/controller/onboarding_controlller.dart';
import 'package:my_first_official_app/features/shop/screens/onBoarding/widgets/dot_navigation_indicators.dart';
import 'package:my_first_official_app/features/shop/screens/onBoarding/widgets/next_page.dart';
import 'package:my_first_official_app/features/shop/screens/onBoarding/widgets/onBoarding_page.dart';
import 'package:my_first_official_app/features/shop/screens/onBoarding/widgets/skip_button.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/constants/texts.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    final isDark = danHelperFunction.isDarkMode(context);

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              onBoardingPage(
                  image: isDark
                      ? danImage.onboardingImage1dark
                      : danImage.onboardingImage1,
                  title: danTexts.onboardingTitle1,
                  subtitle: danTexts.onboardingSubtitle1),
              onBoardingPage(
                  image: isDark
                      ? danImage.onboardingImage2dark
                      : danImage.onboardingImage2,
                  title: danTexts.onboardingTitle2,
                  subtitle: danTexts.onboardingSubtitle2),
              onBoardingPage(
                  image: isDark
                      ? danImage.onboardingImage3dark
                      : danImage.onboardingImage3,
                  title: danTexts.onboardingTitle3,
                  subtitle: danTexts.onboardingSubtitle3),
            ],
          ),
          const nextButton(),
          const dotNavigationIndicator(),
          const skipButton()
        ],
      ),
    );
  }
}
