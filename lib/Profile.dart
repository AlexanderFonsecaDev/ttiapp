import 'package:flutter/material.dart';
import 'package:tutorin/Models/User.dart';

class Profile extends StatelessWidget {
  const Profile();

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return new Container(
      child: Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
              title: new Text(
                "Jhon Alexander F",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              email: Text(
                "devalexfonseca@gmail.com"
              ),
              icon: new Icon(
                Icons.person,
                size: 150,
              ),
              coins: new Card(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Tu saldo actual es de \u00242000",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                color: Colors.blueAccent,
              ),
              description: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                  letterSpacing: 1.5,
                  height: 1.5,
                ),
              ),
            ),
            Card(
              child: Container(

              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget email;
  final Widget icon;
  final Widget coins;
  final Widget description;

  MyCard({this.title,this.email, this.icon, this.coins, this.description});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Card(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                this.title,
                this.email,
                this.icon,
                this.coins,
                this.description
              ],
            ),
          )),
    );
  }
}
