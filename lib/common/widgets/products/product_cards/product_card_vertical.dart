// import 'package:flutter/material.dart';
// import 'package:my_first_official_app/common/custom_shapes/containers/rounded_container.dart';
// import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';
// import 'package:my_first_official_app/utils/constants/colors.dart';
// import 'package:my_first_official_app/utils/constants/images_strings.dart';
// import 'package:my_first_official_app/utils/constants/sizes.dart';
//
// import '../../images/rounded_images.dart';
// import '../../texts/houses_price_text.dart';
// import '../favourite/favourite_Icon.dart';
//
// class danProductCardvertical extends StatelessWidget {
//   const danProductCardvertical({
//     super.key,
//     required this.Image,
//     required this.title,
//     required this.location,
//     required this.city,
//     this.bedCount = '3',
//     this.showerCount = '4',
//     this.width = 220,
//     this.isForGrid = false,
//     this.price = '',
//     required this.padding,
//     this.onPress,
//     this.isNetworkImage = false,
//     required this.apartment,
//   });
//
//   final String Image;
//   final String title;
//   final String location;
//   final String city;
//   final String bedCount;
//   final String showerCount;
//   final EdgeInsetsGeometry padding;
//   final double? width;
//   final bool isForGrid;
//   final bool isNetworkImage;
//   final String price;
//   final VoidCallback? onPress;
//   final ApartmentModel apartment;
//
//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     return Padding(
//       padding: padding,
//       child: GestureDetector(
//         onTap: onPress,
//         child: Container(
//           width: width,
//           decoration: BoxDecoration(
//             // boxShadow: [danShadowStyle.verticalProductShadow],
//             color: Colors.grey.withOpacity(0.1),
//             // color: Colors.red,
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               /// Image
//               // Container(
//               //   width: double.infinity,
//               //   height: 120,
//               //   decoration: BoxDecoration(
//               //     borderRadius: BorderRadius.circular(10),
//               //     color: Colors.yellow,
//               //   ),
//               //   child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image(image: AssetImage(danImage.uploadHouseImage5), fit: BoxFit.fill, )),
//               // ),
//               danCircularContainer(
//                 width: double.infinity,
//                 height: 120,
//                 backgroundcolor: Colors.grey.withOpacity(0.1),
//                 radius: 5,
//                 child: danRoundedImage(
//                   imageUrl: Image,
//                   isNetworkImage: isNetworkImage,
//                 ),
//               ),
//
//
//               SizedBox(
//                 height: danSizes.xs,
//               ),
//
//               /// Texts
//               Padding(
//                 padding: const EdgeInsets.only(left: danSizes.xs),
//                 child: Text(
//                   title,
//                   style: textTheme.titleMedium,
//                 ),
//               ),
//
//               SizedBox(
//                 height: danSizes.sm,
//               ),
//
//
//               Padding(
//                 padding: const EdgeInsets.only(left: danSizes.xs),
//                 child: Text(
//                   "${location}, ${city}",
//                   style: textTheme.bodySmall,
//                   overflow: TextOverflow.ellipsis,
//                   maxLines: 1,
//                 ),
//               ),
//
//               Spacer(),
//
//               /// Rows with icons
//               if (isForGrid)
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 4.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Flexible(child: danPriceText(price: price,)),
//                       // favouriteIcon(apartmentId: apartment.id,),
//                       // favouriteIcon(apartmentId: apartment.id),
//                       Container(
//                         height: 30,
//                         width: 30,
//                         color: Colors.transparent,
//                         child: favouriteIcon(apartmentId: apartment.id,),
//                       )
//                     ],
//                   ),
//                 )
//               else
//                 Padding(
//                   padding: const EdgeInsets.all(danSizes.xs),
//                   child: Row(
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.bed,
//                             color: Colors.grey,
//                           ),
//                           SizedBox(
//                             width: danSizes.xs,
//                           ),
//                           Text(
//                             bedCount,
//                             style: TextStyle(
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         width: danSizes.sm,
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.shower_outlined,
//                             color: Colors.grey,
//                           ),
//                           SizedBox(
//                             width: danSizes.xs,
//                           ),
//                           Text(
//                             showerCount,
//                             style: TextStyle(
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
// // import 'package:flutter/material.dart';
// // import 'package:my_first_official_app/common/styles/shadows.dart';
// // import 'package:my_first_official_app/utils/constants/images_strings.dart';
// // import 'package:my_first_official_app/utils/constants/sizes.dart';
// //
// // import '../../images/rounded_images.dart';
// //
// // class danProductCardvertical extends StatelessWidget {
// //   const danProductCardvertical({
// //     super.key,
// //     required this.Image,
// //     required this.title,
// //     required this.location,
// //     required this.city,
// //     required this.bedCount,
// //     required this.showerCount,
// //   });
// //
// //   final String Image;
// //   final String title;
// //   final String location;
// //   final String city;
// //   final String bedCount;
// //   final String showerCount;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final textTheme = Theme.of(context).textTheme;
// //     return Padding(
// //       padding: EdgeInsets.only(right: danSizes.defaultSpace),
// //       child: Container(
// //         width: 220,
// //         decoration: BoxDecoration(
// //           // boxShadow: [danShadowStyle.verticalProductShadow],
// //           color: Colors.grey.withOpacity(0.1),
// //           borderRadius: BorderRadius.circular(12),
// //         ),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             /// Image
// //             danRoundedImage(
// //               imageUrl: Image,
// //               backgroundColor: Colors.transparent,
// //               borderRadius: danSizes.sm,
// //             ),
// //             SizedBox(
// //               height: danSizes.xs,
// //             ),
// //
// //             /// Texts
// //             Padding(
// //               padding: const EdgeInsets.only(left: danSizes.xs),
// //               child: Text(
// //                 title,
// //                 style: textTheme.titleMedium,
// //               ),
// //             ),
// //             SizedBox(
// //               height: danSizes.sm,
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.only(left: danSizes.xs),
// //               child: Text.rich(TextSpan(children: [
// //                 TextSpan(
// //                     text: location,
// //                     style: textTheme.bodyMedium!.apply(color: Colors.grey)),
// //                 TextSpan(
// //                   text: city,
// //                   style: textTheme.bodyMedium!.apply(color: Colors.grey),
// //                 ),
// //               ])),
// //             ),
// //
// //             /// Rows with icons
// //             Padding(
// //               padding: const EdgeInsets.all(danSizes.xs),
// //               child: Row(
// //                 children: [
// //                   Row(
// //                     children: [
// //                       Icon(
// //                         Icons.bed,
// //                         color: Colors.grey,
// //                       ),
// //                       SizedBox(
// //                         width: danSizes.xs,
// //                       ),
// //                       Text(
// //                         bedCount,
// //                         style: TextStyle(
// //                           color: Colors.grey,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                   SizedBox(
// //                     width: danSizes.sm,
// //                   ),
// //                   Row(
// //                     children: [
// //                       Icon(
// //                         Icons.shower_outlined,
// //                         color: Colors.grey,
// //                       ),
// //                       SizedBox(
// //                         width: danSizes.xs,
// //                       ),
// //                       Text(
// //                         showerCount,
// //                         style: TextStyle(
// //                           color: Colors.grey,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/common/custom_shapes/containers/rounded_container.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';
import 'package:my_first_official_app/features/shop/screens/house_details/house_screen.dart';
import 'package:my_first_official_app/utils/constants/sizes.dart';

