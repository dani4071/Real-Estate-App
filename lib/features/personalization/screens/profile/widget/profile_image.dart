import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';

class profileImage extends StatelessWidget {
  const profileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      backgroundColor: Colors.red,
      backgroundImage: AssetImage(danImage.profileImage1),
    );
  }
}