import 'package:evoting/constants/color.dart';
import 'package:evoting/local_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar mainAppBar(String title) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          removeStringFromSF("api_token");
          Get.offAllNamed("/login");
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(
            Icons.logout,
            color: Colors.white,
          ),
        ),
      ),
    ],
    backgroundColor: primaryColor,
  );
}
