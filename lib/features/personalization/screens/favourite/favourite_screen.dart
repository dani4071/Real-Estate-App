import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/common/widgets/appbar/app_bar.dart';
import 'package:my_first_official_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_first_official_app/common/widgets/loaders/animation_loader.dart';
import 'package:my_first_official_app/common/widgets/products/favourite/favourite_controller.dart';
import 'package:my_first_official_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:my_first_official_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:my_first_official_app/common/widgets/shimmers/apartment_shimmer.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';
import 'package:my_first_official_app/features/shop/screens/home/home_screen.dart';
import 'package:my_first_official_app/navigation_menu.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/helpers/cloud_helper_function.dart';

import '../../../../common/widgets/layouts/list_layout.dart';

class favouriteScreen extends StatelessWidget {
  const favouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    // final controller = favouriteController.instance;
    final controller = Get.put(favouriteController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// App Bar
            danAppBar(
              title: Text(
                "Favourites",
                style: texttheme.headlineSmall,
              ),
              showBackArrow: true,
            ),
            SizedBox(
              height: danSizes.spacebtwItems,
            ),

            /// Items
            Obx(
              () => FutureBuilder(
                future: controller.favouriteApartments(),
                builder: (context, snapshot) {

                  /// Nothing found widget
                  final emptyWidget = danAnimationLoaderWidget(
                    text: "Your favourites are empty",
                    animation: danImage.pencilAnimation,
                    showAction: true,
                    actionText: "Lets add some?",
                    onActionPresed: () => Get.offAll(() => const navigationMenu()),
                  );

                  const loader = favouritesShimmer(itemCount: 3,);
                  final widget = danCloudHelperFunctions.checkMultiRecordState(snapshot: snapshot, loader: loader, nothingFound: emptyWidget);
                  if(widget != null) return widget;

                  final apartments =  snapshot.data!;

                  // return danGridLayout(
                  //     // itemCount: apartments.length,
                  //     itemCount: 5,
                  //     itemBuilder: (_, index) => danProductCardHorizontal(),);
                  // danProductCardvertical(apartment: apartments[index])
                  //

                  return danListView(
                    itemCount: apartments.length,
                    itembuilderr: (_, index) => danProductCardHorizontal(apartment: apartments[index]),);
                }
              ),
            ),

          ],
        ),
      ),
    );
  }
}
