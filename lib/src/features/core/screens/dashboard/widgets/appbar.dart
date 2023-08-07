
import 'package:flutter/material.dart';
import 'package:untitled/src/constants/colors.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/features/core/screens/profile/profile_screen.dart';
import 'package:untitled/src/repository/authentication_repository/authentication_repository.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.menu, color: Colors.black),
      title: Text(
        tAppName,
        style: Theme.of(context).textTheme.headline4,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: tCardBgColor,
          ),
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context) => ProfileScreen()));
              },
              icon: Image(image: AssetImage(tUserProfileImage))),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}
