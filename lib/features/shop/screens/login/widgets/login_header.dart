import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';

class loginHeader extends StatelessWidget {
  const loginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final isDark = danHelperFunction.isDarkMode(context);

    return Column(
      children: [
        Image(image: AssetImage(isDark? danImage.loginImagedark : danImage.loginImage)),
        Text("The Best Of Real Estate", style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
