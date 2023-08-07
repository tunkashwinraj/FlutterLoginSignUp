import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/features/authentication/controllers/signup_controller.dart';
import 'package:untitled/src/features/authentication/models/user_model.dart';
import 'package:untitled/src/features/authentication/screens/forget_password/forgot_password_otp/otp_screen.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: InputDecoration(
                  label: Text("Full Name"),
                  prefixIcon: Icon(Icons.person_outline_outlined)
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                  label: Text("Email id"),
                  prefixIcon: Icon(Icons.email_outlined)
              ),

            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: controller.phoneNo,
              decoration: InputDecoration(
                  label: Text("Phone Number"),
                  prefixIcon: Icon(Icons.numbers)
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.fingerprint)
              ),

            ),
            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  // // SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                  // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());

                  final user = UserModel(
                      fullName: controller.fullName.text.trim(),
                      email: controller.email.text.trim(),
                      phoneNo: controller.phoneNo.text.trim(),
                      password: controller.password.text.trim()
                  );
                  SignUpController.instance.createUser(user);
                }
              },
                  child: Text(tSignup.toUpperCase(),)),
            )
          ],
        ),
      ),
    );
  }
}
