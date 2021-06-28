import 'package:evoting/models/voting_model.dart';
import 'package:evoting/services/remote_service.dart';
import 'package:get/state_manager.dart';

class VotingController extends GetxController {
  var isLoading = true.obs;
  var votingList = List<Voting>.empty(growable: true).obs;

  @override
  void onInit() {
    super.onInit();
  }

  void fetchAvailableVoting() async {
    try {
      isLoading(true);
      var votings = await RemoteServices.fetchAvailableVoting();
      if (votings.isNotEmpty) {
        votingList.value = votings;
      }
    } finally {
      isLoading(false);
    }
  }

  void fetchVotingHistory() async {
    try {
      isLoading(true);
      var votings = await RemoteServices.fetchVotingHistory();
      if (votings.isNotEmpty) {
        votingList.value = votings;
      }
    } finally {
      isLoading(false);
    }
  }
}
