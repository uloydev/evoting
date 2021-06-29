import 'dart:async';
import 'package:evoting/local_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () async {
      if (await getStringFromSF("api_token") == null) {
        Get.offNamed('/login');
      } else {
        Get.offNamed('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/images/voting.png"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "E-Voting",
              style: TextStyle(
                fontSize: 48,
              ),
            )
          ],
        ),
      ),
    );
  }
}
