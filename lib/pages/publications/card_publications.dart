import 'package:flutter/material.dart';

class CardPublications extends StatefulWidget {
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
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  "12/05/2021",
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.")
            ],
          ),
        ),
      ),
    );
  }
}