import '../../images/rounded_images.dart';
import '../../texts/houses_price_text.dart';
import '../favourite/favourite_Icon.dart';

class danProductCardvertical extends StatelessWidget {
  const danProductCardvertical({
    super.key,
    // required this.Image,
    // required this.title,
    // required this.location,
    // required this.city,
    // this.bedCount = '3',
    // this.showerCount = '4',
    // this.width = 220,
    this.isForGrid = true,
    // this.price = '',
    this.padding = const EdgeInsets.only(left: 20),
    // this.onPress,
    // this.isNetworkImage = false,
    required this.apartment,
  });

  // final String Image;
  // final String title;
  // final String location;
  // final String city;
  // final String bedCount;
  // final String showerCount;
  final EdgeInsetsGeometry padding;
  // final double? width;
  final bool isForGrid;
  // final bool isNetworkImage;
  // final String price;
  // final VoidCallback? onPress;
  final ApartmentModel apartment;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: padding,
      child: GestureDetector(
        onTap: () => Get.to(() => houseScreen(apartment: apartment)),
        child: Container(
          width: isForGrid ? 180 : 220,
          decoration: BoxDecoration(
            // boxShadow: [danShadowStyle.verticalProductShadow],
            color: Colors.grey.withOpacity(0.1),
            // color: Colors.red,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Image
              // Container(
              //   width: double.infinity,
              //   height: 120,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.yellow,
              //   ),
              //   child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image(image: AssetImage(danImage.uploadHouseImage5), fit: BoxFit.fill, )),
              // ),
              danCircularContainer(
                width: double.infinity,
                height: 120,
                backgroundcolor: Colors.grey.withOpacity(0.1),
                radius: 5,
                child: danRoundedImage(
                  imageUrl: apartment.image,
                  isNetworkImage: true,
                ),
              ),


              SizedBox(
                height: danSizes.xs,
              ),

              /// Texts
              Padding(
                padding: const EdgeInsets.only(left: danSizes.xs),
                child: Text(
                  apartment.name,
                  style: textTheme.titleMedium,
                ),
              ),

              SizedBox(
                height: danSizes.sm,
              ),


              Padding(
                padding: const EdgeInsets.only(left: danSizes.xs),
                child: Text(
                  "${apartment.location}, ${apartment.city}",
                  style: textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),

              Spacer(),

              /// Rows with icons
              if (isForGrid)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: danPriceText(price: apartment.price.toStringAsFixed(0),)),
                      // favouriteIcon(apartmentId: apartment.id,),
                      // favouriteIcon(apartmentId: apartment.id),
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.transparent,
                        child: favouriteIcon(apartmentId: apartment.id,),
                      ),
                    ],
                  ),
                )
              else
                Padding(
                  padding: const EdgeInsets.all(danSizes.xs),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.bed,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: danSizes.xs,
                          ),
                          Text(
                            apartment.bedNumber.toString(),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: danSizes.sm,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.shower_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: danSizes.xs,
                          ),
                          Text(
                            apartment.showerNumber.toString(),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
