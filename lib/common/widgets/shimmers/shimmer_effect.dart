import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/danHelperFunctions.dart';


class danShimmerEffect extends StatelessWidget {
  const danShimmerEffect(
      {super.key,
        required this.width,
        required this.height,
        this.radius = 15,
        this.color});

  final double width;
  final double height;
  final double radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final isDark = danHelperFunction.isDarkMode(context);

    return Shimmer.fromColors(
        // baseColor: isDark ? Colors.red : Colors.green,
        // highlightColor: isDark ? Colors.amber : Colors.orange,
        baseColor: isDark ? Colors.grey[850]! : Colors.grey[300]!,
        highlightColor: isDark ? Colors.grey[700]! : Colors.grey[100]!,
        child: Container(
          width: width,
          // incase anything sup include the height
          height: height,
          decoration: BoxDecoration(
            color: color ?? (isDark ? danColors.darkerGrey : danColors.white),
            borderRadius: BorderRadius.circular(radius),
          ),
        ));
  }
}
