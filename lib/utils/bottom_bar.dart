import 'package:bdki/utils/color_custom.dart';
import 'package:bdki/utils/custom_gradient.dart';
import 'package:flutter/material.dart';

BottomAppBar customBottomBar() {
  return BottomAppBar(
    height: 50,
    color: Colors.white10,
    shape: CircularNotchedRectangle(),
    elevation: 10,
    notchMargin: 10.0,
    child: new Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
        SizedBox(),
        IconButton(
          icon: Icon(
            Icons.person,
            // size: 40,
          ),
          onPressed: () {},
        )
      ],
    ),
  );
}

Widget buildBottomAppBar() {
  return Container(
    height: 60.0, // Adjust height as needed
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5.0,
          blurRadius: 7.0,
          offset: const Offset(0, 3.0), // Adjust offset for shadow placement
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.red,
            size: 32,
          ),
          onPressed: () => null,
        ),
        SizedBox(),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: customLinearGradient(),
                  borderRadius: BorderRadius.circular(100)),
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 32,
              ),
            )),
      ],
    ),
  );
}
