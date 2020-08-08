import 'package:http/http.dart' as http;
import 'dart:convert';

const String url = 'https://apiv2.bitcoinaverage.com/indices/global/ticker/';
const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<dynamic> getBitCoinData(String selectedCurrency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      http.Response response = await http.get('$url$crypto$selectedCurrency');
      if (response.statusCode == 200) {
        String data = response.body;
        var coinData = jsonDecode(data);
        double last = coinData['last'];
        cryptoPrices[crypto] = last.toStringAsFixed(2);
      } else {
        print(response.statusCode);
      }
    }
    return cryptoPrices;
  }
}
