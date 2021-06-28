import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:evoting/components/voting_card.dart';
import 'package:evoting/constants/color.dart';
import 'package:evoting/constants/widget.dart';
import 'package:evoting/controllers/voting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  VotingController votingController = Get.put(VotingController());

  @override
  void initState() {
    super.initState();
    this.votingController.fetchAvailableVoting();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Obx(() {
          if (votingController.isLoading.value)
            return Center(child: CircularProgressIndicator());
          else
            return ListView.builder(
              itemCount: votingController.votingList.length,
              itemBuilder: (ctx, index) {
                if (index == 0) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: Text(
                          "Available Voting",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: VotingCard(
                          voting: votingController.votingList[index],
                        ),
                      ),
                    ],
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: VotingCard(
                      voting: votingController.votingList[index],
                    ),
                  );
                }
              },
            );
        }),
      ),
    );
  }
}
