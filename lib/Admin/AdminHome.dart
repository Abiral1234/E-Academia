import 'dart:ui';
import 'package:eacademia/Admin/AddClass.dart';
import 'package:eacademia/Components/Cards.dart';
import 'package:eacademia/Components/BottomNavBar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import '../Colors.dart';


class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('E-ACADEMIA',style: TextStyle(fontFamily: 'Aerial',color: white),),
        backgroundColor: blue,
        elevation: 0,

      ),
      body: Container(
        color: Colors.deepPurpleAccent.shade100.withOpacity(0.2),
        width: double.infinity,
        height: double.infinity,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child:
              Column(
                children: [
                  Wrap(

                  children: [
                    InkWell(
                      child: Cards('assets/classroom.svg','Add Class'),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => AddClass()));
                      },
                    ),
                    Cards('assets/teacher.svg','Add Teacher'),
                    Cards('assets/student.svg','Add Student'),
                    Cards('assets/book.svg','Add Books'),
                    Cards('assets/fee.svg','Fee Notification'),
                    Cards('assets/notification.svg','Event Notification'),

                  ],
                  ),
                  
              ],),


        ),
      ),
    );
  }
}