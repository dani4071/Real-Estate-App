import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/common/widgets/appbar/app_bar.dart';
import 'package:my_first_official_app/features/shop/controller/Houses/cart_controller.dart';
import 'package:my_first_official_app/features/shop/screens/cart/widget/cart_item.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';

import '../../../../common/widgets/loaders/animation_loader.dart';
import '../../../../navigation_menu.dart';


class cartScreen extends StatelessWidget {
  const cartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final texttheme = Theme.of(context).textTheme;
    final controller = CartController.instance;

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: danAppBar(title: Text("C a r t", style: texttheme.headlineMedium,), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Cart items
            Obx(() {

              final emptyWidget = danAnimationLoaderWidget(
                text: "Your Cart are empty",
                animation: danImage.pencilAnimation,
                showAction: true,
                actionText: "Lets add some?",
                onActionPresed: () => Get.offAll(() => const navigationMenu()),
              );


              return controller.cartItems.isEmpty ? emptyWidget : cartItems();
              },
            ),
          ],
        ),
      ),
    );
  }
}




