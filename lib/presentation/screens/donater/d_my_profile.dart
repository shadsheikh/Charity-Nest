import 'package:app/presentation/utils/constants.dart';
import 'package:app/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/presentation/screens/login.dart';

class DMyProfile extends StatefulWidget {
  static const String routname = '/d_my_profile';

  @override
  _DMyProfileState createState() => _DMyProfileState();
}

class _DMyProfileState extends State<DMyProfile> {

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
                        Text("Sandra Awiiri",style: TC18B,),
                        SizedBox(height: 5),
                        Text("+256 704688781",style: TC12R,),
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
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        IconText(title: 'anna.alvaddo@gmail.com',icon: Icons.email_outlined,),
                        SizedBox(height: 15),
                        IconText(title: '28th/08/1991',icon: Icons.calendar_today,),
                        SizedBox(height: 15),
                        IconText(title: 'Najeera1, Kampala, Uganda',icon: Icons.home,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}

class IconText extends StatelessWidget {

  final String title;
  final IconData icon;

  const IconText({
    Key? key, required this.title, required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Icon(
        icon,
        color: DarkPurpule,
        size: 24.0,
      ),
      SizedBox(width: 10,),
      Text(title,style: TC18R),
    ],
    );
  }
}
