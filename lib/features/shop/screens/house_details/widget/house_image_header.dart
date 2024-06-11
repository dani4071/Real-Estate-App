import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/common/widgets/products/favourite/favourite_Icon.dart';
import 'package:my_first_official_app/features/shop/controller/Houses/image_controller.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';

import '../../../../../common/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/appbar/app_bar.dart';
import '../../../../../data/upload_dummy_data/upload_dummy_model.dart';

class houseImageHeader extends StatelessWidget {
  const houseImageHeader({
    super.key,
    required this.apartment,
  });

  final ApartmentModel apartment;

  @override
  Widget build(BuildContext context) {

    final screenHeight = danHelperFunction.screenHeight();
    final screenWidth = danHelperFunction.screenWidth();
    final controller = Get.put(ImageController());

    return danCurvedEdgesWidget(
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => controller.showEnlargedImage(apartment.image),
            child: Container(
              width: screenWidth,
              height: screenHeight / 2,
              child: CachedNetworkImage(
                imageUrl: apartment.image,
                fit: BoxFit.fill,
                progressIndicatorBuilder: (_, __, downloadProgress) => Center(
                  child: CircularProgressIndicator(
                    value: downloadProgress.progress,
                    color: danColors.primary,
                  ),
                ),
              ),
            ),
          ),
          danAppBar(
            showBackArrow: true,
            actions: [
              favouriteIcon(apartmentId: apartment.id),
            ],
          ),
        ],
      ),
    );
  }
}