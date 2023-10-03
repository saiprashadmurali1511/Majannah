import 'package:Majannah/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Profile extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return ProfileState();
  }
}
class ProfileState extends State<Profile>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: (){
                  Get.to(Settings(),transition: Transition.cupertino);
                },
                child:Image.asset('assets/images/Path 5687.png'),
              ),
              ),
              SizedBox(width: 101,),
              Text('Update Profile',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),),
              SizedBox(height: 55,),
              Image.asset('assets/images/Profile.png',
              width: 129,
              height: 129,),
              SizedBox()
            ],
          ),
        ),
      ),
    )
  }
}