import 'package:Majannah/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends StatefulWidget {
  @override
  LanguageState createState() => LanguageState();
}

class LanguageState extends State<Language> {
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 56),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(Settings(), transition: Transition.cupertino);
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/images/Path 5687.png'),
                      SizedBox(width: 110),
                      Text(
                        'Notifications',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 286,
                  height: 51,
                  decoration: BoxDecoration(
                    color: Colors.white, // White background
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(25.5),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isDarkModeEnabled = false;
                          });
                        },
                        child: Container(
                          width: 143,
                          height: 51,
                          decoration: BoxDecoration(
                            color: isDarkModeEnabled ? Colors.white : Color(0xFFECF0F3), // Custom switch background color
                            border: Border(
                              right: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'English',
                              style: TextStyle(
                                color: isDarkModeEnabled ? Colors.black : Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isDarkModeEnabled = true;
                          });
                        },
                        child: Container(
                          width: 143,
                          height: 51,
                          decoration: BoxDecoration(
                            color: isDarkModeEnabled ? Colors.white : Color(0xFFECF0F3), // Custom switch background color
                            border: Border(
                              left: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'عربي',
                              style: TextStyle(
                                color: isDarkModeEnabled ? Color(0xFFECF0F3) : Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
