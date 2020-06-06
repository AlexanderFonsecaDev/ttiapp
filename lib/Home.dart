import 'package:flutter/material.dart';
import 'package:tutorin/Pages/List.dart';
import 'package:tutorin/Pages/Search.dart';
import 'package:tutorin/Pages/Create.dart';

class Home extends StatelessWidget {
  static const String _title = 'TUTOR IN';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyTopBar(),
    );
  }
}

class MyTopBar extends StatefulWidget {
  @override
  _MyTopBarState createState() => _MyTopBarState();
}

class _MyTopBarState extends State<MyTopBar>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        children: <Widget>[
          new MyList(),
          new MySearch(),
          new MyCreate(),
          new MySearch(),
          new MySearch(),
        ],
        controller: controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.blueAccent,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              icon: Icon(
                Icons.list,
                color: Colors.white,
              ),
            ),
            new Tab(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            new Tab(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            new Tab(
              icon: Icon(
                Icons.comment,
                color: Colors.white,
              ),
            ),
            new Tab(
              icon: Icon(
                Icons.perm_identity,
                color: Colors.white,
              ),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}

