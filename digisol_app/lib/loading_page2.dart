import 'package:finale/product_page.dart';
import 'package:flutter/material.dart';
import './ui/product_info.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  final int id;

  LoadingScreen({this.id});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  ProductDetails productItems = ProductDetails();

  void buildList(dynamic productData) {
    setState(
      () {
        if (productData == null) {
          productItems.desc = 'NA';
          productItems.usp = 'NA';
          productItems.feature = 'NA';
          productItems.image = 'NA';
          productItems.name = 'NA';
          /*productItems.images = List<String>.generate(productData.length, (index) => 'NA');*/
        } else {
          /*productItems.images = List<String>.generate(productData.length,(index) => productData[index]['acf']['image_1']);*/
          productItems.name =
              productData['acf']['model_number']; // acf.model_number
          productItems.desc =
              productData['content']['rendered']; //content.rendered
          productItems.usp = 'NA';
          productItems.feature = 'NA';
          productItems.image = productData['acf']['image_1']; //acf.image_1
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
    var productData = await product.getProductData(widget.id);
    buildList(productData);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return ProductState(
            productID: productItems,
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
