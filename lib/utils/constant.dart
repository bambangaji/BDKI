import 'package:flutter/material.dart';

double fullWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double fullHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

EdgeInsets safePadding(BuildContext context) {
  return MediaQuery.of(context).padding;
}

double safePaddingTop(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}
