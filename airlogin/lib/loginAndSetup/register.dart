// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:airlogin/constant.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
              icon: tBack,
              iconSize: 20,
            ),
          ),
          //image
          Image.asset(
            'assets/images/airlogo.png',
            height: 180,
            width: 410,
          ),
          //Blue gradient Container
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              gradient: const LinearGradient(colors: [tgradbut1, tgradbut2]),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5),
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: tWhite,
                      fontSize: 20,
                    ),
                  ),
                ),
                //Row for First and Last Name
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Container(
                        width: 150,
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 10,
                            color: tWhite,
                          ),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            prefixIcon: tProfile,
                            prefixIconColor: tWhite,
                            labelText: 'First Name',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Container(
                        width: 150,
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 10,
                            color: tWhite,
                          ),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Last Name',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //Column for other Information
                //EMAIL
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 10,
                            color: tWhite,
                          ),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            prefixIcon: tMail,
                            prefixIconColor: tWhite,
                            labelText: 'Email',
                          ),
                        ),
                      ),
                    ),
                    //PASSWORD
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 10,
                            color: tWhite,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              prefixIcon: tPass,
                              prefixIconColor: tWhite,
                              labelText: 'Password',
                              hintStyle: TextStyle(
                                color: tWhite,
                              )),
                        ),
                      ),
                    ),
                    //CONFIRM PASSWORD
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 10,
                            color: tWhite,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              prefixIcon: tPass2,
                              prefixIconColor: tWhite,
                              labelText: 'Confirm Password',
                              hintStyle: TextStyle(
                                color: tWhite,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                //CONTINUE
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 25,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: tWhite,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyApp()));
                      },
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 10,
                          color: tBlack,
                        ),
                      ),
                    ),
                  ),
                ),
                //Divider
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          "or",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                ),
                //GOOGLE
                Container(
                  height: 25,
                  width: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tWhite,
                  ),
                  child: Row(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/google.png',
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Register with Google',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //ALREADY REGISTERED?
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 100),
                  child: Row(
                    children: [
                      Text(
                        "Already Registered?",
                        style: TextStyle(
                          fontSize: 10,
                          color: tBlack,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MyApp()));
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(color: tWhite, fontSize: 10),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
