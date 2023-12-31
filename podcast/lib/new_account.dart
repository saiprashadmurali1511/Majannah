import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_page.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmNewPasswordController =
  TextEditingController();
  bool obscureTextNewPassword = true; // Individual for New Password
  bool obscureTextConfirmPassword = true; // Individual for Confirm Password

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Positioned(
                top: 50,
                left: 10,
                child: IconButton(
                  onPressed: () {
                    Get.back(); // Navigate back using GetX
                  },
                  icon: Icon(Icons.arrow_back), // You can use any back icon
                ),
              ),
              Image.asset('assets/images/synchronize.png'),
              SizedBox(height: 20),
              Text(
                "Create New Password",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                """Your new password must be different
   from previously used passwords.""",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 30),
              Text(
                'Must be at least 8 characters.',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  controller: newPasswordController,
                  decoration: InputDecoration(
                    labelText: 'New Password',
                    border: OutlineInputBorder(),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        toggleNewPasswordVisibility();
                      },
                      child: Image.asset('assets/images/Path 5638.png'),
                    ),
                  ),
                  obscureText: obscureTextNewPassword, // Use individual obscureText
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  controller: confirmNewPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Confirm New Password',
                    border: OutlineInputBorder(),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        toggleConfirmPasswordVisibility();
                      },
                      child: Image.asset('assets/images/Path 5638.png'),
                    ),
                  ),
                  obscureText: obscureTextConfirmPassword, // Use individual obscureText
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 370,
              ),
              ElevatedButton(
                onPressed: () {
                  // Check if passwords match before navigating to LoginWidget
                  String newPassword = newPasswordController.text;
                  String confirmNewPassword =
                      confirmNewPasswordController.text;
                  if (newPassword == confirmNewPassword) {
                    // Passwords match, navigate to LoginWidget
                    Get.to(() => LoginWidget());
                  } else {
                    // Passwords do not match, show an error message
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Password Mismatch'),
                          content:
                          Text('The entered passwords do not match.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text(
                  'Reset Password',
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 57),
                  primary: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
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

void main() {
  runApp(NewPage());
}
