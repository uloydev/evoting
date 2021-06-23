import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Color color;
  final String text;

  const PrimaryButton({
    Key? key,
    this.color = primaryColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(15),
      color: this.color,
      child: Text(
        this.text,
        style: TextStyle(
          color: lightgreyColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
