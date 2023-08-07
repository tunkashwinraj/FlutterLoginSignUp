import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:untitled/src/constants/colors.dart';
import 'package:untitled/src/constants/image_string.dart';
import 'package:untitled/src/constants/sizes.dart';
import 'package:untitled/src/constants/text_string.dart';
import 'package:untitled/src/features/authentication/models/user_model.dart';
import 'package:untitled/src/features/core/controllers/profile_controller.dart';
import 'package:untitled/src/features/core/screens/profile/widgets/profile_menu.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Get.back(), icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          tEditProfile,
          style: Theme.of(context).textTheme.headline4,
        ),
        actions: [
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSizes),
          child: FutureBuilder<List<UserModel>>(
            future: controller.getUserData(),
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData){
                  UserModel userData = snapshot.data as UserModel;
                  return Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image(image: AssetImage(tProfileImage)),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: tPrimaryColor,
                                ),
                                child: Icon(
                                  LineAwesomeIcons.camera,
                                  size: 20.0,
                                  color: Colors.black,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Form(child: Column(
                        children: [
                          TextFormField(
                            initialValue: userData.fullName,
                            decoration: InputDecoration(
                              label: Text("Full Name"),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                              prefixIcon: Icon(Icons.person_outline_outlined),
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            initialValue: userData.email,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                                label: Text("Email id"),
                                prefixIcon: Icon(Icons.email_outlined)
                            ),

                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            initialValue: userData.phoneNo,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                                label: Text("Phone Number"),
                                prefixIcon: Icon(Icons.numbers)
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            initialValue: userData.password,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                                label: Text("Password"),
                                prefixIcon: Icon(Icons.fingerprint)
                            ),

                          ),
                          SizedBox(height: 40,),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () => Get.to(() => UpdateProfileScreen()),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: tPrimaryColor,
                                    side: BorderSide.none,
                                    shape: StadiumBorder()),
                                child: Text(tEditProfile,
                                    style: TextStyle(color: tDarkColor))),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(TextSpan(
                                text: tJoined,
                                style: TextStyle(fontSize: 12),
                                children: [
                                  TextSpan(
                                    text: tJoinedAt,
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                              ElevatedButton(onPressed: (){},
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent.withOpacity(0.1),
                                    foregroundColor: Colors.red,
                                    shape: StadiumBorder(
                                    ),
                                    side: BorderSide.none,
                                  ),
                                  child: Text(tDelete))
                            ],
                          )
                        ],
                      )),
                    ],
                  );
                }
                else if(snapshot.hasError){
                  return Center(child: Text(snapshot.error.toString()));
                }
                else{
                  return Center(child: Text("Something went wrong"),);
                }
              }
              else{
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}

