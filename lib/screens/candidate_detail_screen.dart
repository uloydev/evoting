import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:evoting/components/candidate_score.dart';
import 'package:evoting/components/primary_button.dart';
import 'package:evoting/components/profile_input.dart';
import 'package:evoting/components/winner_card.dart';
import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class CandidateDetailScreen extends StatefulWidget {
  const CandidateDetailScreen({Key? key}) : super(key: key);

  @override
  _CandidateDetailScreenState createState() => _CandidateDetailScreenState();
}

class _CandidateDetailScreenState extends State<CandidateDetailScreen> {
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
          'Visi Misi',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: primaryColor,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: ListView(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.asset(
                  "assets/images/person.jpg",
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Calon 1",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: greyColor,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "Visi",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      lorem,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: greyColor,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "Misi",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      lorem,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
