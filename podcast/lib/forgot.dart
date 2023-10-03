import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';

import 'Sign_up.dart';


class ForgotPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgotPasswordState();
  }
}

class ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.topCenter,
            // Align the children at the top center
            children: [
              Positioned(
                top: 50, // Adjust the top value for proper positioning
                left: 10, // Adjust the right value for proper positioning
                child: GestureDetector(
                  onTap: () {
                    Get.back(); // Navigate back when the back button is pressed
                  },
                  child: Image.asset(
                    'assets/images/Path 5637.png',
                    width: 30, // Adjust the width as needed
                    height: 30, // Adjust the height as needed
                  ),
                ),
              ),
              Positioned(top: 100, child:
              Image.asset('assets/images/lock (2).png'),
              ),
              Positioned(
                top: 200,
                child: Text(
                  "Forgot password",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(left: 100.0,top: 10,bottom: 100)),
                  Positioned(
                    top: 100,
                    child: Text(
                      """   Don\'t worry, enter your email address 
below and we will send you a link to
  reset your password.""",
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center, // Center the text
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 370,
                    height: 57,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
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
                    onPressed: () {
                      Get.to(Signup(),transition: Transition.rightToLeft);
                    },
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(370, 57),
                      primary: Color(0xFF114769),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  ),
                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(ForgotPassword());
}
