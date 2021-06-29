import 'package:flutter/material.dart';

class ProfileInput extends StatelessWidget {
  final bool isObsecure;
  final bool isReadOnly;
  final String hint;
  final String? initialValue;
  final TextInputType keyboardType;
  final TextEditingController? controller;

  const ProfileInput({
    Key? key,
    this.isReadOnly = false,
    this.isObsecure = false,
    this.initialValue,
    this.hint = "",
    this.keyboardType = TextInputType.text,
    this.controller,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: TextFormField(
        controller: this.controller,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: this.keyboardType,
        autofocus: false,
        readOnly: this.isReadOnly,
        obscureText: this.isObsecure,
        initialValue: this.initialValue,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        // initialValue: 'alucard@gmail.com',
        decoration: InputDecoration(
          hintText: this.hint,
          contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
