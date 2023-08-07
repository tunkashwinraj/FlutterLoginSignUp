
import 'package:get/get.dart';
import 'package:untitled/src/features/authentication/models/user_model.dart';
import 'package:untitled/src/repository/authentication_repository/authentication_repository.dart';
import 'package:untitled/src/repository/user_repository/user_repository.dart';

class ProfileController extends GetxController{
  static ProfileController get instance => Get.find();
  final _userRepo = Get.put(UserRepository());
  final _authRepo = Get.put(AuthenticationRepository());
  // get user email and pass to  UserRepository to fetch user record.

  getUserData(){
    final email = _authRepo.firebaseUser.value?.email;
    if(email != null){
      return _userRepo.getUserDetails(email);
    }
    else{
      Get.snackbar("Error", "Login to continue");
    }
  }

}