import 'package:evoting/components/primary_button.dart';
import 'package:evoting/constants/color.dart';
import 'package:evoting/controllers/voting_controller.dart';
import 'package:evoting/models/voting_candidate_model.dart';
import 'package:evoting/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CandidateSelectorCard extends StatelessWidget {
  final VotingCandidate candidate;

  const CandidateSelectorCard({
    Key? key,
    required this.candidate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: greyColor,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                this.candidate.name,
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
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        this.candidate.image,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: PrimaryButton(
                            text: "Lihat Visi Misi",
                            padding: 5,
                            color: Colors.white,
                            textColor: primaryColor,
                            onPressed: () {
                              Get.toNamed('/candidate-detail',
                                  arguments: {"candidate": this.candidate});
                            },
                          ),
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          width: double.infinity,
                          child: PrimaryButton(
                            text: "Pilih Calon Ini",
                            padding: 5,
                            onPressed: () async {
                              if (await RemoteServices.attempVote(
                                  this.candidate.votingId, this.candidate.id)) {
                                Get.find<VotingController>()
                                    .fetchAvailableVoting();
                                Get.offAllNamed('/home');
                              } else {
                                Get.snackbar(
                                  "Error",
                                  "Gagal melakukan vote!",
                                );
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
