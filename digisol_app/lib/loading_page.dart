import 'package:flutter/material.dart';
import './ui/product_info.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'home_page.dart';

class LoadingScreen extends StatefulWidget {
  static String tag = 'loading-screen';

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  ProductItems productItems = ProductItems();

  void buildList(dynamic productData) {
    setState(
      () {
        if (productData == null) {
          productItems.desc =
              List<String>.generate(productData.length, (index) => 'NA');
          productItems.image =
              List<String>.generate(productData.length, (index) => 'NA');
          productItems.name =
              List<String>.generate(productData.length, (index) => 'NA');
        } else {
          productItems.image = List<String>.generate(productData.length,
              (index) => productData[index]['acf']['image_1']);
          productItems.name = List<String>.generate(productData.length,
              (index) => productData[index]['acf']['model_number']);
          productItems.desc = List<String>.generate(productData.length,
              (index) => productData[index]['title']['rendered']);
          productItems.id = List<int>.generate(
              productData.length, (index) => productData[index]['id']);
        }
      },
    );
  }

  @override
  void initState() {
    getProductData();
    super.initState();
  }

  void getProductData() async {
    Product product = Product();
    var productData = await product.getProductIds();
    buildList(productData);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return HomePage(
            product: productItems,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SpinKitDoubleBounce(
        color: Colors.red,
        size: 150,
      )),
    );
  }
}
