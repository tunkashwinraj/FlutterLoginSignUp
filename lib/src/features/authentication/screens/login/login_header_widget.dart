import 'package:flutter/material.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/text_string.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key, this.crossAxisAlignment = CrossAxisAlignment.start,
    this.heightBetween,
    this.imageColor,
    this.imageHeight = 0.2,
    required this.subTitle,
    required this.title,
    required this.image, this.textAlign,

  });

  final Color? imageColor;
  final double? imageHeight;
  final double? heightBetween;
  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          color: imageColor,
          height: size.height * imageHeight!,),
        SizedBox(height: heightBetween,),
        Text(
          title, style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          subTitle, textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}