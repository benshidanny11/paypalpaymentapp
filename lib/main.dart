import 'package:flutter/material.dart';
import 'pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paypal payment app',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        primaryColor: Colors.blue[900],
        bottomNavigationBarTheme: BottomNavigationBarTheme.of(context)
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {




  @override
  Widget build(BuildContext context) {
    //     // This method is rerun every time setState is called, for instance as done
    //     // by the _incrementCounter method above.
    //     //
    //     // The Flutter framework has been optimized to make rerunning build methods
    //     // fast, so that you can just rebuild anything that needs updating rather
    //     // than having to individually change instances of widgets.
    return Scaffold(
     body: LoginPage()
    );
  }
}
