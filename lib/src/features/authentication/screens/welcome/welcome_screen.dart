import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:untitled/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:untitled/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:untitled/src/constants/colors.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/features/authentication/screens/login/login_screen.dart';
import 'package:untitled/src/features/authentication/screens/signup_screen/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();


    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;


    return Scaffold(
        backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
        body: Stack(
          children: [
            TFadeInAnimation(
              durationInMs: 1200,
              animate: TAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                topAfter: 0,
                topBefore: 0,
                leftAfter: 0,
                leftBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
              ),
              child: Container(
                padding: EdgeInsets.all(tDefaultSizes),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage(tWelcomeScreenImage),
                      height: height * 0.6,
                    ),
                    Column(
                      children: [
                        Text(tWelcomeTitle,
                            style: Theme.of(context).textTheme.headline3),
                        Text(
                          tWelcomeSubtitle,
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: OutlinedButton(
                                onPressed: () => Get.to(() => LoginScreen()),
                                child: Text(tLogin.toUpperCase()))),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () => Get.to(() => SignUpScreen()),
                                child: Text(tSignup.toUpperCase()))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
