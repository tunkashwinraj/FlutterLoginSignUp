import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:untitled/src/constants/colors.dart';
import 'package:untitled/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

import '../../../constants/image_string.dart';
import '../../../constants/text_string.dart';
import '../models/model_on_boarding.dart';

class OnBoardController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSubTitle1,
        countertext: tOnBoardingCounter1,
        image: tOnBoardingImages1,
        bgColor: tOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        title: tOnBoardingTitle2,
        subTitle: tOnBoardingSubTitle2,
        countertext: tOnBoardingCounter2,
        image: tOnBoardingImages2,
        bgColor: tOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        title: tOnBoardingTitle3,
        subTitle: tOnBoardingSubTitle3,
        countertext: tOnBoardingCounter3,
        image: tOnBoardingImages3,
        bgColor: tOnBoardingPage3Color,

      ),
    ),
  ];
  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage( page: nextPage,);
  }

  OnPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
