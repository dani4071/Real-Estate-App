import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

class danRoundedImage extends StatelessWidget {
  const danRoundedImage({
    super.key,
    this.height,
    required this.imageUrl,
    this.width,
    this.borderRadius = danSizes.md,
    this.padding,
    this.onPressed,
    this.backgroundColor = Colors.white,
    this.border,
    this.fit = BoxFit.fill,
    this.applyImageRadius = true,
    this.isNetworkImage = false,
  });

  final String imageUrl;
  final double? height;
  final double? width;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final BoxBorder? border;
  final BoxFit fit;
  final bool applyImageRadius;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: isNetworkImage
                ? CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: fit,
                  )
                : Image(
                    image: isNetworkImage
                        ? NetworkImage(imageUrl)
                        : AssetImage(imageUrl) as ImageProvider,
            fit: fit,)),
      ),
    );
  }
}
