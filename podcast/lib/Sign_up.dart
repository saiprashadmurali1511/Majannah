import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignupState();
  }
}

class SignupState extends State<Signup> {
  List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());
  List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());

  @override
  void dispose() {
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, left: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // Navigate back when the back button is pressed
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
                'assets/images/smartphone (1).png',
                alignment: Alignment.topCenter,
                height: 100, // Adjust the image height as needed
              ),
              SizedBox(height: 20), // Add spacing between image and text
              Text(
                "Verification Code",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20), // Add spacing between text and description
              Text(
                """We have sent the code verification
    to your email id.""",
                softWrap: true,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Center the rows horizontally
                children: List.generate(4, (index) {
                  return Container(
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
                        controller: controllers[index],
                        maxLength: 1,
                        style: TextStyle(
                          fontSize: 54,
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          // Automatically transition to the next OTP field after reaching its length limit
                          if (value.length == 1) {
                            if (index < 3) {
                              // Move focus to the next field
                              FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                            }
                          } else {
                            if (index > 0) {
                              // Move focus to the previous field if the current field is empty
                              FocusScope.of(context).requestFocus(focusNodes[index - 1]);
                            }
                          }
                        },
                        decoration: null,
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              Text(
                'Didn\'t get the code?',
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 5),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resend',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

