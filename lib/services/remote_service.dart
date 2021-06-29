import 'dart:convert';
import 'package:evoting/local_data.dart';
import 'package:evoting/models/user_model.dart';
import 'package:evoting/models/voting_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();
  static const baseUrl = "http://0d8a3402d779.ap.ngrok.io";

  static Future<List<Voting>> fetchAvailableVoting() async {
    var apiToken = await getStringFromSF('api_token');
    var response = await client
        .get(Uri.parse('$baseUrl/api/voting/available?api_token=$apiToken'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return dataVotingFromJson(jsonString);
    } else {
      throw Exception("gagal mengambil data");
    }
  }

  static Future<List<Voting>> fetchVotingHistory() async {
    var apiToken = await getStringFromSF('api_token');
    var response = await client
        .get(Uri.parse('$baseUrl/api/voting/history?api_token=$apiToken'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return dataVotingFromJson(jsonString);
    } else {
      throw Exception("gagal mengambil data");
    }
  }

  static Future<bool> attempLogin(
      TextEditingValue email, TextEditingValue password) async {
    var response = await client.post(Uri.parse('$baseUrl/api/login'), body: {
      "email": email.text,
      "password": password.text,
    });
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var data = json.decode(jsonString);
      if (data["api_token"] != null) {
        addStringToSF("api_token", data["api_token"]);
        return true;
      }
      return false;
    }
    return false;
  }

  static Future<List<User>> fetchUserData() async {
    var apiToken = await getStringFromSF('api_token');
    var response =
        await client.get(Uri.parse('$baseUrl/api/user?api_token=$apiToken'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return dataUserFromJson(jsonString);
    } else {
      throw Exception("gagal mengambil data");
    }
  }

  static Future<bool> changePassword(String password) async {
    var apiToken = await getStringFromSF('api_token');
    var response = await client.post(
        Uri.parse('$baseUrl/api/reset-password?api_token=$apiToken'),
        body: {
          "password": password,
        });
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var data = json.decode(jsonString);
      return data["status"] == "success";
    }
    return false;
  }

  static Future<bool> attempVote(int votingId, int votingCandidateId) async {
    var apiToken = await getStringFromSF('api_token');
    var response = await client
        .post(Uri.parse('$baseUrl/api/voting/vote?api_token=$apiToken'), body: {
      "voting_id": votingId.toString(),
      "voting_candidate_id": votingCandidateId.toString(),
    });
    if (response.statusCode == 201) {
      var jsonString = response.body;
      return jsonString.isNotEmpty;
    }
    return false;
  }
}
