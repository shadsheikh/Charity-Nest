import 'package:app/presentation/utils/constants.dart';
import 'package:app/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/presentation/screens/login.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class NMyProfile extends StatefulWidget {
  static const String routname = '/n_my_profile';

  @override
  _NMyProfileState createState() => _NMyProfileState();
}

class _NMyProfileState extends State<NMyProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      boxShadow: Medium_Shadow,
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.zero,topRight: Radius.zero,bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: DarkPurpule,
                              size: 24.0,
                            ),
                            Spacer(),
                            Text("My Profile",style: DP16B,),
                            Spacer(),
                            Icon(
                              Icons.edit,
                              color: DarkPurpule,
                              size: 24.0,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Image.asset(
                          'lib/presentation/assets/Profile.png',
                          width: 100,
                        ),
                        SizedBox(height: 20),
                        Text("Good Will NGO",style: TC18B,),
                        SizedBox(height: 5),
                        Text("Reg704688781",style: TC12R,),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            DualTextColumn(text1: 'Donations', text2: '25',style1: TC14B,style2: TC12R),
                            Spacer(),
                            DualTextColumn(text1: 'Stories', text2: '25',style1: TC14B,style2: TC12R),
                            Spacer(),
                            DualTextColumn(text1: 'Pad credit', text2: '100',style1: TC14B,style2: TC12R),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        ItemQuantity(name: 'Rice',req: '100 KG',avl: 0.9,),
                        ItemQuantity(name: 'Wheat',req: '200 kG',avl: 0.4,),
                        ItemQuantity(name: 'Oil',req: '50 Lit',avl: 0.6,),
                        ItemQuantity(name: 'Spices',req: '25 KG',avl: 0.25,),
                        ItemQuantity(name: 'LPG',req: '75 kG',avl: 0.5,),
                        ItemQuantity(name: 'Vegitables',req: '10 KG',avl: 0.7,),
                      ],
                    )
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
