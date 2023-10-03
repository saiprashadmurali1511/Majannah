import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Verify extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VerifyState();
  }
}

class VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Get.back();
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 0),
              Image.asset(
                'assets/images/smartphone (1).png',
                alignment: Alignment.topCenter,
                height: 100, // Adjust the image height as needed
              ),
              SizedBox(height: 10), // Add spacing between image and text
              Text(
                "Verification Code",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10), // Add spacing between text and description
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black, // You can adjust the text color
                    ),
                    children: [
                      TextSpan(
                        text: "We sent an email to ",
                      ),
                      TextSpan(
                        text: "mohammadbilal@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                        " with your verification code. A verified email allows you to recover your account if your password is lost.",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the rows horizontally
                  children: [
                    SizedBox(width: 10),
                    Container(
                      height: 96,
                      width: 77,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFE1E1E1), // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 54,
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: null,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),

                    Container(
                      height: 96,
                      width: 77,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFE1E1E1), // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 54,
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: null,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),

                    Container(
                      height: 96,
                      width: 77,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFE1E1E1), // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 54,
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: null,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),

                    Container(
                      height: 96,
                      width: 77,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFE1E1E1), // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 54,
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: null,
                        ),
                      ),
                    ),
                    // Add more Container widgets with text fields as needed
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn\'t get the code?',
                    style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF114769),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                """Or go back to the previous screen 
   with another email address.""",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
