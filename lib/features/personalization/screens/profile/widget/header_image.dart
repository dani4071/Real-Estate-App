import 'package:flutter/material.dart';
import 'package:my_first_official_app/features/personalization/screens/profile/widget/profile_image.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';





class imageHeaderAndProfileImage extends StatelessWidget {
  const imageHeaderAndProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = danHelperFunction.screenHeight();
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 50),
          child: Container(
            color: Colors.green,
            height: screenHeight / 3,
            width: double.infinity,
            child: Image(
              image: AssetImage(danImage.profileHeaderImage1),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(top: screenHeight / 4, child: profileImage()),
      ],
    );
  }
}

class headerImage extends StatelessWidget {
  const headerImage({
    super.key,
  });

  // final screenHeight = danHelperFunction.screenHeight();
  @override
  Widget build(BuildContext context) {
    final screenheight = danHelperFunction.screenHeight();

    return Container(
      color: Colors.green,
      height: screenheight / 3,
      width: double.infinity,
      child: Image(
        image: AssetImage(danImage.profileHeaderImage1),
        fit: BoxFit.fill,
      ),
    );
  }
}