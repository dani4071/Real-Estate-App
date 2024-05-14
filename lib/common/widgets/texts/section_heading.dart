import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

class danSectionHeading extends StatelessWidget {
  const danSectionHeading({
    super.key,
    required this.title,
    this.icon = Icons.window,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: danSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: texttheme.headlineSmall, maxLines: 1, overflow: TextOverflow.ellipsis),
          Icon(Icons.window, color: danColors.primary, size: 30,),
        ],
      ),
    );
  }
}