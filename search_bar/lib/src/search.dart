import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final cities = [
    'Mumbai',
    'Chennai',
    'Delhi',
    'Pune',
    'Nagpur',
    'Lucknow',
    'Indore',
    'Bhopal',
    'Kolkata',
    'Kanpur',
    'Ahemdabad',
    'Banaglore',
    'Mysore',
    'Jaipur',
    'Himachal',
    'Agra',
  ];
  final recentCities = [
    'Mumbai',
    'Chennai',
    'Delhi',
    'Pune',
  ];

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
      //Text('Chutiya'),
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
    // show result based on the selection
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.red[700],
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(
                      color: Colors.red[200],
                    )
                )
              ]
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}