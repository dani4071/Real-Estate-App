import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';


class danGridLayout extends StatelessWidget {
  const danGridLayout({
    super.key,
    required this.itemCount,
    this.maxAxisExtent = 205,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? maxAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.only(right: 20),
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: danSizes.gridViewSpacing,
        crossAxisSpacing: 0,
        mainAxisExtent: maxAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}

