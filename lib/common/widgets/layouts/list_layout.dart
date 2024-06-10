import 'package:flutter/material.dart';



class danListView extends StatelessWidget {
  const danListView({super.key, required this.itembuilderr, required this.itemCount,});


  final Widget? Function(BuildContext, int) itembuilderr;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 20),
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: itembuilderr,
    );
  }
}