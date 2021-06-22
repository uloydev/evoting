import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
