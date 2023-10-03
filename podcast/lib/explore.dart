import 'package:Majannah/notification.dart';
import 'package:Majannah/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'channel.dart';

void main() {
  runApp(Explore());
}

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20), // Add left padding here
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        'assets/images/Mask Group 63.png',
                        height: 47,
                        width: 47,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20), // Add right padding here
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(Notifications(),transition: Transition.rightToLeft);
                            },
                            child:ImageIcon(
                              AssetImage('assets/images/notification-on-svgrepo-com.png'),
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: (){
                              Get.to(Settings(),transition: Transition.rightToLeft);
                            },
                           child: ImageIcon(
                              AssetImage('assets/images/setting-svgrepo-com (4).png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Padding(padding: EdgeInsets.only(left: 20),
              child: Text(
                'Explore',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),),
              SizedBox(height: 20),
              Padding(padding: EdgeInsets.only(left: 20),
              child: Text(
                'What you want to hear today?',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF000000),
                ),
              ),),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20), // Add left padding here
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search podcast, author, etc...',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF114769).withOpacity(0.09),
                      ),
                    ),
                    prefixIcon: ImageIcon(
                      AssetImage('assets/images/Path 5640.png'),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Padding(padding: EdgeInsets.only(left: 20),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20), // Add left padding here
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFF0E7F2),
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(15),
                            ),
                            child: Image.asset('assets/images/people-svgrepo-com.png'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Culture',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 35),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF9EED9),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(15),
                          ),
                          child: Image.asset('assets/images/people-svgrepo-com.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'History',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE5EAFF),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(15),
                          ),
                          child: Image.asset('assets/images/writing-tool-svgrepo-com.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Literature',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFFDBDB),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(15),
                          ),
                          child: Image.asset('assets/images/news-paper-svgrepo-com.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'News',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE1F9E8),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(15),
                          ),
                          child: Image.asset('assets/images/people-svgrepo-com.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Religion',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Top Episodes',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        // Add your onPressed action here
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 64.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 10), // Add some spacing between the image and text
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            """Each episode of The
Daily Good begins with
a warm...""",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/Mask Group 65.png',
                          width: 145,
                          height: 150,
                        ),
                        SizedBox(height: 10), // Add some spacing between the image and text
                        Text(
                          'Episode Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Text(
                          """Each episode of The
Daily Good begins with
a warm...""",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 66.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 10), // Add some spacing between the image and text
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            """Each episode of The
Daily Good begins with
a warm...""",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Top Channels/Shows',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        children: [
                          GestureDetector(
                          onTap: () {
                  // Your onTap action
                  Get.to(Channel(), transition: Transition.rightToLeft);
      },
                          child:Image.asset(
                            'assets/images/Mask Group 64.png',
                            width: 145,
                            height: 150,
                          ),
                          ),
                          SizedBox(height: 10), // Add some spacing between the image and text
                          Text(
                            'Think and Grow Rich',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            'Aliya Fatima',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000).withOpacity(0.56),
                            ),
                          ),
                          Text(
                            """    How the hidden 
   conversation within...""",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Your onTap action
                            Get.to(Channel(), transition: Transition.rightToLeft);
                          },
                        child:Image.asset(
                          'assets/images/Mask Group 65.png',
                          width: 145,
                          height: 150,
                        ),
                        ),
                        SizedBox(height: 10), // Add some spacing between the image and text
                        Text(
                          'Think and Grow Rich',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Text(
                          'Aliya Fatima',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFF000000).withOpacity(0.56),
                          ),
                        ),
                        Text(
                          """    How the hidden 
   conversation within...""",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Column(
                        children: [
                          GestureDetector(
                          onTap: () {
                        // Your onTap action
                        Get.to(Channel(), transition: Transition.rightToLeft);
      },
                          child:Image.asset(
                            'assets/images/Mask Group 66.png',
                            width: 145,
                            height: 150,
                          ),
                          ),
                          SizedBox(height: 10), // Add some spacing between the image and text
                          Text(
                            'Think and Grow Rich',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            'Aliya Fatima',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000).withOpacity(0.56),
                            ),
                          ),
                          Text(
                            """    How the hidden 
   conversation within...""",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Suggestions for You',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            children: [
                                Image.asset(
                                  'assets/images/Mask Group 64.png',
                                  width: 145,
                                  height: 150,
                                ),
                              SizedBox(height: 10), // Add some spacing between the image and text
                              Text(
                                'Think and Grow Rich',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              Text(
                                'Aliya Fatima',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFF000000).withOpacity(0.56),
                                ),
                              ),
                              Text(
                                """    How the hidden 
   conversation within...""",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [

                            Image.asset(
                              'assets/images/Mask Group 65.png',
                              width: 145,
                              height: 150,
                            ),
                            SizedBox(height: 10), // Add some spacing between the image and text
                            Text(
                              'Think and Grow Rich',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Text(
                              'Aliya Fatima',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFF000000).withOpacity(0.56),
                              ),
                            ),
                            Text(
                              """    How the hidden 
   conversation within...""",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Mask Group 66.png',
                                width: 145,
                                height: 150,
                              ),
                              SizedBox(height: 10), // Add some spacing between the image and text
                              Text(
                                'Think and Grow Rich',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              Text(
                                'Aliya Fatima',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFF000000).withOpacity(0.56),
                                ),
                              ),
                              Text(
                                """    How the hidden 
   conversation within...""",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/home2.png'),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/search2.png'),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/library-svgrepo-com.png'),
              label: 'Library',

            ),
          ],
        ),
      ),
    );
  }
}
