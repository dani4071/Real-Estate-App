import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/features/shop/controller/Houses/image_controller.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';

import '../../../../../common/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/appbar/app_bar.dart';
import '../../../../../common/widgets/icon/circular_icon.dart';

class houseImageHeader extends StatelessWidget {
  const houseImageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final screenHeight = danHelperFunction.screenHeight();
    final screenWidth = danHelperFunction.screenWidth();
    final controller = Get.put(ImageController());

    return danCurvedEdgesWidget(
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => controller.showEnlargedImage(danImage.houseScreenImage1),
            child: Container(
              width: screenWidth,
              height: screenHeight / 2,
              child: Image(
                image: AssetImage(danImage.houseScreenImage1),
                fit: BoxFit.cover,
              ),
            ),
          ),
          danAppBar(
            showBackArrow: true,
            actions: [
              danCircularIcon(
                iconn: Icons.favorite_border,
                color: Colors.blue,
                size: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}