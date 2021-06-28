import 'dart:convert';

import 'package:evoting/local_data.dart';
import 'package:evoting/models/user_model.dart';
import 'package:evoting/models/voting_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();
  static const baseUrl = "http://9b9f914ba30a.ap.ngrok.io";
  static const apiToken =
      "kAKvL9ALlDW0QlmXjXue54qJCehMRQaD1sqckzgwA2ljuJvUVvWAkMfhUqa4";

  static Future<List<Voting>> fetchAvailableVoting() async {
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
}
