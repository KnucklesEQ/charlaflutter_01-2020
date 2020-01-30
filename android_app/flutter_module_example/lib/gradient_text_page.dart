import 'package:flutter/material.dart';
import 'package:flutter_module_example/thanos_page.dart';

import 'gradienttext.dart';

class GradientTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        child: Icon(Icons.navigate_next),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ThanosPage(),
            ),
          );
        },
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GradientText(
              'Hello Flutter',
              gradient: LinearGradient(colors: [
                Colors.blue.shade400,
                Colors.blue.shade900,
              ]),
            ),
            GradientText(
              'Rainbow',
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.pink,
                Colors.purple,
                Colors.deepPurple,
                Colors.deepPurple,
                Colors.indigo,
                Colors.blue,
                Colors.lightBlue,
                Colors.cyan,
                Colors.teal,
                Colors.green,
                Colors.lightGreen,
                Colors.lime,
                Colors.yellow,
                Colors.amber,
                Colors.orange,
                Colors.deepOrange,
              ]),
            ),
            GradientText(
              'Fade out',
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.white,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}