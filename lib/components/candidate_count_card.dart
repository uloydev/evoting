import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class CandidateCountCard extends StatelessWidget {
  final int count;

  const CandidateCountCard({
    Key? key,
    required this.count,
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
              this.count.toString(),
              style: TextStyle(
                color: lightgreyColor,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "calon",
              style: TextStyle(
                color: lightgreyColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
