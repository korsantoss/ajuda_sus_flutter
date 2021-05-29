import 'package:ajuda_sus_refactored/models/publications.dart';
import 'package:flutter/material.dart';

class CardPublications extends StatefulWidget {
  final PublicationModel pub;
  const CardPublications({this.pub});

  @override
  _CardPublicationsState createState() => _CardPublicationsState();
}

class _CardPublicationsState extends State<CardPublications> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  widget.pub.titulo,
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  widget.pub.data,
                  textAlign: TextAlign.center,
                ),
              ),
              Text(widget.pub.conteudo)
            ],
          ),
        ),
      ),
    );
  }
}
