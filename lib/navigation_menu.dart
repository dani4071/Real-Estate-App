import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/features/personalization/screens/profile/profile_screen.dart';
import 'package:my_first_official_app/features/shop/screens/home/home_screen.dart';
import 'package:my_first_official_app/features/shop/screens/search/search_screen.dart';
import 'package:my_first_official_app/utils/constants/colors.dart';
import 'package:my_first_official_app/utils/helpers/danHelperFunctions.dart';


class navigationMenu extends StatelessWidget {
  const navigationMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final isDark = danHelperFunction.isDarkMode(context);
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () =>  NavigationBar(
          height: 70,
          elevation: 0,
          backgroundColor: isDark ? Colors.black : danColors.white,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: [
            navigationDestination(index: 0, icon: Icons.home,),
            navigationDestination(index: 1, icon: Icons.search,),
            navigationDestination(index: 2, icon: Icons.person,),
            //GestureDetector(onTap: () {controller.selectedIndex.value = 1;},child: Container(width: double.infinity, height: double.infinity,color: Colors.transparent,child: Icon(Icons.search, size: 30, color: controller.selectedIndex.value == 1 ? Colors.blue : isDark ? Colors.white : Colors.black,),)),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class navigationDestination extends StatelessWidget {
  const navigationDestination({
    super.key,
    required this.index,
    required this.icon,
  });

  final int index;
  final IconData icon;

  @override
  Widget build(BuildContext context) {

    final isDark = danHelperFunction.isDarkMode(context);
    final controller = Get.put(NavigationController());

    return GestureDetector(onTap: () {controller.selectedIndex.value = index;},child: Container(width: double.infinity, height: double.infinity,color: Colors.transparent,child: Icon(icon, size: 30, color: controller.selectedIndex.value == index ? Colors.blue : isDark ? Colors.white : Colors.black,),));
  }
}


class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [homeScreen(), searchScreen(), profileScreen(),];

}