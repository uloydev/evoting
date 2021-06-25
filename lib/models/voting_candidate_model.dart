import 'dart:convert';

List<VotingCandidate> dataVotingCandidateFromJson(String str) =>
    List<VotingCandidate>.from(
        json.decode(str).map((item) => VotingCandidate.fromJson(item)));

String dataVotingCandidateToJson(List<VotingCandidate> data) =>
    json.encode(List<dynamic>.from(data.map((item) => item.toJson())));

class VotingCandidate {
  int id;
  String name;
  String image;
  String visi;
  String misi;
  int votingId;
  int votesCount;

  VotingCandidate({
    required this.id,
    required this.name,
    required this.image,
    required this.visi,
    required this.misi,
    required this.votingId,
    required this.votesCount,
  });

  factory VotingCandidate.fromJson(Map<String, dynamic> data) =>
      VotingCandidate(
        id: data['id'],
        name: data['name'],
        image: data['image'],
        visi: data['visi'],
        misi: data['misi'],
        votingId: data['voting_id'],
        votesCount: data['user_votes_count'],
      );

  Map<String, dynamic> toJson() => {
        "id": this.id,
        "name": this.name,
        "image": this.image,
        "visi": this.visi,
        "misi": this.misi,
        "voting_id": this.votingId,
      };
}
