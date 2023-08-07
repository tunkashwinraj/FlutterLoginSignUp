import 'package:flutter/material.dart';
import 'package:untitled/src/common_widgets/form/form_header-widget.dart';
import 'package:untitled/src/constants/colors.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/features/authentication/screens/signup_screen/sign_up_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSizes),
            child: Column(
              children: [
                FormHeaderWidget(
                    subTitle: tSignUpSubTitle,
                    title: tSignUpTitle,
                    image: tWelcomeScreenImage),
                SignUpFormWidget(),
                Column(
                  children: [
                    Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          icon: Image(image: AssetImage(tGoogleImage),
                          width: 20,),
                          onPressed: (){},
                          label: Text("Sign up Using Google"))
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text.rich(TextSpan(
                            text: "Already have an Account?  ",
                            style: Theme.of(context).textTheme.bodyText1,
                            children: [
                              TextSpan(
                                  text: tLogin,
                                  style: TextStyle(color: Colors.blue)),
                            ]))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

