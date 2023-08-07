import 'package:flutter/material.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:untitled/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:untitled/src/features/authentication/screens/login/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
        padding: EdgeInsets.all(tDefaultSizes),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //section - 1
            FormHeaderWidget(
              image: tWelcomeScreenImage,
              title: tLoginTitle,
              subTitle: tLoginSubTitle,
            ),
            LoginFormWidget(),
            LoginFooterWidget(),
          ],
        ),
      ))),
    );
  }
}
