import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final double padding;

  const PrimaryButton({
    Key? key,
    this.color = primaryColor,
    this.textColor = lightgreyColor,
    this.padding = 15,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(this.padding),
      color: this.color,
      child: Text(
        this.text,
        style: TextStyle(
          color: this.textColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
