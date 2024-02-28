import 'package:flutter/material.dart';

BoxShadow customBoxShadowBtn() {
  return const BoxShadow(
    offset: Offset(0, 4), // Horizontal and vertical offset
    blurRadius: 4, // Blur radius
    spreadRadius: 0, // Spread radius
    color: Color(0x40000000), // Color with alpha (0x40 for 25% opacity)
  );
}
