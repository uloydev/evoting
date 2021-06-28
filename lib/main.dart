import 'package:evoting/screens/candidate_detail_screen.dart';
import 'package:evoting/screens/candidate_selector_screen.dart';
import 'package:evoting/screens/change_password_screen.dart';
import 'package:evoting/screens/login_screen.dart';
import 'package:evoting/screens/initial_screen.dart';
import 'package:evoting/screens/wrapper_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(EvotingApp());
}

class EvotingApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Evoting App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat",
      ),
      initialRoute: '/initial',
      routes: {
        '/home': (context) => WrapperScreen(),
        '/login': (context) => LoginScreen(),
        '/initial': (context) => InitialScreen(),
        '/candidate-selector': (context) => CandidateSelectorScreen(),
        '/candidate-detail': (context) => CandidateDetailScreen(),
        '/change-password': (context) => ChangePasswordScreen(),
      },
    );
  }
}
