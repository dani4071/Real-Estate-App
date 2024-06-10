import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/features/shop/controller/Houses/cart_controller.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';

import '../../cart/cart_screen.dart';

class danCounterIcons extends StatelessWidget {
  const danCounterIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(CartController());
    final isDark = danHelperFunction.isDarkMode(context);

    return Stack(
      children: [
        IconButton(
            onPressed: () {
              Get.to(() => cartScreen());
            },
            icon: Icon(
              Icons.shopping_cart,
              color: isDark ? Colors.white : Colors.black,
            )),
        Positioned(
          left: 15,
          child:
             Container(
              child: Center(child: Obx(() => Text(controller.noOfCartItems.value.toString()))),
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.blue,
              ),
            ),

        )
      ],
    );
  }
}
