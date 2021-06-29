import 'dart:convert';

import 'package:evoting/models/voting_candidate_model.dart';

List<Voting> dataVotingFromJson(String str) =>
    List<Voting>.from(json.decode(str).map((item) => Voting.fromJson(item)));

String dataVotingToJson(List<Voting> data) =>
    json.encode(List<dynamic>.from(data.map((item) => item.toJson())));

class Voting {
  int id;
  String logo;
  String finishedAt;
  String name;
  List<VotingCandidate> candidates;
  int votesCount;
  bool isVoted;

  Voting({
    required this.id,
    required this.logo,
    required this.finishedAt,
    required this.name,
    required this.candidates,
    required this.votesCount,
    required this.isVoted,
  });

  factory Voting.fromJson(Map<String, dynamic> data) => Voting(
        id: data['id'],
        logo: data['logo'],
        name: data['name'],
        finishedAt: data['finished_at'],
        votesCount: data['votes_count'],
        isVoted: data['is_voted'],
        candidates:
            dataVotingCandidateFromJson(json.encode(data['voting_candidates'])),
      );

  Map<String, dynamic> toJson() => {
        "id": this.id,
        "logo": this.logo,
        "name": this.name,
        "finished_at": this.finishedAt,
      };
}
