import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class CandidateScore extends StatelessWidget {
  const CandidateScore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryColor,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(5),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "calon 1",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: lightgreyColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Text(
                "80",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: lightgreyColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
