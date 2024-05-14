import 'package:flutter/material.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({super.key, required this.image, required this.title, required this.subtitle});

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Image(image: AssetImage(image)),
          const SizedBox(height: 120,),
          Text(title, style: Theme.of(context).textTheme.headlineMedium,),
          const SizedBox(height: 20,),
          Text(subtitle, style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
