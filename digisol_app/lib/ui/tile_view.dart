import 'package:finale/loading_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:finale/product_page.dart';
//import 'product_info.dart';

class TileView extends StatelessWidget {
  //final ProductItems product;
  final String name;
  final String desc;
  final String image;
  final int id;

  TileView({
    this.name,
    this.desc,
    this.image,
    this.id,
  });

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
            builder: (context) =>
                LoadingScreen(
                  id: id,
                ),
          ),
        );
      },
      splashColor: Colors.grey,
    );
  }
}
