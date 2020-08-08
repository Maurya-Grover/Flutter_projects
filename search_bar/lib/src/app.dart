import 'package:flutter/material.dart';
import 'draw.dart';
import 'search.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search App',
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digisol'),
        backgroundColor: Colors.red[700],
      ),
      drawer: Draw(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[700],
        onPressed: () {
          showSearch(context: context, delegate: DataSearch());
        },
        child: Icon(Icons.search),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://smartlinkholdings.com/digisol/wp-content/uploads/sites/2/2016/09/website-slider-1400x400.jpg'),

          ),
        ),
      ),
    );
  }
}
