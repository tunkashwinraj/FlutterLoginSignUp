import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';


class TFadeInAnimation extends StatelessWidget {
   TFadeInAnimation({
    super.key,
     this.animate,
     required this.child,
     required this.durationInMs,
  });

  final int durationInMs;
  final TAnimatePosition? animate;
  final Widget child;
  final controller = Get.put(FadeInAnimationController());


  @override
  Widget build(BuildContext context) {

    return Obx( () =>
        AnimatedPositioned(
            duration:  Duration(milliseconds: durationInMs),
            top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
            left: controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
            bottom: controller.animate.value ? animate!.bottomAfter : animate!.bottomBefore,
            right: controller.animate.value ? animate!.rightAfter : animate!.rightBefore,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: durationInMs),
              opacity: controller.animate.value? 1 : 0,
              child: child,
              // child: const Image(
              //   width: 90,
              //   image: AssetImage(tSplashTopIcon),
              // ),
            )),
    );
  }
}
