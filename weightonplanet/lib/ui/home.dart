import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int radioValue = 0;
  final TextEditingController _weightController = TextEditingController();
  String _formattedText = '';

  double calculateWeight(String weight, double multiplier) {
    if (weight.isNotEmpty && int.parse(weight) > 0) {
      return int.parse(weight) * multiplier;
    } else {
      print("Wrong!");
      return int.parse('180') * 0.38 / 2.205;
    }
  }

  void handleRadioValueChanged(int value) {
    if (_weightController.text.isNotEmpty) {
      setState(() {
        radioValue = value;
        double _finalResult = 0.0;
        //print(radioValue);
        switch (radioValue) {
          case 0:
            _finalResult = calculateWeight(_weightController.text, 0.06);
            _formattedText =
                'Your Weight On Pluto is ${_finalResult.toStringAsFixed(2)}Kgs';
            break;
          case 1:
            _finalResult = calculateWeight(_weightController.text, 0.38);
            _formattedText =
                'Your Weight On Mars is ${_finalResult.toStringAsFixed(2)}Kgs';
            break;
          case 2:
            _finalResult = calculateWeight(_weightController.text, 0.91);
            _formattedText =
                'Your Weight On Venus is ${_finalResult.toStringAsFixed(2)}Kgs';
            break;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight On Plane X'),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: EdgeInsets.all(2.5),
          children: <Widget>[
            Image.asset(
              'assets/planet.png',
              height: 133.0,
              width: 200.0,
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Your Weight On Earth',
                      hintText: 'In Kgs',
                      icon: Icon(Icons.person_outline),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio<int>(
                        activeColor: Colors.brown,
                        value: 0,
                        onChanged: handleRadioValueChanged,
                        groupValue: radioValue,
                      ),
                      Text(
                        'Pluto',
                        style: TextStyle(color: Colors.white30),
                      ),
                      Radio<int>(
                        activeColor: Colors.red,
                        value: 1,
                        onChanged: handleRadioValueChanged,
                        groupValue: radioValue,
                      ),
                      Text(
                        'Mars',
                        style: TextStyle(color: Colors.white30),
                      ),
                      Radio<int>(
                        activeColor: Colors.orangeAccent,
                        value: 2,
                        onChanged: handleRadioValueChanged,
                        groupValue: radioValue,
                      ),
                      Text(
                        'Venus',
                        style: TextStyle(color: Colors.white30),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                      _weightController.text.isEmpty
                          ? 'Please Enter Weight'
                          : _formattedText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19.4,
                        fontWeight: FontWeight.w600,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
