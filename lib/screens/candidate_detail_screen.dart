import 'dart:ui';
import 'package:evoting/components/main_app_bar.dart';
import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CandidateDetailScreen extends StatefulWidget {
  const CandidateDetailScreen({Key? key}) : super(key: key);

  @override
  _CandidateDetailScreenState createState() => _CandidateDetailScreenState();
}

class _CandidateDetailScreenState extends State<CandidateDetailScreen> {
  var candidate;

  @override
  void initState() {
    super.initState();
    candidate = Get.arguments['candidate'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Detail Calon"),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: ListView(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.network(
                  this.candidate.image,
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              this.candidate.name,
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
                      this.candidate.visi,
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
                      this.candidate.misi,
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
