import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finale/product_page.dart';

class TileView extends StatelessWidget {
  final String name;
  final String desc;
  final String image;
  final int index;
  final String usp;
  final String feature;
  final String detDesc;

  TileView(
      {this.name, this.desc, this.image, this.index, this.usp, this.feature, this.detDesc});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        margin: EdgeInsets.only(
          top: 15,
          right: 10,
          left: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.grey[200],
        child: Container(
            padding:
                EdgeInsets.only(top: 15.0, bottom: 15.0, right: 0, left: 0),
            child: Column(
              children: <Widget>[
                Container(
                  child: ListTile(
                    leading: Image(
                      image: NetworkImage(image),
                    ),
                    title: Text(
                      name,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[700],
                ),
                Container(
                  child: Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            )),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductState(
                  name: name,
                  desc: desc,
                  image: image,
              feature: feature,
              detDesc: detDesc,
              usp: usp,
                ),
          ),
        );
      },
      splashColor: Colors.grey,
    );
  }
}
