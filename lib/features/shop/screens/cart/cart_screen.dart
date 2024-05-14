import 'package:flutter/material.dart';
import 'package:my_first_official_app/common/widgets/appbar/app_bar.dart';
import 'package:my_first_official_app/features/shop/screens/cart/widget/cart_item.dart';


class cartScreen extends StatelessWidget {
  const cartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// App bar
            danAppBar(
              title: Text(
                "C a r t",
                style: texttheme.headlineMedium,
              ),
              showBackArrow: true,
            ),


            /// Cart items
            cartItems(),

            /// Cart items

            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}




