import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Carplay extends StatefulWidget{
  @override
  CarplayState createState() =>CarplayState();

}

class CarplayState extends State<Carplay>{
  double progressvalue = 0.0;
  void updateProgres(){
    setState(() {
      progressvalue = 1.0;
    });
  }
  String buttonImage = 'assets/images/Path 5657.png'; // Initial image asset

  void onPressed() {
    // Change the image asset when the button is pressed
    setState(() {
      buttonImage = 'assets/images/play.png'; // Replace with your desired image asset
    });
  }
  String getTimeFromProgress(double progress) {
    final totalSeconds = (progress * 60).toInt(); // Assuming 60 seconds for 100% progress
    final minutes = totalSeconds ~/ 60;
    final seconds = totalSeconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
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
                    Padding(padding: EdgeInsets.only(left: 100.0)),
                    Text(
                      'Think and grow rich...',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 50),
                    Image.asset(
                      'assets/images/Path 5670.png',
                      height: 18.91,
                      width: 18.3,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/Mask Group 132.png',
                  height: 311,
                  width: 302,),
                ),
                SizedBox(height: 20),
                Text(
                  'Mind Set Channel Name',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Episode: Think and grow rich...',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                    text: """Lorem Ipsum is simply dummy text of the printing
            and typesetting industry.""",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF000000),
                    ),
                    children: [
                      TextSpan(
                        text: "Read more..",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35), // Add horizontal padding
                  child: LinearProgressIndicator(
                    backgroundColor: Color(0xFFC5DFEC),
                    valueColor: AlwaysStoppedAnimation(Color(0xFF114768)),
                    minHeight: 5.0,
                    value: progressvalue, // Set the value you want here (0.0 to 1.0)
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/minusten.png',
                      width: 20, // Adjust the width as needed
                      height: 20, // Adjust the height as needed
                    ),
                    SizedBox(width: 20), // Adjust the gap between the first and second images
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF114769), Color(0xFF092435)],
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          updateProgres();
                          onPressed();
                        },
                        child: Image.asset(
                          buttonImage, // Use the current image asset
                          width: 88, // Adjust the width as needed
                          height: 88,),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 20), // Adjust the gap between the second and third images
                    Image.asset(
                      'assets/images/plusten.png',
                      width: 20, // Adjust the width as needed
                      height: 20, // Adjust the height as needed
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