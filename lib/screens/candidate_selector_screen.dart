import 'dart:ui';
import 'package:evoting/components/candidate_selector_card.dart';
import 'package:evoting/components/main_app_bar.dart';
import 'package:evoting/constants/color.dart';
import 'package:evoting/models/voting_candidate_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CandidateSelectorScreen extends StatefulWidget {
  const CandidateSelectorScreen({Key? key}) : super(key: key);

  @override
  _CandidateSelectorScreenState createState() =>
      _CandidateSelectorScreenState();
}

class _CandidateSelectorScreenState extends State<CandidateSelectorScreen> {
  var candidates;

  @override
  void initState() {
    super.initState();
    candidates = Get.arguments['candidates'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Pilih Calon"),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: this.candidates.length,
          itemBuilder: (ctx, index) {
            return CandidateSelectorCard(candidate: this.candidates[index]);
          },
        ),
      ),
    );
  }
}
