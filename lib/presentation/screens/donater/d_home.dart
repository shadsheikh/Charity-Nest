import 'package:app/presentation/utils/constants.dart';
import 'package:app/presentation/utils/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/presentation/screens/login.dart';

class DHome extends StatefulWidget {
  static const String routname = '/d_home';

  @override
  _DHomeState createState() => _DHomeState();
}

class _DHomeState extends State<DHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text("Stories",style: TC18R,),
                Posts(),
                Posts(),
                Posts(),
                Posts(),
                Posts(),
                Posts(),
                Posts(),
                Posts(),
              ],
            ),
          ),
        )
      ),
    );
  }
}

class Posts extends StatelessWidget {
  const Posts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          boxShadow: Medium_Shadow,
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/presentation/assets/ngo.jpg',
                  width: 100,
                ),
                SizedBox(width: 7,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("This is Title",style: TC18R,),
                      Text("Can we donate this to the patient, does the patient get an over dose and at the end of the day, why does one react to Can we donate this to the patient, does the patient get an over dose and at the end of the day, why does one react to over dose and at the end of the",
                        style:TC12B,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        softWrap: false,),
                      Icon(
                        Icons.favorite,
                        color: Colors.pink,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right_sharp,
                  color: DarkPurpule,
                  size: 24.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
