import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/text_string.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("OR"),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(
                image: AssetImage(tGoogleImage),
                width: 20,
              ),
              onPressed: () {
                signInWithGoogle();
              },
              label: Text("Sign In With Google")),
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: () {},
            child: Text.rich(TextSpan(
                text: "Dont have an Account?  ",
                style: Theme.of(context).textTheme.bodyText1,
                children: [
                  TextSpan(
                      text: tSignup,
                      style: TextStyle(color: Colors.blue)),
                ]))),
      ],
    );

  }
  signInWithGoogle()async{

    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken ,
      idToken: googleAuth?.idToken,
    );

    UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
    
    print(userCredential.user?.displayName);
  }
}