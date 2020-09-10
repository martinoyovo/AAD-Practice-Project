import 'package:flutter/material.dart';
import 'package:gads_project/form.dart';
import 'package:gads_project/one.dart';
import 'package:gads_project/two.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('LEADERBOARD'),
          actions: [
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Forme()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 22),
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Learning Leaders',
              ),
              Tab(
                text: 'Skill IQ Leaders',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [One(), Two()],
        ),
      ),
    );
  }
}
