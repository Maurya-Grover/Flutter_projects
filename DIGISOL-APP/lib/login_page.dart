import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  final formKey = GlobalKey<FormState>();
  String _email ;
  String _password ;

  void validateAndSave() {
    final form = formKey.currentState;
  if (form.validate()) {
    form.save();
    if ((_email == 'tanujkh007@gmail.com' ||
        _email == 'maurya.grover@gmail.com') &&
        (_password == 'tanuj' || _password == 'maurya'))
      Navigator.of(context).pushNamed(HomePage.tag);

}
  else {
    print("form is invalid");
  }
}
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.network('https://www.digisol.com/wp-content/themes/digisol/images/logo.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),

      ), validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
         onSaved: (value) => _email = value,
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
       onSaved: (value) => _password = value,
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: validateAndSave,
          //Navigator.of(context).pushNamed(HomePage.tag);
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(key: formKey,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 24.0),
              loginButton,

            ],
          ),
        ),
      ),
    );
  }
}
