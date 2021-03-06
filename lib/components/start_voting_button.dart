import 'package:evoting/constants/color.dart';
import 'package:evoting/models/voting_candidate_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartVotingButton extends StatelessWidget {
  final List<VotingCandidate> candidates;

  const StartVotingButton({
    Key? key,
    required this.candidates,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Get.toNamed('/candidate-selector',
            arguments: {"candidates": this.candidates});
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(5),
      color: secondaryColor,
      child: Text(
        "vote now",
        style: TextStyle(
          color: lightgreyColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
