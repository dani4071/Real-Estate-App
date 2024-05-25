import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';



class nameAndEmail extends StatelessWidget {
  const nameAndEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("daniel"),
        SizedBox(
          height: danSizes.spacebtwItems,
        ),
        Container(
          height: 40,
          // width: 200,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.red,
          ),
          child: Text("danielNsofor2@gmail.com"),
        ),
      ],
    );
  }
}