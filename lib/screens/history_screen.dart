import 'package:evoting/components/voting_history_card.dart';
import 'package:evoting/controllers/voting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  VotingController votingController = Get.put(VotingController());

  @override
  void initState() {
    super.initState();
    this.votingController.fetchVotingHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Obx(() {
        if (votingController.isLoading.value)
          return Center(child: CircularProgressIndicator());
        else
          return ListView.builder(
            itemCount: votingController.votingList.length,
            padding: EdgeInsets.all(20),
            itemBuilder: (ctx, index) {
              return VotingHistoryCard(
                voting: votingController.votingList[index],
              );
            },
          );
      }),
    );
  }
}
