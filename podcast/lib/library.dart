import 'package:Majannah/History.dart';
import 'package:Majannah/saved.dart';
import 'package:Majannah/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'channel.dart';
import 'downloads.dart';
import 'notification.dart';

void main() {
  runApp(Library());
}

class Library extends StatelessWidget {
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
                    padding: EdgeInsets.only(left: 20), // Add left padding
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
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.to(Notifications(),transition:Transition.cupertino );
                          },
                          child:ImageIcon(
                            AssetImage('assets/images/notification-on-svgrepo-com.png'),
                          ),
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          onTap: (){
                            Get.to(Settings(),transition: Transition.leftToRight);
                          },
                        child:  Padding(
                            padding: EdgeInsets.only(right: 20), // Add right padding
                            child: ImageIcon(
                              AssetImage('assets/images/setting-svgrepo-com (4).png'),
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Library',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'What you want to hear today?',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                child: ElevatedButton(
                  onPressed: () {
Get.to(Downloads(),transition: Transition.leftToRight) ;             },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFCEE6F5),
                    minimumSize: Size(390, 74),
                  ),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/images/download-cloud-svgrepo-com (1).png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Downloads',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            '4 Items',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/Path 5687.png',
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                child: ElevatedButton(
                  onPressed: () {
                  Get.to(Saved(),transition: Transition.cupertino);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFCEE6F5),
                    minimumSize: Size(390, 74),
                  ),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/images/download-cloud-svgrepo-com (1).png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saved',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            '4 Items',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/Path 5687.png',
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                child: ElevatedButton(
                  onPressed: () {
                  Get.to(History(),transition: Transition.cupertino);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFCEE6F5),
                    minimumSize: Size(390, 74),
                  ),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/images/download-cloud-svgrepo-com (1).png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'History',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            '4 Items',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/Path 5687.png',
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
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
          bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Colors.black), // Set the text color to black
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/home2.png'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/search-svgrepo-com (12).png'),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/lib.png'),
                label: 'Library',
              ),
            ],
          ),
        ),

      ),
    );
  }
}

