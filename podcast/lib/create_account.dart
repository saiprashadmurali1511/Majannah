import 'package:Majannah/verification.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
//import 'package:podcast/verification.dart';

class setup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return setupState();
  }
}

class setupState extends State<setup> {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmNewPasswordController =
  TextEditingController();
  bool obscureTextNewPassword = true; // Individual for New Password
  bool obscureTextConfirmPassword = true;

  void toggleNewPasswordVisibility() {
    setState(() {
      obscureTextNewPassword = !obscureTextNewPassword;
    });
  }

  void toggleConfirmPasswordVisibility() {
    setState(() {
      obscureTextConfirmPassword = !obscureTextConfirmPassword;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 40,left: 20),
              child: GestureDetector(
              onTap: () {
        Get.back(); // Navigate back when the back button is pressed
        },
              child: Image.asset(
                      'assets/images/Path 5637.png',
                      width: 30, // Adjust the width as needed
                      height: 20, // Adjust the height as needed
                    ),
                  ),
                ),
                ],
    ),
                SizedBox(height: 10),
                Image.asset(
                  'assets/images/Mask Group 63.png',
                  alignment: Alignment.topCenter,
                  width: 100,
                  height: 80,
                ),
                Text('Set Up Your Account',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text("""Create a free account listen to meditations,
               poetry, music, and more.""",
                    style: TextStyle(fontSize: 14)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            SizedBox(
                              height: 57,
                              width: 300,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Email ID',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 57,
                              width: 300,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder(),
                                  suffixIcon:GestureDetector(
                                    onTap: () {
                                      toggleNewPasswordVisibility();
                                    },
                                  child:Image.asset('assets/images/Path 5638.png'),
                                ),
                                ),
                                obscureText: obscureTextNewPassword,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 57,
                              width: 300,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Confirm Password',
                                  border: OutlineInputBorder(),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      toggleConfirmPasswordVisibility();
                                    },
                                 child: Image.asset('assets/images/Path 5638.png'),
                                ),
                                ),
                                obscureText: obscureTextConfirmPassword,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 57,
                              width: 300,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xFF114769), Color(0xFF092435)],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.to(Verify(),transition: Transition.rightToLeft);
                                },
                                child: Text('Continue',
                                  style: TextStyle(
                                      fontSize: 16
                                  ),),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(370, 57),
                                  primary: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('By continuing, you agree to Podcats\'s'),
                                  Text(
                                    'Terms & conditions',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Padding(padding: EdgeInsets.only(top: 2.0, bottom: 20.0)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('or'),
                              ],
                            ),
                            SizedBox(height: 30),
                            Container(
                              height: 57,
                              width: 370,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF000000),
                                  elevation: 2,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/Path-5634-_1_ (1).png'),
                                    SizedBox(width: 11.64),
                                    Text(
                                      'Sign in with Apple',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 57,
                              width: 370,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFE16666),
                                  elevation: 2,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/Path 5635.png'),
                                    SizedBox(width: 11.64),
                                    Text(
                                      'Sign-in with Google',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 57,
                              width: 370,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF1877F2),
                                  elevation: 2,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/Path 5636.png'),
                                    SizedBox(width: 11.64),
                                    Text(
                                      'Sign-in with Facebook',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}