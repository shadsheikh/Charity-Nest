// import 'package:app/presentation/screens/Login_and_Register/Sifremi_Unuttum.dart';
// import 'package:acente/presentation/Screens/Login_and_Register/Uye_Ol.dart';
import 'package:app/presentation/utils/constants.dart';
import 'package:app/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  static const String routname = '/forgetpassword';

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
            children : [
              Positioned(
                top: 0,
                left: 0,
                // height: 175,
                // width: 175,
                child: Image.asset(
                  'lib/presentation/assets/upperSemiCircle.png',
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: new BoxDecoration(
                  color: BackgroundColor,
                ),
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
                    Center(child: Text('Forget Password', style: V40R)),
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
                              label: 'Enter Email',
                              TextColor: Violet,
                              labelColor: Raisin_Black,
                              controller: username),
                          SizedBox(height: 25),
                          SolidButton(
                            text: 'Send OTP',
                            onPress: () async {
                              Navigator.pop(context);
                            },
                            shadow: PurpulShadow,
                            color: DarkPurpule,
                          ),
                          SizedBox(height: 35),
                        ],
                      ),
                    ),
                    SizedBox(height: 17),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                // height: 200,
                // width: 200,
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
