import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tile_view.dart';
import 'product_info.dart';

class BuildProductsListPage extends StatefulWidget {
  final ProductItems product;

  BuildProductsListPage({this.product});

  @override
  _BuildProductsListPageState createState() => _BuildProductsListPageState();
}

class _BuildProductsListPageState extends State<BuildProductsListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TileView(
            name: widget.product.name[index],
            desc: widget.product.desc[index],
            image: widget.product.image[index],
            id: widget.product.id[index],
            //index: index,
            //usp: widget.product.usp[index],
            //feature: widget.product.feature[index],
            //detDesc: widget.product.detDesc[index],
          );
        },
        itemCount: widget.product.name.length,
      ),
    );
  }
}
