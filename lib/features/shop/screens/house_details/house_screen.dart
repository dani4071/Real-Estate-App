import 'package:flutter/material.dart';
import 'package:my_first_official_app/features/shop/screens/house_details/widget/house_details.dart';
import 'package:my_first_official_app/features/shop/screens/house_details/widget/house_image_header.dart';
import 'package:my_first_official_app/features/shop/screens/house_details/widget/location_map.dart';
import 'package:my_first_official_app/features/shop/screens/house_details/widget/row_button_and_icon.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';


class houseScreen extends StatelessWidget {
  const houseScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// House Header Image
            houseImageHeader(),

            /// House details
            house_details(),

            SizedBox(
              height: danSizes.spacebtwItems,
            ),

            /// location Map
            locationMap(),

            SizedBox(height: danSizes.spacebtwsections,),

            /// Buttons
            Row_button_and_icon(),
            SizedBox(height: danSizes.spacebtwItems,),
          ],
        ),
      ),
    );
  }
}








