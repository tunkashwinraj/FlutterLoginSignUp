
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;

  const UserModel({
  this.id,
  required this.fullName,
  required this.email,
  required this.phoneNo,
  required this.password,

});

  toJson(){
    return {
      "Full Name": fullName,
      "Email": email,
      "Phone": phoneNo,
      "Password": password,
    };
  }

  //step 1 to fetched from firebase to userModel
  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
    final data = document.data()!;
    return UserModel(
      id: document.id,
        fullName: data["Full Name"],
        email: data["Email"],
        phoneNo: data["Phone"],
        password: data["Password"],

    );
  }

}