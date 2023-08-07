import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:untitled/src/constants/colors.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/features/core/screens/profile/update_profile_screen.dart';
import 'package:untitled/src/features/core/screens/profile/widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          tProfile,
          style: Theme.of(context).textTheme.headline4,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon:
                  Icon(isDark ? LineAwesomeIcons.moon : LineAwesomeIcons.sun)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSizes),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(image: AssetImage(tProfileImage)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor,
                        ),
                        child: Icon(
                          LineAwesomeIcons.alternate_pencil,
                          size: 20.0,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                tProfileHeading,
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                tProfileSubHeading,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => UpdateProfileScreen()),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: tPrimaryColor,
                        side: BorderSide.none,
                        shape: StadiumBorder()),
                    child: Text(tEditProfile,
                        style: TextStyle(color: tDarkColor))),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),

              //menu
              ProfileMenuWidget(
                title: 'Settings',
                icon: LineAwesomeIcons.cog,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: 'Billing Details',
                icon: LineAwesomeIcons.wallet,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: 'User Management',
                icon: LineAwesomeIcons.user_check,
                onPress: () {},
              ),
              Divider(
                color: Colors.grey,
              ),
              ProfileMenuWidget(
                title: 'Information',
                icon: LineAwesomeIcons.info,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: 'Logout',
                icon: LineAwesomeIcons.alternate_sign_out,
                textColor: Colors.red,
                onPress: () {},
                endIcon: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
