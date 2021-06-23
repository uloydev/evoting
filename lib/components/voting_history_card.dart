import 'package:evoting/components/candidate_count_card.dart';
import 'package:evoting/components/candidate_score.dart';
import 'package:evoting/components/start_voting_button.dart';
import 'package:evoting/components/winner_card.dart';
import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class VotingHistoryCard extends StatelessWidget {
  const VotingHistoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: greyColor,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              "Pemira BEM",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/images/logo_bem.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                WinnerCard(),
              ],
            ),
            SizedBox(height: 15),
            CandidateScore(),
            SizedBox(height: 15),
            CandidateScore(),
            SizedBox(height: 15),
            Row(
              children: [
                Icon(Icons.timer),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "voted at 22-06-2021",
                  style: TextStyle(fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
