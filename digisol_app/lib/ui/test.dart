/*import 'package:finale/ui/product_info.dart';
import 'package:flutter/material.dart';

class TestingAPI extends StatefulWidget {
  @override
  _TestingAPIState createState() => _TestingAPIState();
}

class _TestingAPIState extends State<TestingAPI> {
  ProductItems product = ProductItems();
  Product _product = Product();

  void buildList(dynamic productData) {
    setState(
      () {
        if (productData == null) {
          product.name = ['NA'];
          product.desc = ['NA'];
          product.detDesc = ['NA'];
          product.image = ['NA'];
          product.feature = ['NA'];
          product.usp = ['NA'];
          product.id = [0];
        } else {
          product.id = List<int>.generate(
              productData.length, (index) => productData[index]['id']);
          print(product.id);
          product.desc = List<String>.generate(productData.length,
              (index) => productData[index]['title']['rendered']);
          print(product.desc);
          product.image = List<String>.generate(productData.length,
              (index) => productData[index]['acf']['image_1']);
          product.detDesc =
              List<String>.generate(productData.length, (index) => 'NA');
          product.id = List<int>.generate(
              productData.length, (index) => productData[index]['id']);
          product.usp =
              List<String>.generate(productData.length, (index) => 'NA');
          product.feature =
              List<String>.generate(productData.length, (index) => 'NA');
          print(product.feature);
          print(product.usp);
          product.name = List<String>.generate(productData.length,
              (index) => productData[index]['acf']['model_number']);
          print(product.name);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Testing API'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black87,
                Colors.black54,
                Colors.black26,
                Colors.white24,
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(''),
              RaisedButton(
                child: Text('Get Data'),
                onPressed: () async {
                  var productData = await _product.getProductIds();
                  buildList(productData);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
