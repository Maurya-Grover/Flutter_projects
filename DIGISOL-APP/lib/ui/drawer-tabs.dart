import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Selector extends StatelessWidget {
  static String tag = 'service-location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selector'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          child: Image(
            image: NetworkImage(
                'https://cookstliquor.com/wp-content/uploads/2018/01/underconstruction.png'),
          ),
        ),
      ),
    );
  }
}

class Service extends StatelessWidget {
  static String tag = 'service-location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Location'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          child: Image(
            image: NetworkImage(
                'https://cookstliquor.com/wp-content/uploads/2018/01/underconstruction.png'),
          ),
        ),
      ),
    );
  }
}

class Support extends StatelessWidget {
  static String tag = 'service-location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          child: Image(
            image: NetworkImage(
                'https://cookstliquor.com/wp-content/uploads/2018/01/underconstruction.png'),
          ),
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  static String tag = 'service-location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          child: Image(
            image: NetworkImage(
                'https://cookstliquor.com/wp-content/uploads/2018/01/underconstruction.png'),
          ),
        ),
      ),
    );
  }
}
