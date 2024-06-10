import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';
import 'package:my_first_official_app/features/shop/controller/Houses/cart_controller.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';

import '../../../../../common/widgets/products/product_cards/product_card_horizontal.dart';

class cartItems extends StatelessWidget {
  const cartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = CartController.instance;
    final isDark = danHelperFunction.isDarkMode(context);
    final texttheme = Theme.of(context).textTheme;

    return Obx(
      () => ListView.builder(
        // itemCount: controller.cartItems.length,
        itemCount: controller.cartItems.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) {
          final cartItems = controller.cartItems[index];
          return Padding(
            padding: EdgeInsets.all(10.0),
              child: Slidable(
                endActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(onPressed: (_) => controller.removeFromCart(cartItems),
                      icon: Icons.delete, backgroundColor: Colors.red, borderRadius: BorderRadius.circular(10),),
                  ],
                ),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isDark ? Colors.black : Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0, bottom: 15.0, right: 15),
                            child: Container(
                              height: double.infinity,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.green,
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image(
                                    image: NetworkImage(cartItems.image!),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cartItems.title,
                                style: texttheme.headlineSmall!
                                    .apply(color: danColors.primary),
                              ),
                              Text(
                                cartItems.location,
                                style: texttheme.bodyMedium,
                              ),
                              Text(
                                "\$${cartItems.price} + 1",
                                style: texttheme.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                      // Container(
                      //   height: 30,
                      //   width: 30,
                      //   color: Colors.transparent,
                      //   child: favouriteIcon(apartmentId: apartment.id, icon: Icons.delete_forever,),
                      // ),
                    ],
                  ),
                          ),
              ),
          );
          //apartment: ApartmentModel.empty(),
        },
      ),
    );
  }
}