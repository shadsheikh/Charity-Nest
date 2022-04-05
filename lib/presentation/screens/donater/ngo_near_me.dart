import 'package:app/presentation/utils/constants.dart';
import 'package:app/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/presentation/screens/login.dart';

class NGONearMe extends StatefulWidget {
  static const String routname = '/ngo_near_me';

  @override
  _NGONearMeState createState() => _NGONearMeState();
}

class _NGONearMeState extends State<NGONearMe> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 19, bottom: 34, left: 25, right: 25),
                child: Row(
                  children: [
                    Text('NGO Near You', style: TC18B),
                    Spacer(),
                    CircleIconButton(
                        buttonColor: Colors.white,
                        onPress: () {
                          Navigator.pop(context);
                        },
                        shadow: Red_Low_Shadow,
                        icon: Icons.close,
                        iconColor: Violet),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  //width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height - 188,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/presentation/assets/map.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
