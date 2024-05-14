import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';
import 'package:my_first_official_app/utils/device/device_utility.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';

class danAppBar extends StatelessWidget implements PreferredSizeWidget {
  const danAppBar({
    super.key,
    this.leadingIcon,
    this.title,
    this.actions,
    this.leadingOnPressed,
    this.centertile = false,
    this.showBackArrow = false,
  });

  final bool showBackArrow;
  final IconData? leadingIcon;
  final Widget? title;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final bool centertile;

  @override
  Widget build(BuildContext context) {
    final isDark = danHelperFunction.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: danSizes.sm),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: isDark ? Colors.white : Colors.black,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: isDark ? Colors.black : Colors.white,
                    size: 20,
                  ),
                ),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed,
                    icon: Icon(
                      leadingIcon,
                      color: isDark ? Colors.white : Colors.black,
                    ))
                : null,
        title: title,
        actions: actions,
        centerTitle: centertile,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(danDeviceUtils.appBarHeight());
}
