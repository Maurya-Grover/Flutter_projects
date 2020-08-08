import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'drawer-tabs.dart';

class Draw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: new ListView(
               padding: const EdgeInsets.only(top: 0.0),
            children: <Widget>[
          DrawerHeader(child: Image(image:NetworkImage('https://www.digisol.com/wp-content/uploads/2018/10/DIGISOL-full-Logo-Horizontal-Original.jpg')),
          decoration: BoxDecoration(color: Colors.white),  ),


          new ListTile(
            leading: new Icon(Icons.lightbulb_outline,color: Colors.red.shade400,),
            title: new Text('Products'),
            selected: true ,

            onTap: () {
            },

          ),

          new Divider(),
          new ListTile(
            leading: new Icon(Icons.label,color: Colors.red.shade400),
            title: new Text('Selector'),
              onTap:(){Navigator.push( context, MaterialPageRoute (builder: (context)=>Selector()));}

          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.build,color: Colors.red.shade400),
            title: new Text('Service Location'),

              onTap:(){ Navigator.push( context, MaterialPageRoute (builder: (context)=>Service()));}


          ),
          new Divider(),
          new ListTile(
                          leading: new Icon(Icons.person,color: Colors.red.shade400),
                                   title: new Text('Support'),
              onTap:(){Navigator.push( context, MaterialPageRoute (builder: (context)=>Support()));}
//
             ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.call,color: Colors.red.shade400),
            title: new Text('Contact Us'),
              onTap:(){Navigator.push( context, MaterialPageRoute (builder: (context)=>Contact()));}

            )
        ],),);
  }
}
