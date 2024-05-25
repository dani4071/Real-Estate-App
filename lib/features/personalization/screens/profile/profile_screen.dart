import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/features/personalization/screens/favourite/favourite_screen.dart';
import 'package:my_first_official_app/features/personalization/screens/profile/widget/header_image.dart';
import 'package:my_first_official_app/features/personalization/screens/profile/widget/name_and_email_widget.dart';
import 'package:my_first_official_app/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:my_first_official_app/features/shop/screens/cart/cart_screen.dart';
import 'package:my_first_official_app/features/shop/screens/rented_apartment/rented_apartment.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';

class profileScreen extends StatelessWidget {
  profileScreen({super.key});

  final screenHeight = danHelperFunction.screenHeight();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          /// Image Header and Image profile
          imageHeaderAndProfileImage(),

          SizedBox(
            height: danSizes.spacebtwItems,
          ),

          /// Name and email Text
          nameAndEmail(),

          SizedBox(height: danSizes.spacebtwItems,),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: danSizes.spacebtwItems),
            child: Column(
              children: [
                profileMenu(icon: Icons.favorite_border, text: 'Favourite', onTap: () {
                  Get.to(() => favouriteScreen());
                },),
                Divider(),
                profileMenu(icon: Icons.home, text: 'My Rented Apartment', onTap: () {
                  Get.to(() => rentedApartmenScreen());
                },),
                Divider(),
                profileMenu(icon: Icons.shopping_cart, text: 'Cart', onTap: () {
                  Get.to(() => cartScreen());
                },),
                Divider(),
                profileMenu(icon: Icons.person, text: 'Delete Account', onTap: () {},),
                Divider(),
                profileMenu(icon: Icons.logout, text: 'Logout', onTap: () {},),
                Divider(),
              ],
            ),
          ),

        ],
      )),
    );
  }
}


