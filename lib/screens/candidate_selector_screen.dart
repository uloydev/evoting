import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:evoting/components/candidate_score.dart';
import 'package:evoting/components/candidate_selector_card.dart';
import 'package:evoting/components/primary_button.dart';
import 'package:evoting/components/profile_input.dart';
import 'package:evoting/components/voting_history_card.dart';
import 'package:evoting/components/winner_card.dart';
import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class CandidateSelectorScreen extends StatefulWidget {
  const CandidateSelectorScreen({Key? key}) : super(key: key);

  @override
  _CandidateSelectorScreenState createState() =>
      _CandidateSelectorScreenState();
}

class _CandidateSelectorScreenState extends State<CandidateSelectorScreen> {
  static const String lorem =
      'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () => {},
        ),
        centerTitle: true,
        title: Text(
          'Pilih Calon',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: primaryColor,
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          children: [
            SizedBox(height: 20),
            CandidateSelectorCard(),
            SizedBox(height: 20),
            CandidateSelectorCard(),
            SizedBox(height: 20),
            CandidateSelectorCard(),
            SizedBox(height: 20),
            CandidateSelectorCard(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
