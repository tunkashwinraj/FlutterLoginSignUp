import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:untitled/src/features/authentication/controllers/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController());
    var otp;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSizes),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tOtpTitle,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80,
              ),
            ),
            Text(
              tOtpSubTitle.toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "$tOtpMessage support@ashwin@gmail.com",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){
                otp = code;
                OTPController.instance.verifyOTP(otp);
                //Get.put(OTPController()).verifyOTP(otp);
              },
            ),
            SizedBox(height: 30,),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  OTPController.instance.verifyOTP(otp);
                }, child: Text("Next")))
          ],
        ),
      ),
    );
  }
}
