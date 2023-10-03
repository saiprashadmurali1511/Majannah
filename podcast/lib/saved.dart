import 'package:Majannah/savedfilter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'library.dart';
class Saved extends StatefulWidget{
  @override
  SavedState createState() => SavedState();

}

class SavedState extends State<Saved>{
 @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(Library(),transition: Transition.rightToLeft); // Navigate to Library screen
                      },
                      child: Image.asset(
                        'assets/images/Path 5687.png', // Replace with your image path
                        height: 24,
                        width: 24,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 155.0)),
                    Text(
                      'My Library',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    SizedBox(width: 55),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 10, right: 10),
                                  child: Text(
                                    'Sort by', // Add your desired heading here
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5), // Add margin
                                  child: ListTile(
                                    title: Text(
                                      'Recently Date',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    onTap: () {
                                      // Handle recently date action
                                      Navigator.pop(
                                          context); // Close the bottom sheet
                                    },
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: Text(
                                    'Recently Date',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  onTap: () {
                                    // Handle share episode action
                                    Navigator.pop(
                                        context); // Close the bottom sheet
                                  },
                                ),
                                Divider(),
                                ListTile(
                                  title: Text(
                                    'Show Name',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  onTap: () {
                                    // Handle current position action
                                    Navigator.pop(
                                        context); // Close the bottom sheet
                                  },
                                ),
                              ],
                            );
                          },
                        );
                        Image.asset(
                        'assets/images/Path 5670.png',
                        height: 18.91
                        ,
                        width
                        :
                        18.3
                        ,
                        );
                      },
   ),
                        ],
                ),
                SizedBox(height: 13),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20), // Add left padding
                      child: Text(
                        'Saved',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Spacer(),
                  Text('3 Items',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),),
                  ],
                ),
                SizedBox(height: 43),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'All Episodes',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Image.asset(
                            'assets/images/Mask Group 132.png',
                            height: 77,
                            width: 77,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 14),
                            Text(
                              '18th June 2023',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000).withOpacity(0.56),
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Daily News Ep. #11',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(width: 74),
                                Image.asset(
                                  'assets/images/Path 5657.png',
                                  height: 33,
                                  width: 33,
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              '12 min 8 sec left',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            """Each episode of The Daily Good begins with
a warm...""",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 1,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                ),
                SizedBox(height: 38),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Image.asset(
                        'assets/images/Mask Group 132.png',
                        height: 77,
                        width: 77,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 14),
                        Text(
                          '18th June 2023',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000).withOpacity(0.56),
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Daily News Ep. #11',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(width: 74),
                            Image.asset(
                              'assets/images/Path 5657.png',
                              height: 33,
                              width: 33,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          '12 min 8 sec left',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 14),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        """Each episode of The Daily Good begins with
a warm...""",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 1,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                ),
                SizedBox(height: 38),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Image.asset(
                        'assets/images/Mask Group 132.png',
                        height: 77,
                        width: 77,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 14),
                        Text(
                          '18th June 2023',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000).withOpacity(0.56),
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Daily News Ep. #11',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(width: 74),
                            Image.asset(
                              'assets/images/Path 5657.png',
                              height: 33,
                              width: 33,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          '12 min 8 sec left',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 14),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        """Each episode of The Daily Good begins with
a warm...""",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Color(0xFF000000),
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