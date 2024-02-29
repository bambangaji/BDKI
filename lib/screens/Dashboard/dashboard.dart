// dashboard_page.dart

import 'package:bdki/service/routing_service.dart';
import 'package:bdki/utils/ImageLoc.dart';
import 'package:bdki/utils/bottom_bar.dart';
import 'package:bdki/utils/color_custom.dart';
import 'package:bdki/utils/constant.dart';
import 'package:bdki/utils/custom_box_shadow.dart';
import 'package:bdki/utils/custom_gradient.dart';
import 'package:bdki/utils/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Warna.red,
        automaticallyImplyLeading: false,
        leadingWidth: 200,
        leading: GestureDetector(
            onTap: () => goToLogin(context),
            child: Image.asset(ImageLoc.transjakarta)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [customBoxShadowBtn()],
                      gradient: customLinearGradient(),
                      borderRadius: BorderRadius.circular(100)),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.list_alt_outlined,
                      color: Warna.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [customBoxShadowBtn()],
                      gradient: customLinearGradient(),
                      borderRadius: BorderRadius.circular(100)),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.notifications,
                      color: Warna.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
        elevation: 0,
      ),
      bottomNavigationBar: buildBottomAppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 120.0),
              child: Column(
                children: [
                  Container(
                    height: fullHeight(context) / 5,
                    child: Stack(
                      children: [
                        Container(
                          width: fullWidth(context),
                          height: fullHeight(context) / 6,
                          decoration: BoxDecoration(
                              color: Warna.red,
                              gradient: customLinearGradient(),
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50))),
                          child: Column(
                            children: [
                              SizedBox(
                                width: fullWidth(context),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: Warna.white),
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.red,
                                            size: 50,
                                          )),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        customText("Good Morning,",
                                            textColor: Warna.white,
                                            fontSize: 22),
                                        customText("Guest",
                                            textColor: Warna.white,
                                            fontSize: 22)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              height: (fullHeight(context) / 3.9) -
                                  (fullHeight(context) / 6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: customLinearGradient(),
                                  boxShadow: [customBoxShadowBtn()]),
                              width: fullWidth(context) - 80,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Container(
                                      width: fullWidth(context) - 96,
                                      decoration: const BoxDecoration(
                                          color: Warna.white,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0, vertical: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                customText("Balance Account",
                                                    fontWeight:
                                                        FontWeight.normal),
                                                customText("Rp " + '0',
                                                    fontWeight:
                                                        FontWeight.normal),
                                                customText("-",
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ],
                                            ),
                                            GestureDetector(
                                                onTap: () => null,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      gradient:
                                                          customLinearGradient(),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: customText("Top Up",
                                                        textColor: Warna.white),
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: fullWidth(context) - 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  gradient: customLinearGradientSoftYellow(),
                                  border:
                                      Border.all(color: Warna.red, width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    ImageLoc.maps,
                                    fit: BoxFit.contain,
                                    height: 45,
                                    width: 50,
                                  ),
                                ),
                              ),
                            ),
                            customText("Explore Jakarta",
                                fontSize: 10, fontWeight: FontWeight.normal)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  gradient: customLinearGradientSoftYellow(),
                                  border:
                                      Border.all(color: Warna.red, width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    ImageLoc.walletIcon,
                                    fit: BoxFit.contain,
                                    height: 45,
                                    width: 50,
                                  ),
                                ),
                              ),
                            ),
                            customText("Top U JakCard",
                                fontSize: 10, fontWeight: FontWeight.normal)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  gradient: customLinearGradientSoftYellow(),
                                  border:
                                      Border.all(color: Warna.red, width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    ImageLoc.creditCards,
                                    fit: BoxFit.contain,
                                    height: 45,
                                    width: 50,
                                  ),
                                ),
                              ),
                            ),
                            customText("JakCard Balance",
                                fontSize: 10, fontWeight: FontWeight.normal)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  gradient: customLinearGradientSoftYellow(),
                                  border:
                                      Border.all(color: Warna.red, width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    ImageLoc.event,
                                    fit: BoxFit.contain,
                                    height: 45,
                                    width: 50,
                                  ),
                                ),
                              ),
                            ),
                            customText("Event",
                                fontSize: 10, fontWeight: FontWeight.normal)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      height: 120,
                      width: fullWidth(context),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Image.asset(ImageLoc.banner),
                            );
                          }
                          return Image.asset(ImageLoc.banner);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    gradient: customLinearGradient(),
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        bottomRight: Radius.circular(100))),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 8),
                                  child: Icon(
                                    Icons.museum_rounded,
                                    color: Warna.white,
                                  ),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customText(
                                    "Let’s Go with Jakarta Tourist Pass"),
                                customText("a place not to be missed",
                                    fontWeight: FontWeight.normal)
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: customText("View All",
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Column(
                            children: [
                              customText("Did You ", fontSize: 16),
                              customText("Know?", fontSize: 16),
                              Image.asset(ImageLoc.mapSlide)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 210,
                          width: fullWidth(context) - 110,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              double left = 20;
                              if (index == 0) {
                                left = 10;
                              }
                              return Padding(
                                padding:
                                    EdgeInsets.only(left: left, bottom: 10),
                                child: Container(
                                    width: 160,
                                    decoration: BoxDecoration(
                                        color: Warna.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [customBoxShadowBtn()]),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          ImageLoc.wahana,
                                          fit: BoxFit.fill,
                                          width: 160,
                                        ),
                                        Container(
                                         decoration: BoxDecoration(
                                           color: Warna.white,
                                           borderRadius: BorderRadius.circular(10)
                                         ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom:8.0),
                                            child: Column(
                                              children: [
                                                customText("Ancol Entrance Gate",
                                                    fontSize: 11),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      right: 8.0),
                                                  child: Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          decoration: BoxDecoration(
                                                              gradient:
                                                                  customLinearGradient(),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    vertical: 2.0,
                                                                    horizontal:
                                                                        4),
                                                            child: customText(
                                                                "Detail",
                                                                fontSize: 10,
                                                                textColor:
                                                                    Warna.white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                          ))),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    gradient: customLinearGradient(),
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(100),
                                        bottomRight: Radius.circular(100))),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 8),
                                  child: Icon(
                                    Icons.museum_rounded,
                                    color: Warna.white,
                                  ),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customText("Events in Jakarta"),
                                customText("don't miss the current events",
                                    fontWeight: FontWeight.normal)
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: customText("View All",
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      height: 180,
                      width: fullWidth(context),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          double left = 20;
                          if (index == 0) {
                            left = 40;
                          }
                          return Padding(
                            padding: EdgeInsets.only(left: left, bottom: 10),
                            child: Container(
                                width: 220,
                                decoration: BoxDecoration(
                                    color: Warna.white,
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: customLinearGradientSoftYellow(),
                                    boxShadow: [customBoxShadowBtn()]),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      ImageLoc.concert,
                                      fit: BoxFit.fill,
                                      width: 200,
                                    ),
                                    Container(
                                      color: Warna.white,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0),
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        gradient:
                                                            customLinearGradient(),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 2.0,
                                                          horizontal: 4),
                                                      child: customText(
                                                          "More Information",
                                                          fontSize: 10,
                                                          textColor:
                                                              Warna.white,
                                                          fontWeight: FontWeight
                                                              .normal),
                                                    ))),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
                width: 100, height: 100, child: Image.asset(ImageLoc.taxiHelp)),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Stack(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                border: Border.all(width: 4, color: Warna.white),
                boxShadow: [customBoxShadowBtn()],
                gradient: customLinearGradient(),
                borderRadius: BorderRadius.circular(100)),
            child: Image.asset(ImageLoc.logoQRIS),
          ),
        ],
      ),
    );
  }
}
