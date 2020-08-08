import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String _AccountName = 'Tanuj Khandelwal';
const String _AccountEmail = 'tanujkh007@gmail.com';
const kUserDetailStyle = TextStyle(
  color: Colors.black87,
);

class Draw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 0.0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(_AccountName, style: kUserDetailStyle),
            accountEmail: Text(_AccountEmail, style: kUserDetailStyle),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.digisol.com/wp-content/uploads/2018/10/DIGISOL-full-Logo-Horizontal-Original.jpg')),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313__340.jpg'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.lightbulb_outline),
            title: Text('Our Products'),
            onTap: () => null,
            //onTap: () => _onListTileTap(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Search'),
            onTap: () => null,
            //onTap: () => _onListTileTap(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.label),
            title: Text('Selector'),
            onTap: () => null,
            //onTap: () => _onListTileTap(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Service Location'),
            onTap: () => null,
            //onTap: () => _onListTileTap(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Support'),
            onTap: () => null,
            //onTap: () => _onListTileTap(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Contact Us'),
            onLongPress: () => null,
            // onTap: () => _onListTileTap(context),
          ),
        ],
      ),
    );
  }
}
