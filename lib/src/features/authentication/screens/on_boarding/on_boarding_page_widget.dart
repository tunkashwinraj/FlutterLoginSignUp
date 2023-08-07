import 'package:flutter/material.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(tDefaultSizes),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.4,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Text(
            model.countertext,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
