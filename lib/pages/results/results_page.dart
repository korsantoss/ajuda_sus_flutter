import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'card_unid_model.dart';

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
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
              padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
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
                "Resultados",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                children: [
                  CardUnidade(),
                  CardUnidade(),
                  CardUnidade(),
                  CardUnidade(),
                  CardUnidade(),
                  CardUnidade(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
