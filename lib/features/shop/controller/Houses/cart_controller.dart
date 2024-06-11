import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_official_app/common/widgets/loaders/snackbar.dart';
import 'package:my_first_official_app/data/upload_dummy_data/upload_dummy_model.dart';
import 'package:my_first_official_app/features/shop/screens/cart/cart_screen.dart';
import 'package:my_first_official_app/utils/local_storage/local_storage.dart';
import '../../models/cart_model.dart';

class CartController extends GetxController {
  static CartController get instance => Get.find();

  /// Variables
  RxInt noOfCartItems = 0.obs;
  RxDouble totalCartPrice = 0.0.obs;
  RxBool clicked = true.obs;
  RxList<CartItemModel> cartItems = <CartItemModel>[].obs;


  //// this here is referred to as constructor
  CartController() {
    loadCartItems();
  }



  // Add items to cart
  void addToCart(ApartmentModel apartment) {

    final selectedCartItem = convertToCartItem(apartment);

    int index = cartItems.indexWhere((cartItem) => cartItem.apartmentId == selectedCartItem.apartmentId);

    if (index >= 0) {
      cartItems.add(selectedCartItem);
      danLoaders.customToast(message: "Nahhh Apartment has been added to the cart!");
    }


    updateCart();
    danLoaders.customToast(message: "Your Apartment has been added to the cart!");
  }


  void addOneToCart(CartItemModel item) {
    int index = cartItems.indexWhere((cartItem) => cartItem.apartmentId == item.apartmentId);

    if(index >= 0) {
      danLoaders.customToast(message: "Your Apartment has already been added");
    } else {
      cartItems.add(item);
      danLoaders.customToast(message: "Your Apartment has been addedd!");
      clicked.value = false;
    }
    updateCart();
  }



  /// this function converts a product model to a cart model
  CartItemModel convertToCartItem(ApartmentModel apartment) {
    final price = apartment.price;
    return CartItemModel(
      apartmentId: apartment.id,
      price: price,
      image: apartment.image,
      location: apartment.location,
      title: apartment.name,
    );
  }

  /// Update cart values
  void updateCart(){
    updateCartTotals();
    saveCartItems();
    cartItems.refresh();
  }


  void updateCartTotals() {
     double calculateTotalPrice = 0.0;
     int calculatedNoOfItems = 0;

     calculatedNoOfItems += cartItems.length;

     for (var item in cartItems) {
       calculateTotalPrice += item.price;
     }

     totalCartPrice.value = calculateTotalPrice;
     noOfCartItems.value = calculatedNoOfItems;
  }



  void saveCartItems() {
    final cartItemStrings = cartItems.map((item) => item.toJson()).toList();
    danLocalStorage.instance().writeData('CARTITEMS', cartItemStrings);
  }

  void loadCartItems() {
    final cartItemStrings = danLocalStorage.instance().readData<List<dynamic>>('CARTITEMS');
    if(cartItemStrings != null) {
      cartItems.assignAll(cartItemStrings.map((items) => CartItemModel.fromJson(items as Map<String, dynamic>)));
      updateCartTotals();
    }
  }

  int getPoductInCart(String apartmentId) {
    final foundItem = cartItems.where((item) => item.apartmentId == apartmentId).fold(0, (previousValue, element) => previousValue + 1);
    // final foundItem = cartItems.where((item) => item.apartmentId == apartmentId).fold(0, (previousValue, element) => previousValue + element..);
    return foundItem;
  }



  void removeFromCart(CartItemModel item) {
    int index = cartItems.indexWhere((cartItem) => cartItem.apartmentId == item.apartmentId);

    if(index >= 0) {
      removeFromCartDialog(index);
      updateCart();
    }

  }




  /// removing from cart
  // void removeOneFromCart(CartItemModel item) {
  //   int index = cartItems.indexWhere((cartItem) => cartItem.productId == item.productId && cartItem.variationId == item.variationId);
  //
  //   if(index >= 0) {
  //     if(cartItems[index].quantity > 1) {
  //       cartItems[index].quantity -= 1;
  //     } else {
  //       // show dialog before completely removing
  //       cartItems[index].quantity == 1 ? removeFromCartDialog(index) : cartItems.removeAt(index);
  //     }
  //     updateCart();
  //   }
  // }
  //
  // // this is that pop to ask are you sure you wan to cancel
  // void removeFromCartDialog(int index) {
  //   Get.defaultDialog(
  //     title: "Remove Product",
  //     middleText: 'Are you sure you want to remove this product',
  //     onConfirm: () {
  //       // remove the item from the cart
  //       cartItems.removeAt(index);
  //       updateCart();
  //       danLoaders.customToast(message: 'Product removed from the cart.');
  //       Get.back();
  //     },
  //     onCancel: () => () => Get.back(),
  //   );
  // }

  void removeFromCartDialog(int index){
    Get.defaultDialog(
      title: 'Remove Product?',
      middleText: 'Are you sure you want to remove this Apartment',
      cancelTextColor: Colors.red,
      buttonColor: Colors.yellow,
      onConfirm: () {
        cartItems.removeAt(index);
        updateCart();
        danLoaders.customToast(message: 'Apartment has been removed from cart');
        Get.back();
      },
      onCancel: () => Get.off(() => cartScreen()),
      //onCancel: () => Get.back();,
    );
  }






  void clearCart() {
    cartItems.clear();
    updateCart();
  }

}
