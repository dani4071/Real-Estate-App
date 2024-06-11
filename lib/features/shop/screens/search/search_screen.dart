import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/common/widgets/appbar/app_bar.dart';
import 'package:my_first_official_app/data/repositories/apartments/apartments_repository.dart';
import 'package:my_first_official_app/everything_search/search_controller.dart';
import 'package:my_first_official_app/features/shop/screens/home/widgets/home_counter_icons.dart';
import 'package:my_first_official_app/features/shop/screens/home/widgets/home_texts.dart';
import 'package:my_first_official_app/features/shop/screens/search/widget/searchable_products.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/constants/texts.dart';

import '../../../../utils/helpers/cloud_helper_function.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    final controller = ApartmentRepository.instance;
    final controller2 = Get.put(searchableController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// App Bar
            danAppBar(
              title: Text(
                "Search",
                style: texttheme.headlineSmall,
              ),
              actions: [danCounterIcons()],
            ),

            /// Texts
            homeTexts(
              text: danTexts.searchText,
              subtext: danTexts.searchSubText,
            ),
            SizedBox(
              height: danSizes.spacebtwItems,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                onChanged: (value) => controller2.runFilterr(value),
                decoration: InputDecoration(labelText: 'Search'),
              ),
            ),

            SizedBox(
              height: danSizes.spacebtwItems,
            ),

            /// Search
            FutureBuilder(
                future: controller.getAllApartments(),
                builder: (context, snapshot) {
                  const loader = Center(child: CircularProgressIndicator(color: Colors.red,),);
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return loader;
                  }

                  if (!snapshot.hasData || snapshot.data == null || snapshot.data!.isEmpty) {
                    return const Center(child: Text("No Data Found"),);
                  }

                  if (snapshot.hasError) {
                    return const Center(
                      child: Text("Somethung went wrong"),
                    );
                  }

                  // product found
                  final widget = danCloudHelperFunctions.checkMultiRecordState(
                      snapshot: snapshot, loader: loader);

                  if (widget != null) return widget;

                  final apartment = snapshot.data!;

                  return searchable_products(
                    apartment: apartment,
                  );
                }),

            // SizedBox(
            //   height: danSizes.spacebtwsections,
            // ),
            //
            // /// Heading Section
            // danSectionHeading(title: "Trending Locations By",),
            // SizedBox(
            //   height: danSizes.spacebtwItems,
            // ),
            //
            // FutureBuilder(
            //   future: controller.getAllApartments(),
            //   builder: (context, snapshot) {
            //
            //     const loader = null;
            //     // if(snapshot.connectionState == ConnectionState.waiting) {
            //     //   return loader;
            //     // }
            //     //
            //     //
            //     // if (!snapshot.hasData || snapshot.data == null || snapshot.data!.isEmpty) {
            //     //   return const Center(child: Text("No Data Found"),);
            //     // }
            //     //
            //     //
            //     // if(snapshot.hasError) {
            //     //   return const Center(child: Text("Somethung went wrong"),);
            //     // }
            //
            //     // product found
            //     final widget = danCloudHelperFunctions.checkMultiRecordState(snapshot: snapshot, loader: loader);
            //
            //     if (widget != null) return widget;
            //
            //     final products = snapshot.data!;
            //
            //     return all_and_sortableProducts(apartment: products,);
            //   }
            // ),
          ],
        ),
      ),
    );
  }
}
