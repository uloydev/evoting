import 'dart:convert';

List<User> dataUserFromJson(String str) =>
    List<User>.from(json.decode(str).map((item) => User.fromJson(item)));

String dataUserToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((item) => item.toJson())));

class User {
  int id;
  String name;
  String email;

  User({
    required this.id,
    required this.name,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> data) => User(
        id: data['id'],
        name: data['name'],
        email: data['email'],
      );

  Map<String, dynamic> toJson() => {
        "id": this.id,
        "name": this.name,
        "email": this.email,
      };
}
