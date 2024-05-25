import 'package:flutter/material.dart';
import 'package:my_first_official_app/common/widgets/appbar/app_bar.dart';
import 'package:my_first_official_app/common/widgets/texts/section_heading.dart';
import 'package:my_first_official_app/features/shop/screens/home/widgets/home_counter_icons.dart';
import 'package:my_first_official_app/features/shop/screens/home/widgets/home_search_bar.dart';
import 'package:my_first_official_app/features/shop/screens/home/widgets/home_texts.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/constants/texts.dart';

import '../home/widgets/featured_housing_grid.dart';
import '../home/widgets/home_app_bar.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final texttheme = Theme.of(context).textTheme;

    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// App Bar
            danAppBar(title: Text("Search", style: texttheme.headlineSmall,), actions: [danCounterIcons()],),

            /// Texts
            homeTexts(text: danTexts.searchText, subtext: danTexts.searchSubText,),
            SizedBox(
              height: danSizes.spacebtwItems,
            ),

            /// Search
            danSearchContainer(icon: Icons.add, iconOnSeach: false,),
            SizedBox(
              height: danSizes.spacebtwsections,
            ),

            /// Heading Section
            danSectionHeading(title: "Trending Locations",),
            SizedBox(
              height: danSizes.spacebtwItems,
            ),


            /// Trending Items
            danFeaturedHousing(),

          ],
        ),
      ),
    );
  }
}
