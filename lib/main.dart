import 'package:app/presentation/screens/NGO/n_home.dart';
import 'package:app/presentation/screens/NGO/n_home_page.dart';
import 'package:app/presentation/screens/NGO/n_sign_up.dart';
import 'package:app/presentation/screens/NGO/n_my_profile.dart';
import 'package:app/presentation/screens/donater/d_home.dart';
import 'package:app/presentation/screens/donater/d_home_page.dart';
import 'package:app/presentation/screens/donater/d_my_profile.dart';
import 'package:app/presentation/screens/donater/ngo_near_me.dart';
import 'package:app/presentation/screens/donater/d_sing_up.dart';
import 'package:flutter/material.dart';
import 'presentation/screens/login.dart';
import 'presentation/screens/forget_password.dart';
import 'presentation/screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        initialRoute: Login.routname,
        routes: <String, Widget Function(BuildContext context)>{
              Login.routname: (_) => Login(),
              ForgetPassword.routname: (_) => ForgetPassword(),
              SignUp.routname: (_) => SignUp(),
              DSignUp.routname: (_) => DSignUp(),
              NSignUp.routname:(_)=>NSignUp(),
              DHomePage.routname: (_) => DHomePage(),
              NHomePage.routname: (_) => NHomePage(),
              DMyProfile.routname: (_) => DMyProfile(),
              NMyProfile.routname: (_) => NMyProfile(),
              NGONearMe.routname: (_) => NGONearMe(),
              DHome.routname: (_) => DHome(),
              NHome.routname: (_) => NHome(),
          }
    );
  }
}
