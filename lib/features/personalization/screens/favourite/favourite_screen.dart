import 'package:flutter/material.dart';
import 'package:my_first_official_app/common/widgets/appbar/app_bar.dart';
import 'package:my_first_official_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_first_official_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:my_first_official_app/utils/constants/images_strings.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

class favouriteScreen extends StatelessWidget {
  const favouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// App Bar
            danAppBar(
              title: Text(
                "Favourites",
                style: texttheme.headlineSmall,
              ),
              showBackArrow: true,
            ),
            SizedBox(
              height: danSizes.spacebtwItems,
            ),

            /// Items
            danGridLayout(
                itemCount: 1,
                itemBuilder: (BuildContext, int) => danProductCardvertical(
                    Image: danImage.homeImage3,
                    title: "Movie",
                    location: "Atlanta, ",
                    city: "US",
                    price: "200",
                    width: 180,
                    isForGrid: true,
                    padding: EdgeInsets.only(left: 20),
                ),)
          ],
        ),
      ),
    );
  }
}
