import 'package:flutter/material.dart';

class MySearch extends StatelessWidget {
  String flutterText = "";
  int index = 0;
  List<String> collections = ['Flutter', 'es', 'genial'];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Matematicas"
                    ),
                  ),
                  color: Colors.grey[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                        "Español"
                    ),
                  ),
                  color: Colors.grey[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                        "Biologia"
                    ),
                  ),
                  color: Colors.grey[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                        "Ciencia"
                    ),
                  ),
                  color: Colors.grey[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                        "Inteligencia artificial"
                    ),
                  ),
                  color: Colors.grey[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                        "Mineria de datos"
                    ),
                  ),
                  color: Colors.grey[100],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
