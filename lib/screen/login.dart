import 'package:firebase_flutter_first/screen/signup.dart';
import 'package:flutter/material.dart';
import '../api/auth.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pswController = TextEditingController();
  //final Auths auth = Auths();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
              child: Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
            child: Form(
                key: key,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintMaxLines: 1,
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                          )),
                      //border: OutlinedBorder.Rad,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: pswController,
                      decoration: InputDecoration(
                          hintMaxLines: 1,
                          labelText: "password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                          )),
                      //border: OutlinedBorder.Rad,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RaisedButton(
                        child: Text("Login"),
                        onPressed: () {
                          //auth.signin(emailController.text, pswController.text);
                        }),
                    SizedBox(height: 8.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          SignUp.routeName,
                        );
                      },
                      child: Text('No Account ,Register'),
                    )
                  ],
                )),
          )),
        ],
      ),
    );
  }
}
