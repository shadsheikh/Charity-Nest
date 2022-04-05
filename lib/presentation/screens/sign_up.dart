import 'package:app/presentation/screens/NGO/n_sign_up.dart';
import 'package:app/presentation/screens/donater/d_sing_up.dart';
import 'package:app/presentation/utils/constants.dart';
import 'package:app/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/presentation/screens/login.dart';

class SignUp extends StatefulWidget {
  static const String routname = '/signup';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                    SizedBox(height: 55),
                    Center(
                      child: Image.asset(
                        'lib/presentation/assets/logo.png',
                        width: 160,
                      ),
                    ),
                    SizedBox(height: 15),
                    Center(child: Text('Sign Up', style: V40R)),
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
                          SolidButton(
                            text: 'NGO',
                            onPress: (){
                              Navigator.of(context)
                                  .pushNamed(NSignUp.routname);
                            },
                            shadow: PurpulShadow,
                            color: DarkPurpule,
                          ),
                          SizedBox(height: 25),
                          SolidButton(
                            text: 'Donater',
                            onPress: (){
                              Navigator.of(context)
                                  .pushNamed(DSignUp.routname);
                            },
                            shadow: PurpulShadow,
                            color: DarkPurpule,
                          ),
                          SizedBox(height: 35),
                          Row(
                            children: [
                              Text('Already User', style: V16R),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(Login.routname);
                                  },
                                  child: Text(' login', style: DP16R)),
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
