import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class AlreadyVotedButton extends StatelessWidget {
  const AlreadyVotedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(5),
      color: secondaryColor,
      child: Text(
        "Already Voted",
        style: TextStyle(
          color: lightgreyColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
