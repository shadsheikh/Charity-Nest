import 'package:app/presentation/screens/donater/d_my_profile.dart';
import 'package:pandabar/pandabar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import 'd_home.dart';
import 'ngo_near_me.dart';

class DHomePage extends StatefulWidget {
  static const String routname = '/d_home_page';
  @override
  _DHomePageState createState() => _DHomePageState();
}

class _DHomePageState extends State<DHomePage> {

  int page = 0;
  List _pages = [
    DHome(),
    NGONearMe(),
    DHome(),
    DMyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: PandaBar(
        backgroundColor: Colors.white,
        buttonColor: UnselectedColor,
        buttonSelectedColor: DarkPurpule,
        fabColors: [DarkPurpule,DarkPurpule],
        fabIcon: Icon(Icons.archive,color: Colors.white,),
        buttonData: [
          PandaBarButtonData(
              id: 0,
              icon: Icons.home,
              title: 'Home'
          ),
          PandaBarButtonData(
              id: 1,
              icon: Icons.location_pin,
              title: 'Ngo near me'
          ),
          PandaBarButtonData(
              id: 2,
              icon: Icons.calendar_today_outlined,
              title: 'Book Slot'
          ),
          PandaBarButtonData(
              id: 3,
              icon: Icons.person,
              title: 'My Profile'
          ),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {

        },
      ),
      body: Builder(
        builder: (context) {
          return _pages[page];
        },
      ),
    );
  }
}