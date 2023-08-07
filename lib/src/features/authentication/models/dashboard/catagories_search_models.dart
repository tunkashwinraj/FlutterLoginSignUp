import 'dart:core';

import 'package:flutter/material.dart';

class DashboardCatagories{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCatagories(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardCatagories> list= [
    DashboardCatagories("JS", "Java Script", "10 Lessons", null),
    DashboardCatagories("F", "Flutter", "11 Lessons", null),
    DashboardCatagories("H", "HTML", "8 Lessons", null),
    DashboardCatagories("K", "Kotlin", "20 Lessons", null),
    DashboardCatagories("P", "Python", "100 Lessons", null),
  ];
}

