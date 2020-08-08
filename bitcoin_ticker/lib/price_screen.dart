import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

final kThemeColor = Colors.lightGreen;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = currenciesList[0];
  CoinData coin = CoinData();
  Map<String, String> coinValues = {};
  bool isWaiting = false;

  @override
  void initState() {
    updateScreen();
    super.initState();
  }

  void updateScreen() async {
    isWaiting = true;
    var data = await coin.getBitCoinData(selectedCurrency);
    isWaiting = false;
    setState(() {
      coinValues = data;
    });
  }

  DropdownButtonHideUnderline androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItems.add(newItem);
    }
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: selectedCurrency,
        hint: Text(
          'Currency',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: TextStyle(
          fontSize: 20,
        ),
        items: dropdownItems,
        onChanged: (value) async {
          setState(() {
            selectedCurrency = value;
            updateScreen();
          });
        },
        elevation: 15,
      ),
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }
    return CupertinoPicker(
      itemExtent: 32,
      onSelectedItemChanged: (value) {
        setState(() {
          selectedCurrency = currenciesList[value];
          updateScreen();
        });
      },
      backgroundColor: Colors.lightBlue,
      children: pickerItems,
    );
  }

  List<Widget> getCryptoButtons() {
    List<Widget> cryptoButtons = [];
    for (String crypto in cryptoList) {
      String value = isWaiting ? '?' : coinValues[crypto];
      var item = Card(
        color: kThemeColor.shade600,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $crypto = $value $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      );
      cryptoButtons.add(item);
    }
    return cryptoButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Cryptocurrency Tracker'),
        backgroundColor: kThemeColor.shade800,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: getCryptoButtons(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: RaisedButton(
              child: Text('Refresh'),
              color: kThemeColor.shade600,
              onPressed: () {
                setState(() {
                  updateScreen();
                });
              },
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: kThemeColor.shade800,
            child: Center(
              child: Platform.isIOS ? iOSPicker() : androidDropdown(),
            ),
          ),
        ],
      ),
    );
  }
}
