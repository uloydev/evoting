import 'package:evoting/constants/color.dart';
import 'package:flutter/material.dart';

class LoginTextInput extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final bool isObsecure;
  final TextEditingController controller;

  const LoginTextInput({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.isObsecure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: lightgreyColor,
      ),
      child: TextFormField(
        controller: this.controller,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.emailAddress,
        obscureText: this.isObsecure,
        autofocus: false,
        // initialValue: 'alucard@gmail.com',
        decoration: InputDecoration(
          hintText: this.hintText,
          contentPadding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: this.prefixIcon,
        ),
      ),
    );
  }
}
