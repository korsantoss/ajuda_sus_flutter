import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'card_publications.dart';

class PublicationsPage extends StatefulWidget {
  @override
  _PublicationsPageState createState() => _PublicationsPageState();
}

class _PublicationsPageState extends State<PublicationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: SvgPicture.asset('assets/logo.svg', height: 130),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              color: Color(0xff4FB7D4),
              width: double.infinity,
              height: 60,
              child: Text(
                "Publicações",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            // title unidade de saude
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              width: double.infinity,
              height: 30,
              child: Text(
                "UPA 24hrs",
                style: TextStyle(color: Color(0xff4FB7D4), fontSize: 21),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                children: [
                  CardPublications(),
                  CardPublications(),
                  CardPublications(),
                  CardPublications(),
                  CardPublications(),
                  CardPublications(),
                  CardPublications(),
                  CardPublications(),
                  CardPublications(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
