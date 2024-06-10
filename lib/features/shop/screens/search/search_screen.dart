import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_first_official_app/common/widgets/appbar/app_bar.dart';
import 'package:my_first_official_app/common/widgets/texts/section_heading.dart';
import 'package:my_first_official_app/data/repositories/apartments/apartments_repository.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';
import 'package:my_first_official_app/features/shop/controller/Houses/apartment_controller.dart';
import 'package:my_first_official_app/features/shop/screens/home/widgets/home_counter_icons.dart';
import 'package:my_first_official_app/features/shop/screens/home/widgets/home_search_bar.dart';
import 'package:my_first_official_app/features/shop/screens/home/widgets/home_texts.dart';
import 'package:my_first_official_app/features/shop/screens/search/widget/all_and_sortable_products.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/constants/texts.dart';

import '../../../../utils/helpers/cloud_helper_function.dart';
import '../home/widgets/featured_housing_grid.dart';
import '../home/widgets/home_app_bar.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final texttheme = Theme.of(context).textTheme;
    final controller = ApartmentRepository.instance;

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
            danSectionHeading(title: "Trending Locations By",),
            SizedBox(
              height: danSizes.spacebtwItems,
            ),

            FutureBuilder(
              future: controller.getAllApartments(),
              builder: (context, snapshot) {

                const loader = null;
                // if(snapshot.connectionState == ConnectionState.waiting) {
                //   return loader;
                // }
                //
                //
                // if (!snapshot.hasData || snapshot.data == null || snapshot.data!.isEmpty) {
                //   return const Center(child: Text("No Data Found"),);
                // }
                //
                //
                // if(snapshot.hasError) {
                //   return const Center(child: Text("Somethung went wrong"),);
                // }

                // product found
                final widget = danCloudHelperFunctions.checkMultiRecordState(snapshot: snapshot, loader: loader);

                if (widget != null) return widget;

                final products = snapshot.data!;

                return all_and_sortableProducts(apartment: products,);
              }
            ),
          ],
        ),
      ),
    );
  }
}


