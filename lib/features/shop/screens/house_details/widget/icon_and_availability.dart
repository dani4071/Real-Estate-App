import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

class iconAndAvailability extends StatelessWidget {
  const iconAndAvailability({
    super.key,
    this.icon = Icons.bed,
    required this.available,
    required this.name,
  });

  final IconData icon;
  final String available;
  final String name;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: danColors.primary,),
        SizedBox(width: danSizes.spacebtwItems / 2,),
        Text(available + ' ' + name),
        SizedBox(width: danSizes.spacebtwItems,),
      ],
    );
  }
}