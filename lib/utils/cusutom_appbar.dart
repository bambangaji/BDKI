import 'package:bdki/service/auth_service.dart';
import 'package:bdki/service/routing_service.dart';
import 'package:bdki/utils/ImageLoc.dart';
import 'package:bdki/utils/color_custom.dart';
import 'package:bdki/utils/constant.dart';
import 'package:bdki/utils/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

AppBar customAppBar(BuildContext context,
    {bool back = false,
    void Function()? callback,
    bool isSearchBar = true,
    String title = ""}) {
  return AppBar(
    centerTitle: true,
    leading: Padding(
      padding: EdgeInsets.only(left: fullWidth(context) / 95),
      child: back
          ? IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: back == false && callback == null
                  ? () {
                      GoRouter.of(context).pop();
                    }
                  : callback ?? () => GoRouter.of(context).pop(),
            )
          : GestureDetector(
              onTap: () {
                logOut();
                goToDashboard(context);
              },
              child: Image.asset(ImageLoc.logoTrans)),
    ),
    title: isSearchBar
        ? Container(
            height: 40,
            // height: Get.height * 0.055,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Warna.white),
            child: Padding(
              padding: EdgeInsets.only(
                left: fullWidth(context) / 30,
              ),
              child: TextFormField(
                // scrollPadding: ,
                maxLines: 1,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 6),
                  border: InputBorder.none,
                  hintText: "Indonesia Comic Con",
                ),
              ),
            ))
        : Container(
            child: customText(title, fontSize: 16, textColor: Warna.white)),
    elevation: 1,
    automaticallyImplyLeading: false,
    backgroundColor: Warna.orange,
    actions: [
      Padding(
          padding: EdgeInsets.only(right: fullHeight(context) / 80),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.more_horiz_rounded),
          )),
    ],
  );
}
