import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:podcast/create_account.dart';

import 'create_account.dart';
import 'forgot.dart';
import 'loading.dart';

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginWidgetState();
  }
}

class LoginWidgetState extends State<LoginWidget> {
  bool isChecked = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/Mask Group 63.png',
                  alignment: Alignment.topCenter,
                  width: 100,
                  height: 92,
                ),
                Text('Login',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text('Sign -in to your account',
                    style: TextStyle(fontSize: 16)),
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
                                ),
                                obscureText: true,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      activeColor: Colors.grey,
                                      value: isChecked,
                                      onChanged: (val) {
                                        setState(() {
                                          isChecked = val!;
                                        });
                                      },
                                    ),
                                    Text(
                                      'Remember me',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                // Navigate to the ForgotPassword page when clicked
                                Padding(padding: EdgeInsets.only(left: 70.0)),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(() => ForgotPassword(),
                                          transition: Transition.rightToLeft);
                                    },
                                    child: const Text(
                                      'Forgot password?',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            isLoading
                                ? CircularProgressIndicator()
                                : Container(
                              height: 57,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF114769),
                                    Color(0xFF092435)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  Future.delayed(
                                    Duration(seconds: 2),
                                        () {
                                      setState(() {
                                        isLoading = false;
                                      });
                                      Get.to(Loader(),
                                          transition: Transition.native);
                                    },
                                  );
                                },
                                child: Text('Login'),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(370, 57),
                                  primary: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 19),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 10), // Added for spacing
                                  Text(
                                    'Don\'t have an account?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(() => setup(),
                                          transition: Transition.rightToLeft);
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 25.0, bottom: 20.0)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('or'),
                              ],
                            ),
                            SizedBox(height: 51),
                            Container(
                              height: 57,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF000000),
                                    Color(0xFF545454)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  elevation: 2,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        'assets/images/Path-5634-_1_ (1).png'),
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
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFE16666),
                                    Color(0xFFA53030)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
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
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF1877F2),
                                    Color(0xFF0C3C79)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
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
