import 'package:flutter/material.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/text_string.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({super.key, required this.subTitle, required this.title, required this.image});

  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * 0.2,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
