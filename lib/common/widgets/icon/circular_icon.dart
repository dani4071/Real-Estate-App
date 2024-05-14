import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';

class danCircularIcon extends StatelessWidget {
  const danCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = danSizes.lg,
    this.iconn = Icons.favorite,
    this.color,
    this.backGroundColor,
    this.onPressed,
  });

  final double? width;
  final double? height;
  final double? size;
  final IconData iconn;
  final Color? color;
  final Color? backGroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = danHelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backGroundColor != null
            ? backGroundColor!
            : danHelperFunction.isDarkMode(context)
            ? Colors.transparent
            : Colors.transparent,
      ),
      child: IconButton(
          icon: Icon(
            iconn,
            size: size,
            color: color,
          ),
          onPressed: onPressed),
    );
  }
}
