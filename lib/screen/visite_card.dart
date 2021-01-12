import 'package:flutter/material.dart';

class VisitCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: Color(0xff052555),
        appBar: AppBar(
          title: Text("Ma carte de visite"),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage("assets/0.jpg"),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Essowedeo BALAKIM",
                    style: TextStyle(
                        fontFamily: "Imbue",
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
              Card(
                color: Colors.transparent,
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "I am SoftWare Developper. \n Developpment Tools et and solutions are tools to resolve problems",
                    style: TextStyle(
                        fontFamily: "Imbue",
                        fontSize: 25.0,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              RaisedButton(
                child: Text("En savoir plus"),
                color: Colors.blueGrey,
                onPressed: null,
              ),
            ],
          ),
        ))));
  }
}
