import 'package:evoting/components/candidate_count_card.dart';
import 'package:evoting/components/candidate_score.dart';
import 'package:evoting/components/primary_button.dart';
import 'package:evoting/components/start_voting_button.dart';
import 'package:evoting/components/winner_card.dart';
import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class CandidateSelectorCard extends StatelessWidget {
  const CandidateSelectorCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
              "Calon 1",
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
                    child: Image.asset(
                      "assets/images/person.jpg",
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
                        ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        width: double.infinity,
                        child: PrimaryButton(
                          text: "Pilih Calon Ini",
                          padding: 5,
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
    );
  }
}
