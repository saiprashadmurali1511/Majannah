import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'deleteconfirmation.dart';

class Downloadsdelete extends StatefulWidget {
  @override
  DownloadsdeleteState createState() => DownloadsdeleteState();
}

class DownloadsdeleteState extends State<Downloadsdelete> {
  bool isChecked = false;
  bool isChecked_1 = false;
  bool isChecked_2 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 0, left: 155)),
                    Text(
                      'My Library',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    SizedBox(width: 50),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/pencil-ui-svgrepo-com.png',
                          height: 16.94,
                          width: 16.94,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 20.0,
                          ), // Add padding to the right side
                          child: Image.asset(
                            'assets/images/content-align-center-filter-icon-svgrepo-com.png',
                            height: 18.91,
                            width: 18.3,
                            color: Color(0xFF114769),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 13),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20), // Add left padding
                      child: Text(
                        'Downloads',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 20.0,
                      ), // Add padding to the right side
                      child: Text(
                        '3 Items',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )
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
                        Checkbox(
                          activeColor: Color(0xFF114769),
                          value: isChecked,
                          onChanged: (val) {
                            setState(() {
                              isChecked = val!;
                            });
                          },
                        ),
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
                                SizedBox(width: 54),
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
                    GestureDetector(
                      onTap: () {
                        Get.to(MyApp(), transition: Transition.downToUp);
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 32),
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
                          Divider(),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Color(0xFF114769),
                                value: isChecked_1,
                                onChanged: (val) {
                                  setState(() {
                                    isChecked_1 = val!;
                                  });
                                },
                              ),
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
                                      SizedBox(width: 54),
                                      Image.asset(
                                        'assets/images/Path 5683.png',
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
                                padding: EdgeInsets.only(right: 32),
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
                              Divider(),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Checkbox(
                                    activeColor: Color(0xFF114769),
                                    value: isChecked_2,
                                    onChanged: (val) {
                                      setState(() {
                                        isChecked_2 = val!;
                                      });
                                    },
                                  ),
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
                                          SizedBox(width: 54),
                                          Image.asset(
                                            'assets/images/Path 5683.png',
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
                                    padding: EdgeInsets.only(right: 32),
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
                        ],
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
