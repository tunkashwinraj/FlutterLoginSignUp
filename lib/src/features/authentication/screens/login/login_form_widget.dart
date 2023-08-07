
import 'package:flutter/material.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/features/authentication/screens/forget_password/forgot_password_options/forgot_password_btn_widget.dart';
import 'package:untitled/src/features/authentication/screens/forget_password/forgot_password_options/forgot_password_model_bottom_sheet.dart';
import 'package:untitled/src/features/core/screens/dashboard/dashboard.dart';

import '../../../../constants/sizes.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: "Email",
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: "Password",
                  hintText: "Password",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
              const SizedBox(
                height: 30,
              ),


              //forgot password button
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      ForgotPasswordScreen.buildShowModalBottomSheet(context);
                    },
                    child: Text(tForgotPassword),
                  )),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
                      }, child: Text(tLogin.toUpperCase())),

              )
            ],
          ),
        ));
  }


}
