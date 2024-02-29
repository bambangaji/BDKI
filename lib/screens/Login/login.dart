import 'package:bdki/service/auth_service.dart';
import 'package:bdki/service/routing_service.dart';
import 'package:bdki/utils/ImageLoc.dart';
import 'package:bdki/utils/color_custom.dart';
import 'package:bdki/utils/constant.dart';
import 'package:bdki/utils/custom_gradient.dart';
import 'package:bdki/utils/custom_text.dart';
import 'package:bdki/utils/custom_widget.dart';
import 'package:bdki/utils/loading.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class LoginPage extends StatefulWidget {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formLoginKey = GlobalKey<FormState>();
  LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
  doLogin(BuildContext context) async {
    if (!_formLoginKey.currentState!.validate()) {
      return showToastError();
    }
    showLoading(context);
    resetFormLogin();
    saveLogin("Guest");
    hideLoading(context);
  }

  resetFormLogin() {
    _formLoginKey.currentState!.reset();
    userNameController.text = "";
    passwordController.text = "";
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Warna.white,
      floatingActionButton: Container(
        child: Image.asset(ImageLoc.taxiHelp),
      ),
      body: SizedBox(
        height: fullHeight(context),
        width: fullWidth(context),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Warna.white,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(
                                  0, 4), // Horizontal and vertical offset
                              blurRadius: 4, // Blur radius
                              spreadRadius: 0, // Spread radius
                              color: Color(
                                  0x40000000), // Color with alpha (0x40 for 25% opacity)
                            )
                          ]),
                      child: Row(
                        children: [
                          Image.asset(
                            ImageLoc.id,
                            fit: BoxFit.contain,
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            ImageLoc.eng,
                            fit: BoxFit.contain,
                            width: 40,
                            height: 40,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Warna.white,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(
                                  0, 4), // Horizontal and vertical offset
                              blurRadius: 4, // Blur radius
                              spreadRadius: 0, // Spread radius
                              color: Color(
                                  0x40000000), // Color with alpha (0x40 for 25% opacity)
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Row(
                          children: [
                            Icon(Icons.credit_card),
                            SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              ImageLoc.jakcard,
                              fit: BoxFit.contain,
                              width: 40,
                              height: 25,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: fullHeight(context) / 1.5,
                  width: fullWidth(context),
                  child: Column(
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            Image.asset(
                              ImageLoc.logoLoc,
                              height: fullHeight(context) / 2.4 - 40,
                            ),
                            Positioned(
                              bottom: 15,
                              right: 0,
                              left: 0,
                              // width: fullWidth(context),
                              child: Center(
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Warna.orange,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 5),
                                    child: customText("Monumen Nasional",
                                        textColor: Warna.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      customText("Explore Jakarta with Jakarta Tourist Pass",
                          textColor: Warna.red),
                      SizedBox(
                          width: fullWidth(context),
                          child: Padding(
                            padding: EdgeInsets.all(fullWidth(context) / 15),
                            child: Form(
                              key: widget._formLoginKey,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () => goToDashboard(context),
                                    child: Container(
                                      width: fullWidth(context),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                            color: Warna.yellow, width: 2),
                                        gradient: customLinearGradient(),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 8),
                                        child: Center(
                                          child: Text(
                                            "Continue as a Guest",
                                            style: TextStyle(
                                                color: Warna.white,
                                                fontSize: 26),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () => goToDashboard(context),
                                    child: Container(
                                      width: fullWidth(context),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                            color: Warna.red, width: 2),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 8),
                                        child: Center(
                                          child: Text(
                                            "Continue as a Guest",
                                            style: TextStyle(
                                                color: Warna.red, fontSize: 26),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
