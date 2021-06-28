import 'package:evoting/components/candidate_score.dart';
import 'package:evoting/components/winner_card.dart';
import 'package:evoting/constants/color.dart';
import 'package:evoting/models/voting_model.dart';
import 'package:flutter/material.dart';

class VotingHistoryCard extends StatelessWidget {
  final Voting voting;

  const VotingHistoryCard({
    Key? key,
    required this.voting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Card(
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
                  WinnerCard(winner: this.voting.candidates.first),
                ],
              ),
              SizedBox(height: 15),
              ...getCandidateScore(this.voting.candidates),
            ],
          ),
        ),
      ),
    );
  }

  List getCandidateScore(List candidates) {
    List widgetList = [];

    for (var candidate in candidates) {
      widgetList.add(CandidateScore(candidate: candidate));
    }

    return widgetList;
  }
}
