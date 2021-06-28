import 'package:evoting/components/candidate_count_card.dart';
import 'package:evoting/components/start_voting_button.dart';
import 'package:evoting/constants/color.dart';
import 'package:evoting/models/voting_model.dart';
import 'package:flutter/material.dart';

class VotingCard extends StatelessWidget {
  final Voting voting;

  const VotingCard({
    Key? key,
    required this.voting,
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
              this.voting.name,
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
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        this.voting.logo,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CandidateCountCard(),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Icon(Icons.timer),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        this.voting.finishedAt,
                        style: TextStyle(fontSize: 14),
                        overflow: TextOverflow.visible,
                      ),
                    )
                  ],
                )),
                SizedBox(width: 10),
                Expanded(
                  child: StartVotingButton(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
