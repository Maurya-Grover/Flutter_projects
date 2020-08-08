import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[700],
      appBar: AppBar(
        title: Text('Dice!'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var _leftDiceNumber = 1, _rightDiceNumber = 1;

  void _rollTheDice() {
    setState(() {
      _leftDiceNumber = Random().nextInt(6) + 1;
      _rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                //flex: 3,
                child: FlatButton(
                  child: Image.asset('images/dice$_leftDiceNumber.png'),
                  onPressed: () {
                    //                    final snackBar = SnackBar(
//                      content: Text("Dice 1 was rolled!"),
//                      duration: Duration(milliseconds: 850),
//                      action: SnackBarAction(
//                        label: 'Press Me',
//                        onPressed: () => print('SnackBar Action Button was pressed'),
//                        disabledTextColor: Colors.yellowAccent,
//                      ),
//                    );
//                    Scaffold.of(context).showSnackBar(snackBar);
                    _rollTheDice();
                  },
                  splashColor: Colors.white30,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    //                    final snackBar = SnackBar(
//                      content: Text("Dice 1 was rolled!"),
//                      duration: Duration(milliseconds: 850),
//                      action: SnackBarAction(
//                        label: 'Press Me',
//                        onPressed: () => print('SnackBar Action Button was pressed'),
//                        disabledTextColor: Colors.yellowAccent,
//                      ),
//                    );
//                    Scaffold.of(context).showSnackBar(snackBar);
                    _rollTheDice();
                  },
                  child: Image.asset('images/dice$_rightDiceNumber.png'),
                  splashColor: Colors.white30,
                ),
              )
            ],
          ),
//          SizedBox(
//            height: 30,
//          ),
//          RaisedButton(
//            child: Text(
//              "Roll Dice",
//              style: TextStyle(
//                color: Colors.deepOrange[900],
//              ),
//            ),
//            onPressed: () => {},
//            color: Colors.red[50],
//            splashColor: Colors.deepOrangeAccent.shade200,
//          )
        ],
      ),
    );
  }
}
