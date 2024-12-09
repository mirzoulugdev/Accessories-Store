import 'package:accessories_store/presentation/screens/SignIn/screen/sign_in_screen.dart';
import 'package:accessories_store/presentation/screens/home/screen/home_screen.dart';

import 'firebase_options.dart';
import 'presentation/screens/SignUp/screen/sign_up_screen.dart';
import 'utils/app_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.mainColor.withOpacity(0.5),
          ),
        ),
        home: const HomeScreen(),
        routes: {
          SignInScreen.routeName: (context) => const SignInScreen(),
          SignUpScreen.routeName: (context) => const SignUpScreen(),
          HomeScreen.routeName: (context) => const HomeScreen(),
        },
      ),
    );
  }
}
