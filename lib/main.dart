import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/firebase_options.dart';
import 'package:untitled/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:untitled/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:untitled/src/repository/authentication_repository/authentication_repository.dart';
import 'package:untitled/src/utils/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).
  then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration:const Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}
