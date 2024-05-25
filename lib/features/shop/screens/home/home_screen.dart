import 'package:flutter/material.dart';
import 'package:my_first_official_app/features/shop/screens/home/widgets/featured_housing_grid.dart';
import 'package:my_first_official_app/features/shop/screens/home/widgets/home_search_bar.dart';
import 'package:my_first_official_app/features/shop/screens/home/widgets/horizontal_list_of_houses.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/constants/texts.dart';

import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_texts.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// App Bar
            danHomeAppBar(),

            /// Home Texts
            homeTexts(text: danTexts.homeText, subtext: danTexts.homeSubText,),
            SizedBox(
              height: danSizes.spacebtwItems,
            ),

            /// Search bar
            danSearchContainer(),
            SizedBox(
              height: danSizes.spacebtwItems,
            ),

            /// Horizontal Scrollable list of housing
            danHorizontalListOfHouses(),
            SizedBox(
              height: danSizes.spacebtwItems,
            ),

            /// Featured Header
            danSectionHeading(
              title: 'Featured Housing',
              icon: Icons.window,
            ),
            SizedBox(
              height: danSizes.spacebtwItems,
            ),

            /// Featured Housing grid... you can either choose btw a made product card grid or re-use product card vertical
            /// i chose to reuse product card vertical
            // danGridLayout(
            //   itemCount: 6,
            //   itemBuilder: (BuildContext, int) => danProductCardForGrid(
            //       image: danImage.homeImage2,
            //       title: "St. George",
            //       location: "2018 Road, ",
            //       city: "Ottawa",
            //       price: "\$2300"),
            // ),
            danFeaturedHousing(),
            SizedBox(
              height: danSizes.spacebtwItems,
            ),
          ],
        ),
      ),
    );
  }
}
