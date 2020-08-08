import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tile_view.dart';
import 'product_info.dart';

buildProductsListPage() {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.black87,
          Colors.black54,
          Colors.black26,
          Colors.white24,
//          Colors.indigo[700],
//          Colors.indigo[500],
//          Colors.indigo[300],
//          Colors.indigo[100],
        ],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      ),
    ),
    child: ListView.builder(
      itemBuilder: (context, index) {
        return TileView(
          name: info[index]['name'],
          desc: info[index]['desc'],
          image: info[index]['image'],
          index: index,
          usp: info[index]['USP'],
          feature: info[index]['feature'],
          detDesc: info[index]['detDesc'],
        );
      },
      itemCount: info.length,
    ),
  );
}
