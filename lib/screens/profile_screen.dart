import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:evoting/components/primary_button.dart';
import 'package:evoting/components/profile_input.dart';
import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: primaryColor,
        items: <Widget>[
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.compare_arrows,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () => {},
        ),
        centerTitle: true,
        title: Text(
          'Profile',
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
            Text(
              "Nama Lengkap",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            ProfileInput(
              isReadOnly: true,
              initialValue: "Uloydev",
            ),
            SizedBox(height: 20),
            Text(
              "Email",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            ProfileInput(
              isReadOnly: true,
              initialValue: "uloydev@gmail.com",
            ),
            SizedBox(height: 20),
            Text(
              "ID Number",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            ProfileInput(
              isReadOnly: true,
              initialValue: "123456789",
            ),
            SizedBox(height: 40),
            PrimaryButton(text: "Change Password"),
          ],
        ),
      ),
    );
  }
}
