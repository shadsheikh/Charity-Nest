import 'package:app/presentation/screens/forget_password.dart';
import 'package:app/presentation/screens/donater/d_home_page.dart';
import 'package:app/presentation/screens/sign_up.dart';
import 'package:app/presentation/utils/constants.dart';
import 'package:app/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const String routname = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
            children : [

              Container(
                decoration: new BoxDecoration(
                  color: BackgroundColor,
                ),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Center(
                      child: Image.asset(
                        'lib/presentation/assets/logo.png',
                        width: 160,
                      ),
                    ),
                    Center(child: Text('Login', style: V40R)),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: Medium_Shadow,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          CustomTextInput(
                              label: 'Email',
                              TextColor: Violet,
                              labelColor: Raisin_Black,
                              controller: username),
                          SizedBox(height: 25),
                          CustomTextInput(
                              label: 'Password',
                              TextColor: Violet,
                              labelColor: Raisin_Black,
                              controller: password),
                          SizedBox(height: 25),
                          SolidButton(
                                text: 'Login',
                                onPress: () async {
                                  Navigator.of(context)
                                      .pushNamed(DHomePage.routname);
                                },
                                shadow: PurpulShadow,
                                color: DarkPurpule,
                              ),
                          SizedBox(height: 35),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(ForgetPassword.routname);
                                },
                                child: Text(
                                  'Forget Password',
                                  style: DP16R,
                                ),
                              ),
                              Spacer(),
                              Text('New User', style: V16R),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(SignUp.routname);
                                  },
                                  child: Text(' signup', style: DP16R),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 17),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                // height: 175,
                width: MediaQuery.of(context).size.width/2.5,
                child: Image.asset(
                  'lib/presentation/assets/upperSemiCircle.png',
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                // height: 200,
                width: MediaQuery.of(context).size.width/3,
                child: Image.asset(
                  'lib/presentation/assets/lowerSemiCircle.png',
                ),
              ),
            ]
        ),
      ),
    );
  }
}
