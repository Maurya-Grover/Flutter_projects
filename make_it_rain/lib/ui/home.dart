import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0, _moneyAdded;

  void _rainMoney0() {
    setState(() {
      _moneyAdded = 0;
      _moneyCounter = 0;
    });
  }
  void _rainMoney100() {
    setState(() {
      _moneyAdded = 100;
      _moneyCounter = _moneyCounter + _moneyAdded;
    });
  }

  void _rainMoney200() {
    _moneyAdded = 200;
    setState(() {
      _moneyCounter = _moneyCounter + _moneyAdded;
    });
  }

  void _rainMoney250() {
    _moneyAdded = 250;
    setState(() {
      _moneyCounter = _moneyCounter + _moneyAdded;
    });
  }

  void _rainMoney500() {
    _moneyAdded = 500;
    setState(() {
      _moneyCounter = _moneyCounter + _moneyAdded;
    });
  }

  void _rainMoney1000() {
    _moneyAdded = 1000;
    setState(() {
      _moneyCounter = _moneyCounter + _moneyAdded;
    });
  }
  void _rainMoney2000() {
    _moneyAdded = 2000;
    setState(() {
      _moneyCounter = _moneyCounter + _moneyAdded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Paytm"),
          backgroundColor: Colors.blueAccent[600],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              //title
              Center(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 5, top: 10),
                  child: Text(
                    "Your Digital Wallet",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "\$$_moneyCounter",
                    style: TextStyle(
                      color: _moneyCounter < 10000?(Colors.blue):(Colors.blue[900]),
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: _rainMoney0,
                        child: Text("Clear",
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlatButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: _rainMoney100,
                            child: Text("Add \$100",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ),
                          FlatButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: _rainMoney200,
                            child: Text("Add \$200",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlatButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: _rainMoney250,
                            child: Text("Add \$250",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ),
                          FlatButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: _rainMoney500,
                            child: Text("Add \$500",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlatButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: _rainMoney1000,
                            child: Text("Add \$1000",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ),
                          FlatButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: _rainMoney2000,
                            child: Text("Add \$2000",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
