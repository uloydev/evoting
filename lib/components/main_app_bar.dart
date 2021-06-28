import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

AppBar mainAppBar(String title) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
    backgroundColor: primaryColor,
  );
}
