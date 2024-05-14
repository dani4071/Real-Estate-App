import 'package:flutter/material.dart';

class danShadowStyle {

  static final verticalProductShadow = BoxShadow(
    // color: Colors.grey.withOpacity(0.2),
    color: Colors.red,
    blurRadius: 10,
    spreadRadius: 2,
    offset: Offset(0, 0),
  );

  static final horizontalProductShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.2),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );


}