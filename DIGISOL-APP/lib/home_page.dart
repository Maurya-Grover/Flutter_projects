import 'ui/searchbar2.dart';
import 'package:flutter/material.dart';
import './ui/draw.dart';
import './ui/body.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

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
          title: Text("PRODUCT"),
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
        body: buildProductsListPage(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.search),
          onPressed: () {
            showSearch(
              context: context,
              delegate: DataSearch2(),
            );
          },
        ),
      ),
    );
  }
}
