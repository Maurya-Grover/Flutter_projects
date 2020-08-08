import 'package:flutter/material.dart';

class CustomLoginForm extends StatefulWidget {
  @override
  _CustomLoginFormState createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //add image
          Center(
            child: Image.asset(
              "images/face.png.png",
              width: 90,
              height: 90,
              color: Colors.deepOrangeAccent.shade200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    gapPadding: 4,
                    borderRadius: BorderRadius.circular(10),
                  )
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    gapPadding: 4,
                    borderRadius: BorderRadius.circular(4),
                  ),
              ),
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {debugPrint('Muthi Maare');},
              child: Text("Login")
            ),
          )
        ],
      ),
    );
  } //WidgetBuild
} //End of class
