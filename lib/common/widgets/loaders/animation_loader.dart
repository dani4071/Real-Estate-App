import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

class danAnimationLoaderWidget extends StatelessWidget {
  const danAnimationLoaderWidget(
      {super.key,
        required this.text,
        required this.animation,
        this.showAction = false,
        this.actionText,
        this.onActionPresed});

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPresed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery.of(context).size.width * 0.8),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: danSizes.defaultSpace,
          ),
          showAction
              ? SizedBox(
            width: 250,
            child: OutlinedButton(
              onPressed: onActionPresed,
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.black),
              child: Text(
                actionText!,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: Colors.white),
              ),
            ),
          )
              : const SizedBox(),
        ],
      ),
    );
  }
}
