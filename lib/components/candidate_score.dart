import 'package:evoting/constants/color.dart';
import 'package:evoting/models/voting_candidate_model.dart';
import 'package:flutter/material.dart';

class CandidateScore extends StatelessWidget {
  final VotingCandidate candidate;

  const CandidateScore({
    Key? key,
    required this.candidate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Container(
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
                  this.candidate.name,
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
                  "${this.candidate.votesCount} votes",
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
      ),
    );
  }
}
