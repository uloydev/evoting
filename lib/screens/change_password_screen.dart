import 'package:evoting/components/main_app_bar.dart';
import 'package:evoting/components/primary_button.dart';
import 'package:evoting/components/profile_input.dart';
import 'package:evoting/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar('Change Password'),
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
              controller: this.passwordController,
              hint: "New Password",
              isObsecure: true,
            ),
            SizedBox(height: 20),
            ProfileInput(
              controller: this.passwordConfirmController,
              hint: "Confirm New Password",
              isObsecure: true,
            ),
            SizedBox(height: 40),
            PrimaryButton(
              text: "Save",
              onPressed: () async {
                if (this.passwordController.text ==
                    this.passwordConfirmController.text) {
                  if (await RemoteServices.changePassword(
                      this.passwordController.text)) {
                    Get.snackbar(
                      "Success",
                      "Berhasil Mengganti Password",
                    );
                    this.passwordController.text = "";
                    this.passwordConfirmController.text = "";
                  } else {
                    Get.snackbar(
                      "Error",
                      "Gagal Mengganti Password",
                    );
                  }
                } else {
                  Get.snackbar(
                    "Error",
                    "password baru dan konfirm password baru tidak sama.",
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
