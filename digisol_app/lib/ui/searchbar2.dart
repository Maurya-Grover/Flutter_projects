import 'package:flutter/material.dart';
import 'product_info.dart';
import 'tile_view.dart';

class DataSearch2 extends SearchDelegate<String> {
  final ProductItems product;

  DataSearch2({this.product});

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for appbar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on left of appbar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty
        ? product.name
        : product.name.where((p) => p.toLowerCase().startsWith(query)).toList();

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
            name: product.name[index],
            desc: product.desc[index],
            image: product.image[index],
            id: product.id[index],
          );
        },
        itemCount: suggestionList.length,
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty
        ? product.name
        : product.name.where((p) => p.toLowerCase().startsWith(query)).toList();
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
            name: product.name[index],
            desc: product.desc[index],
            image: product.image[index],
            id: product.id[index],
          );
        },
        itemCount: suggestionList.length,
      ),
    );
  }
}
