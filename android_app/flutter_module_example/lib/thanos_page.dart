import 'package:flutter/material.dart';
import 'package:snappable/snappable.dart';

class ThanosPage extends StatefulWidget {
  @override
  _ThanosPageState createState() => _ThanosPageState();
}

class _ThanosPageState extends State<ThanosPage> {
  final _snappableKey = GlobalKey<SnappableState>();
  final _snappableKey2 = GlobalKey<SnappableState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thanos Snap'),
      ),
      body: ListView(
        children: <Widget>[
          Snappable(
            key: _snappableKey2,
            snapOnTap: true,
            //onSnapped: () => print("Snapped!"),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
              child: Image.asset(
                  'assets/images/android_dgv.jpg',
                  // width: 300,
                  height: 350,
                  fit:BoxFit.fill
              ),
            ),
          ),
          RaisedButton(
            child: Text('Snap / Reverse'),
            onPressed: () {
              SnappableState state = _snappableKey2.currentState;
              if (state.isGone) {
                state.reset();
              } else {
                state.snap();
              }
            },
          ),
          SizedBox(height: 15.0),
          Snappable(
            key: _snappableKey,
            snapOnTap: true,
            //onSnapped: () => print("Snapped!"),
            child: Card(
              child: Container(
                height: 500,
                width: double.infinity,
                color: Colors.deepPurple,
                alignment: Alignment.center,
                child: Text(
                  'This will be sanpped',
                  style: Theme.of(context).textTheme.title.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ),
          RaisedButton(
            child: Text('Snap / Reverse'),
            onPressed: () {
              SnappableState state = _snappableKey.currentState;
              if (state.isGone) {
                state.reset();
              } else {
                state.snap();
              }
            },
          ),
        ],
      ),
    );
  }
}
