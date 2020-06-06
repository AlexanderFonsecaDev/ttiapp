import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Container(

        child: Center(
          child: Card(
            child: Container(
              height: 150,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("¿Aún no tienes proyectos?"),
                  Text("¡Tenemos todo preparado para ti!"),
                  RaisedButton(
                    onPressed: () {},
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.blueAccent,
                        ),
                        width: double.infinity,
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "Crear",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
