// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mood/helpInstitutions.dart';
import 'package:mood/home.dart';

class WlcomePage extends StatefulWidget {
  static final routeName = '/welcomepage';
  WlcomePage({Key? key}) : super(key: key);

  @override
  _WlcomePageState createState() => _WlcomePageState();
}

class _WlcomePageState extends State<WlcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              child: Center(
                child: Text(
                  'MOOD',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).popAndPushNamed(Home.routename);
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber),
                  child: Text(
                    'Start',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  // Icon(Icons.arrow_forward)
                ),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(Help.routename);
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.greenAccent),
                  child: Text(
                    'Help Institutions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  // Icon(Icons.arrow_forward)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
