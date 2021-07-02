import 'package:flutter/material.dart';
import '../widgets/full_button.dart';
import '../widgets/my_form_text_field.dart';
import '../models/payment.dart';
import  'home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginPage> {
  // email RegExp
  final _emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  // uniquely identifies a Form
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 100, 0, 60),
              padding: EdgeInsets.all(50),
              child: Center(
                  child: Image(
                image: AssetImage('assets/images/paypal.png'),
              )),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Enter your username",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue[900].withOpacity(0.3),
                          offset: Offset(0,5), // Shadow position
                        ),
                      ],
                        ),
                    width: 200,
                    child: FlatButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, otherwise false.
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      child: Center(
                    child: Text(
                      "Having trouble with logging in?",
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Center(
                    child: FlatButton(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
