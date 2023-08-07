import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/src/constants/colors.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:untitled/src/features/authentication/models/model_on_boarding.dart';
import 'package:untitled/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
              pages: obcontroller.pages,
            liquidController: obcontroller.controller,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            onPageChangeCallback: obcontroller.OnPageChangeCallback,
          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
              onPressed: () => obcontroller.animateToNextSlide(),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    onPrimary: Colors.white,
                  ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xff272727),
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.arrow_forward_ios),
              ))),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obcontroller.skip(),
                child: Text("Skip", style: TextStyle(fontSize:15,color: Colors.grey),)
            ),
          ),
          Obx( () => Positioned(
              bottom: 10,
                child:AnimatedSmoothIndicator(
                  count: 3,
                  activeIndex: obcontroller.currentPage.value,
                  effect: const WormEffect(
                    activeDotColor: Color(0xff272727),
                    dotHeight: 5.0,
                  ),
                ) ),
          )
        ],
      ),
    );
  }


}


