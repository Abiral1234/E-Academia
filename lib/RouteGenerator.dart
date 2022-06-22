import 'package:eacademia/Admin/AdminHome.dart';
import 'package:eacademia/Components/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'Admin/Home/addClass.dart';
import 'main.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings){
      final args =settings.arguments;

      switch(settings.name){
        case'/':
          return MaterialPageRoute(
              builder: (_) =>BottomNavBar());

        case '/Add_Class':
            return MaterialPageRoute(
              builder: (_)=>AddClass()
            );

          }
      }




  }
