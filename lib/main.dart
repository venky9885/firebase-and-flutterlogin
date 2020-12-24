import 'package:firebase_flutter_first/screen/login.dart';
import 'package:flutter/material.dart';
// import './screen/signup.dart';
// import './screen/splash.dart';
import './screen/hmepage.dart';
//import './api/auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<>.value(
        value: Auths.initialize(),
      ),

      //create: (context) => auth();
    ],
    //builder(context,child) {
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        SignUp.routeName: (context) => SignUp(),
      },
      //),
      home: MyApp(),
    ),
    //  }
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Auths auth = Provider.of<Auths>(context);
    switch (auth.status) {
      case Status.Uninitialized:
        return Splash();
      case Status.Unauthenticated:
        return SignUp();
      case Status.Authenticating:
        return LoginScreen();
      case Status.Authenticated:
        return HomePage();
      default:
        return LoginScreen();
    }
  }
}
