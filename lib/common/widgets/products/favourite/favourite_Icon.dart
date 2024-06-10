import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/common/widgets/icon/circular_icon.dart';
import 'package:my_first_official_app/common/widgets/products/favourite/favourite_controller.dart';
import '../../../../utils/constants/colors.dart';


class favouriteIcon extends StatelessWidget {
  const favouriteIcon({
    super.key,
    required this.apartmentId,
    this.icon = Icons.favorite,
  });

  final String apartmentId;
  final IconData icon;



  @override
  Widget build(BuildContext context) {

    final controller = Get.put(favouriteController());

    // return Obx(
    //   () => danCircularIcon(
    //     iconn: controller.isFavourite(apartmentId) ? Icons.favorite : Icons.favorite_border,
    //     color:  controller.isFavourite(apartmentId) ? danColors.primary : null,
    //     onPressed: () => controller.toggleFavouriteApartment(apartmentId),
    //   ),
    // );

    return Obx(
        () => IconButton(
            onPressed: () => controller.toggleFavouriteApartment(apartmentId),
            icon: Icon(controller.isFavourite(apartmentId) ? icon : Icons.favorite_border),
            color: controller.isFavourite(apartmentId) ? Colors.red : null,
            padding: EdgeInsets.zero,
        )
    );

    // return IconButton(
    //   icon: Icon(Icons.favorite),
    //   onPressed: () {},
    // );
  }
}
