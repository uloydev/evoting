import 'package:evoting/components/login_text_input.dart';
import 'package:evoting/constants/color.dart';
import 'package:evoting/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
                  controller: emailController,
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.mail_outline),
                ),
                SizedBox(height: 24),
                LoginTextInput(
                  controller: passwordController,
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
                  onPressed: () async {
                    if (await RemoteServices.attempLogin(
                        emailController.value, passwordController.value)) {
                      Get.offNamed('/home');
                    } else {
                      Get.snackbar(
                        "Error",
                        "email atau password salah",
                      );
                    }
                  },
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
