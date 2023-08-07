import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:untitled/src/features/core/screens/dashboard/dashboard.dart';
import 'package:untitled/src/repository/authentication_repository/exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  //variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);

    firebaseUser.bindStream(_auth.userChanges());

    ever(firebaseUser, _setInitalScreen);
  }

  _setInitalScreen(User? user){
    user == null ? Get.offAll(() => WelcomeScreen()) : Get.offAll(() => Dashboard());
  }

   Future <void> phoneAuthentication(String phoneNo) async{
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
        verificationCompleted: (credential)async{
          await _auth.signInWithCredential(credential);
        },
        codeSent: (verificationId, resendToken){
        this.verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId){
        this.verificationId.value = verificationId;
        },
        verificationFailed: (e){
        if(e.code == 'invalid-phone-number'){
          Get.snackbar('Error', 'the provided phone number is not vaild');
        }else{
          Get.snackbar('Error', 'something went wrong try again');
        }
        },
    );
  }

  Future<bool> verifyOTP (String otp) async {
    var credentials = await _auth.signInWithCredential(PhoneAuthProvider.credential(
        verificationId: this.verificationId.value, smsCode: otp));
   return credentials.user != null ? true : false;
  }

  Future<String?> createUserWithEmailAndPassword (String email, String password) async{
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => Dashboard()) : Get.to(()=> WelcomeScreen());
    } on FirebaseAuthException catch(e){
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print("FIREBASE AUTH EXCEPTION - ${ex.message}");
      throw ex;
    }catch (_){
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<String?> loginWithEmailAndPassword (String email, String password) async{
    try {
      await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch(e){
    }catch (_){}
  }

  Future<void> logout() async => await _auth.signOut();

}