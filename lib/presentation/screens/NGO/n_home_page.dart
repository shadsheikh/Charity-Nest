import 'package:app/presentation/screens/donater/d_my_profile.dart';
import 'package:pandabar/pandabar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import 'package:app/presentation/screens/NGO/n_home.dart';
import 'n_my_profile.dart';

class NHomePage extends StatefulWidget {
  static const String routname = '/n_home_page';
  @override
  _NHomePageState createState() => _NHomePageState();
}

class _NHomePageState extends State<NHomePage> {

  int page = 0;
  List _pages = [
    NHome(),
    NHome(),
    NHome(),
    NMyProfile(),
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
              icon: Icons.monetization_on,
              title: 'Donations'
          ),
          PandaBarButtonData(
              id: 2,
              icon: Icons.calendar_today_outlined,
              title: 'Event Slots'
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