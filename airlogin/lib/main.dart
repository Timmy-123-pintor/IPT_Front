import 'package:airlogin/constant.dart';
import 'package:flutter/material.dart';
import 'loginAndSetup/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Air Wave Login",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "AirWave Login",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: tWhite,
            ),
          ),
        ),
        body: const Login(),
      ),
    );
  }
}
