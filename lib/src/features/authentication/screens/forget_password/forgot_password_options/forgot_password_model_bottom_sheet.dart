import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/features/authentication/screens/forget_password/forgot_password_mail/forgot_password_mail.dart';
import 'package:untitled/src/features/authentication/screens/forget_password/forgot_password_options/forgot_password_btn_widget.dart';

class ForgotPasswordScreen{

  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      builder: (context) => Container(
        padding: EdgeInsets.all(tDefaultSizes),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgotPasswordTitle, style: Theme.of(context).textTheme.headline2,),
            Text(tForgotPasswordSubTitle, style: Theme.of(context).textTheme.bodyText2,),
            SizedBox(height: 30,),

            ForgotPasswordBtnWidget(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ForgotPasswordMailScreen()),
                );

                /*Navigator.pop(context);
                Get.to(() =>  const ForgotPasswordMailScreen());*/
                },
              title: "Email",
              subTitle: tResetViaEmail,
              btnIcon: Icons.mail_outline_outlined,
            ),
            SizedBox(height: 20,),
            ForgotPasswordBtnWidget(
              onTap: (){},
              title: "Phone No",
              subTitle: tResetViaPhone,
              btnIcon: Icons.mobile_friendly_rounded,
            ),
          ],
        ),
      ),);
  }
}