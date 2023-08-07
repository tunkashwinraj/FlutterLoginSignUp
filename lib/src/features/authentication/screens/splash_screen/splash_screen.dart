import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:untitled/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:untitled/src/constants/colors.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

import '../welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});


  // SplashScreenController splashScreenController = SplashScreenController();
  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            TFadeInAnimation(
                durationInMs: 1600,
                animate: TAnimatePosition (
                  topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0,
                ),
                child: const Image(image: AssetImage(tSplashTopIcon)),
            ),
            TFadeInAnimation(
              durationInMs: 2000,
              animate: TAnimatePosition(topAfter: 80, topBefore: 80, leftBefore: -80, leftAfter: tDefaultSizes,
              ),
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tAppName,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        tAppTagLine,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
            ),
            TFadeInAnimation(
              durationInMs: 2400,
              animate: TAnimatePosition(bottomBefore: 0, bottomAfter:100,),
              child: Image(width: 400, image: AssetImage(tSplashImage),),
              ),
            TFadeInAnimation(
              durationInMs: 2400,
              animate: TAnimatePosition(bottomAfter: 60, bottomBefore: 0, rightBefore: tDefaultSizes, rightAfter: tDefaultSizes,),
              child: Container(
                decoration: BoxDecoration(
                    color: tPrimaryColor,
                    borderRadius: BorderRadius.circular(100)),
                width: tSplashContainerSize,
                height: tSplashContainerSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
