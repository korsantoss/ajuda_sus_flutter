import 'package:ajuda_sus_refactored/models/publications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'card_publications.dart';

class PublicationsPage extends StatefulWidget {
  final String nomeUnidade;
  final List<PublicationModel> pubs;
  const PublicationsPage({this.pubs, this.nomeUnidade});
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
                widget.nomeUnidade,
                style: TextStyle(color: Color(0xff4FB7D4), fontSize: 21),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: widget.pubs.isEmpty == true
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Text("Nenhuma Publicação Encontrada",
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                    )
                  : ListView.builder(
                      itemCount: widget.pubs.length,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      itemBuilder: (context, index) {
                        return CardPublications(pub: widget.pubs[index]);
                      }),
            )
          ],
        ),
      ),
    );
  }
}
