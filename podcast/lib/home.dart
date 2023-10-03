import 'package:Majannah/notification.dart';
import 'package:Majannah/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'culture.dart';
import 'explore.dart';
import 'library.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: () => Home()),
      GetPage(name: '/explore', page: () => Explore()),
      GetPage(name: '/library', page: () => Library()),
      GetPage(name: '/culture', page: () => Culture()),
    ],
  ));
}

class Home extends StatelessWidget {
  final List<Widget> _screens = [
    Explore(),
    Library(),
  ];
  final RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Image.asset(
                    'assets/images/Mask Group 63.png',
                    height: 47,
                    width: 47,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      children: [
                       GestureDetector(
                         onTap: (){
                           Get.to(Notifications(),transition: Transition.cupertino);
                         },
                        child: ImageIcon(
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
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Continue Listening',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 115,
                width: 420,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF032330), Color(0xFF11486A)],
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Image.asset(
                          'assets/images/Mask Group 40.png',
                          height: 84,
                          width: 84,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The mind-gut connection...',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 3),
                          Row(
                            children: [
                              Image.asset('assets/images/Path 5661.png'),
                              SizedBox(width: 5),
                              Text(
                                'Halima Fatima',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 85),
                              Image.asset(
                                'assets/images/Path 5657.png',
                                width: 29,
                                height: 29,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                color: Colors.white.withOpacity(0.3),
                                size: 16,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '12 min 8 sec left',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFFFFFFFF).withOpacity(0.3),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'New Podcasts You Follow',
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
                    child: Image.asset(
                      'assets/images/Mask Group 64.png',
                      width: 145,
                      height: 150,
                    ),
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/images/Mask Group 65.png',
                    width: 145,
                    height: 150,
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Image.asset(
                      'assets/images/Mask Group 66.png',
                      width: 145,
                      height: 150,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
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
                  Column(
                    children: [
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
                  Column(
                    children: [
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
                ],
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Podcast Suggestions',
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
                    child: Image.asset(
                      'assets/images/Mask Group 64.png',
                      width: 145,
                      height: 150,
                    ),
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/images/Mask Group 65.png',
                    width: 145,
                    height: 150,
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Image.asset(
                      'assets/images/Mask Group 66.png',
                      width: 145,
                      height: 150,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
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
                  Column(
                    children: [
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
                  Column(
                    children: [
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
                ],
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(Culture(), transition: Transition.leftToRight);
                },
                child: Image.asset(
                  'assets/images/culture.png',
                  width: 390,
                  height: 98,
                  fit: BoxFit.cover,
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(390, 98),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Image.asset(
                  'assets/images/history.png',
                  width: 390,
                  height: 98,
                  fit: BoxFit.cover,
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(390, 98),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Image.asset(
                  'assets/images/literature.png',
                  width: 390,
                  height: 98,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
            () {
          return BottomNavigationBar(
            currentIndex: _currentIndex.value,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/Path 5621.png',
                  width: 17.74,
                  height: 17.74,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/search-svgrepo-com (12).png',
                  width: 17.74,
                  height: 17.74,
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/library-svgrepo-com.png',
                  width: 17.74,
                  height: 17.74,
                ),
                label: 'Library',
              ),
            ],
            onTap: (index) {
              _currentIndex.value = index;
              switch (index) {
                case 0:
                  Get.offAllNamed('/home');
                  break;
                case 1:
                  Get.offAllNamed('/explore');
                  break;
                case 2:
                  Get.offAllNamed('/library');
                  break;
              }
            },
          );
        },
      ),
    );
  }
}
