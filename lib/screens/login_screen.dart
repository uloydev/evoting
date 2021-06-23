import 'package:evoting/components/login_text_input.dart';
import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: greyColor,
          margin: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 30,
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 48),
                LoginTextInput(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.mail_outline),
                ),
                SizedBox(height: 24),
                LoginTextInput(
                  prefixIcon: Icon(Icons.vpn_key),
                  hintText: "Password",
                  isObsecure: true,
                ),
                SizedBox(height: 48),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
                  onPressed: () {},
                  color: primaryColor,
                  child: Text(
                    "login",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
