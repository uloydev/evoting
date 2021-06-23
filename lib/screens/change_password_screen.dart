import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:evoting/components/primary_button.dart';
import 'package:evoting/components/profile_input.dart';
import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreeen extends StatefulWidget {
  const ChangePasswordScreeen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreeenState createState() => _ChangePasswordScreeenState();
}

class _ChangePasswordScreeenState extends State<ChangePasswordScreeen> {
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
          'Change Password',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: primaryColor,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                "assets/images/profile_icon.png",
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(height: 20),
            ProfileInput(
              hint: "Old Password",
              isObsecure: true,
            ),
            SizedBox(height: 20),
            ProfileInput(
              hint: "New Password",
              isObsecure: true,
            ),
            SizedBox(height: 20),
            ProfileInput(
              hint: "Confirm New Password",
              isObsecure: true,
            ),
            SizedBox(height: 40),
            PrimaryButton(text: "Save"),
          ],
        ),
      ),
    );
  }
}
