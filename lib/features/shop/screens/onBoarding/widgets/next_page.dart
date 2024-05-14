import 'package:flutter/material.dart';
import 'package:my_first_official_app/features/shop/controller/onboarding_controlller.dart';



class nextButton extends StatelessWidget {
  const nextButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: 6,
        right: 6,
        child: GestureDetector(
          onTap: () => controller.nextPage(),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100)
            ),
            child: const Icon(Icons.arrow_forward),
          ),
        ));
  }
}
