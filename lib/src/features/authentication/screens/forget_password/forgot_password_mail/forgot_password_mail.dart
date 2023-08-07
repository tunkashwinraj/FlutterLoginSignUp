import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/features/authentication/screens/forget_password/forgot_password_otp/otp_screen.dart';
import 'package:untitled/src/features/authentication/screens/login/login_header_widget.dart';

class ForgotPasswordMailScreen extends StatelessWidget {
  const ForgotPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSizes),
            child:  Column(
              children: [
                SizedBox(height: tDefaultSizes * 4,),
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30,
                  textAlign: TextAlign.center,

                ),
                SizedBox(height: 30,),
                Form(child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline_outlined),
                        labelText: "Email",
                        hintText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Get.to(()=> OTPScreen());
                      },
                          child: Text("Next")),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
