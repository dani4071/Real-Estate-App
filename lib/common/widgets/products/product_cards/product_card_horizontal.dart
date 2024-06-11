import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';
import 'package:my_first_official_app/features/shop/screens/house_details/house_screen.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';

import '../favourite/favourite_Icon.dart';

class danProductCardHorizontal extends StatelessWidget {
  const danProductCardHorizontal({
    super.key,
    required this.apartment,
  });

  final ApartmentModel apartment;


  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    final isDark = danHelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () => Get.to(() => houseScreen(apartment: apartment)),
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
                            image: NetworkImage(apartment.image),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        apartment.name,
                        style: texttheme.headlineSmall!
                            .apply(color: danColors.primary),
                      ),
                      Text(
                        apartment.location,
                        style: texttheme.bodyMedium,
                      ),
                      Text(
                        "\$${apartment.price} + 1",
                        style: texttheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 30,
                width: 30,
                color: Colors.transparent,
                child: favouriteIcon(apartmentId: apartment.id, icon: Icons.delete_forever,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}