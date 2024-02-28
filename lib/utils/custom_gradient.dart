import 'package:bdki/utils/color_custom.dart';
import 'package:flutter/material.dart';

LinearGradient customLinearGradient() {
  return const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [
      0,
      1,
    ],
    colors: [
      Warna.red,
      Warna.orange,
    ],
  );
}

LinearGradient customLinearGradientSoftYellow() {
  return const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [
      0,
      1,
    ],
    colors: [
      Warna.softYellow,
      Warna.white,
    ],
  );
}
