import 'package:flutter/material.dart';
import 'package:untitled/src/constants/image_string.dart';

class DashboardTopCore {
  final String title;
  final String image;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;


  DashboardTopCore(this.title, this.heading, this.subHeading, this.image,this.onPress );

  static List<DashboardTopCore> list = [
    DashboardTopCore("Flutter Crash Course", "5 Sections", "Programming Languages",tTopCourse1, null),
    DashboardTopCore("HTML Crash Course", "10 Sections", "Programming Languages",tBannerImage1, null),
    DashboardTopCore("Pyhton Crash Course", "25 Sections", "Programming Languages",tBannerImage2, null),
    DashboardTopCore("JAVA Crash Course", "15 Sections", "Programming Languages",tTopCourse2, null),
  ];

}