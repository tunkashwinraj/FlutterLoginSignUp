import 'package:flutter/material.dart';
import 'package:untitled/src/constants/colors.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:untitled/src/features/core/screens/dashboard/widgets/dashboard_banners.dart';
import 'package:untitled/src/features/core/screens/dashboard/widgets/dashboard_search.dart';
import 'package:untitled/src/features/core/screens/dashboard/widgets/topcourses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDashboardPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //heading
              Text(
                tDashboardTitle,
                style: txtTheme.bodyText2,
              ),
              Text(
                tDashboardHeading,
                style: txtTheme.headline2,
              ),
              SizedBox(
                height: tDashboardPadding,
              ),

              //search box
              Container(
                decoration:
                    BoxDecoration(border: Border(left: BorderSide(width: 4))),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(tDashboardSearch,
                        style: txtTheme.headline2
                            ?.apply(color: Colors.grey.withOpacity(0.5))),
                    Icon(
                      Icons.mic,
                      size: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: tDashboardPadding),

              //catagories
              DashboardSearch(txtTheme: txtTheme),
              SizedBox(height: 25,),

              //banners
              DashboardBanners(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),

              //top courses
              Text(tDashboardTopCourses,
                  style: txtTheme.headline4?.apply(fontSizeFactor: 1.2),),
              SizedBox(height: 20,),
              DashboardTopCourses(txtTheme: txtTheme),
            ],
          ),
        ),
      ),
    );
  }
}




