import 'package:flutter/material.dart';
import '../api/auth.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  static const routeName = '/signup';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pswController = TextEditingController();
  //final log = Provider.of<Auths>(context);
  //final Auths auth = Auths();
  @override
  Widget build(BuildContext context) {
    //final log = Provider.of<Auths>(context);
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
                          //logs.create(emailController.text, pswController.text);
                        }),
                    SizedBox(height: 8.0),
                    GestureDetector(
                      onTap: null,
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
