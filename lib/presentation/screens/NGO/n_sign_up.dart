import 'package:app/presentation/screens/NGO/n_home_page.dart';
import 'package:app/presentation/utils/constants.dart';
import 'package:app/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/presentation/screens/login.dart';

class NSignUp extends StatefulWidget {
  static const String routname = '/nsignup';

  @override
  _NSignUpState createState() => _NSignUpState();
}

class _NSignUpState extends State<NSignUp> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Container(
              decoration: new BoxDecoration(
                color: BackgroundColor,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Center(
                    child: Image.asset(
                      'lib/presentation/assets/logo.png',
                      width: 160,
                    ),
                  ),
                  Center(child: Text('NGO Sign Up', style: DP24B)),
                  SizedBox(height: 10),
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
                            label: 'NGO Name',
                            TextColor: Violet,
                            labelColor: Raisin_Black,
                            controller: username),
                        SizedBox(height: 25),
                        CustomTextInput(
                            label: 'Email',
                            TextColor: Violet,
                            labelColor: Raisin_Black,
                            controller: password),
                        SizedBox(height: 25),
                        CustomTextInput(
                            label: 'Founder Name',
                            TextColor: Violet,
                            labelColor: Raisin_Black,
                            controller: password),
                        SizedBox(height: 25),
                        CustomTextInput(
                            label: 'NGO Reg no.',
                            TextColor: Violet,
                            labelColor: Raisin_Black,
                            controller: password),
                        SizedBox(height: 25),
                        CustomTextInput(
                            label: 'Phone No.',
                            TextColor: Violet,
                            labelColor: Raisin_Black,
                            controller: password),
                        SizedBox(height: 25),
                        CustomTextInput(
                            label: 'Address',
                            TextColor: Violet,
                            labelColor: Raisin_Black,
                            controller: password),
                        SizedBox(height: 25),
                        CustomTextInput(
                            label: 'Year of Establishment',
                            TextColor: Violet,
                            labelColor: Raisin_Black,
                            controller: password),
                        SizedBox(height: 25),
                        CustomTextInput(
                            label: 'Password',
                            TextColor: Violet,
                            labelColor: Raisin_Black,
                            controller: password),
                        SizedBox(height: 25),
                        SolidButton(
                          text: 'Sign Up',
                          onPress: () {
                            Navigator.of(context)
                                .pushNamed(NHomePage.routname);
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
          ),
        ),
      ),
    );
  }
}
