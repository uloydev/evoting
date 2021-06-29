import 'package:evoting/components/primary_button.dart';
import 'package:evoting/components/profile_input.dart';
import 'package:evoting/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  UserController userController = Get.put(UserController());

  @override
  void initState() {
    super.initState();
    this.userController.fetchUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Obx(() {
        if (userController.isLoading.value)
          return Center(child: CircularProgressIndicator());
        else
          return ListView.builder(
              itemCount: userController.user.length,
              itemBuilder: (ctx, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      initialValue: userController.user[index].name,
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
                      initialValue: userController.user[index].email,
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: PrimaryButton(
                        text: "Change Password",
                        onPressed: () {
                          Get.toNamed('/change-password');
                        },
                      ),
                    ),
                  ],
                );
              });
      }),
    );
  }
}
