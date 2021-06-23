import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class WinnerCard extends StatelessWidget {
  const WinnerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "Winner",
              style: TextStyle(
                color: lightgreyColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(
                "assets/images/logo_bem.png",
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
