import 'package:evoting/constants/color.dart';
import 'package:evoting/models/voting_candidate_model.dart';
import 'package:flutter/material.dart';

class WinnerCard extends StatelessWidget {
  final VotingCandidate winner;

  const WinnerCard({
    Key? key,
    required this.winner,
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
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                this.winner.image,
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
