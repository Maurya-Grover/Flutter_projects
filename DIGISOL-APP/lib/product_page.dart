import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductState extends StatelessWidget {
  final String name;
  final String desc;
  final String image;
  final String usp;
  final String feature;
  final String detDesc;

  ProductState(
      {this.name, this.desc, this.image, this.usp, this.feature, this.detDesc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
            title: Text(
              name,
            ),
            backgroundColor: Colors.red),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white70,
                Colors.white54,
                Colors.white10,
              ],
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
            ),
          ),
          child: ListView(
            children: <Widget>[
              Container(
                height: 250,
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image(
                    image: NetworkImage(image),
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: MFooter(
                  usp: usp,
                  feature: feature,
                  detDesc: detDesc,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: //bottom(),
            BottomAppBar(
              color: Color.lerp(Colors.white10, Colors.white, 0.6),
          elevation: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () => null,
                  padding: EdgeInsets.all(12),
                  color: Colors.red,
                  child: Text('PDF', style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () => null,
                  padding: EdgeInsets.all(12),
                  color: Colors.red,
                  child:
                      Text('Firmware', style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () => null,
                  padding: EdgeInsets.all(12),
                  color: Colors.red,
                  child: Text('EDM', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ));
  }
}

class MFooter extends StatefulWidget {
  final String usp;
  final String feature;
  final String detDesc;

  MFooter({this.detDesc, this.feature, this.usp});

  @override
  _MFooterState createState() =>
      _MFooterState(usp: usp, feature: feature, detDesc: detDesc);
}

class _MFooterState extends State<MFooter> with SingleTickerProviderStateMixin {
  final String usp;
  final String feature;
  final String detDesc;

  _MFooterState({this.detDesc, this.feature, this.usp});

  List<Tab> _tabs;
  List<Widget> _pages;
  static TabController _controller;

  @override
  void initState() {
    super.initState();

    _tabs = [
      new Tab(
        child: new Text(
          "Description",
          style: new TextStyle(color: Colors.black),
        ),
      ),
      new Tab(
        child: new Text(
          "USP",
          style: new TextStyle(color: Colors.black),
        ),
      ),
      new Tab(
        child: new Text(
          "Feature",
          style: new TextStyle(color: Colors.black),
        ),
      ),
    ];
    _pages = [
      Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Text(
              detDesc,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Text(
              usp,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Text(
              feature,
            ),
          ],
        ),
      ),
    ];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new TabBar(
          isScrollable: true,
          controller: _controller,
          tabs: _tabs,
          indicatorColor: Colors.red,
        ),
        new Divider(
          height: 1.0,
        ),
        new SizedBox.fromSize(
          size: const Size.fromHeight(260.0),
          child: new TabBarView(
            controller: _controller,
            children: _pages,
          ),
        ),
      ],
    );
  }
}
