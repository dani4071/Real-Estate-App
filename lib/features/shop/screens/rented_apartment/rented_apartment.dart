import 'package:flutter/material.dart';
import 'package:my_first_official_app/common/widgets/appbar/app_bar.dart';


class rentedApartmenScreen extends StatelessWidget {
  const rentedApartmenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            danAppBar(showBackArrow: true, title: Text("Rented Apartments", style: texttheme.headlineSmall,),)
          ],
        ),
      ),
    );
  }
}
