import 'package:finale/ui/product_info.dart';

import 'ui/searchbar2.dart';
import 'package:flutter/material.dart';
import './ui/draw.dart';
import './ui/body.dart';
//import './ui/product_info.dart';

class HomePage extends StatefulWidget {
  HomePage({
    this.product,
  });

  final ProductItems product;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'Active';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Draw(),
        appBar: AppBar(
          title: Text("Product"),
          backgroundColor: Colors.red,
          actions: <Widget>[
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedCategory,
                isDense: false,
                hint: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
                elevation: 15,
                items: [
                  DropdownMenuItem(
                    child: Text(
                      'Active',
                      style: TextStyle(
                        color: Colors.grey[900],
                      ),
                    ),
                    value: 'Active',
                  ),
                  DropdownMenuItem(
                    child: Text(
                      'Passive',
                      style: TextStyle(
                        color: Colors.grey[900],
                      ),
                    ),
                    value: 'Passive',
                  ),
                ],
              ),
            )
          ],
        ),
        body: BuildProductsListPage(
          product: widget.product,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.search),
          onPressed: () {
            /*
            print(widget.product.name);
            for (int i = 0; i < info.length; i++) {
              print(info[i]['name']);
            }*/
            showSearch(
              context: context,
              delegate: DataSearch2(product: widget.product),
            );
          },
        ),
      ),
    );
  }
}
