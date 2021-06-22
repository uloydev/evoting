import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

const primaryGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [secondaryColor, primaryColor],
  stops: [0.4, 1.0],
);
