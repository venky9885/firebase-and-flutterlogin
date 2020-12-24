/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/createuser.dart';
import '../models/user.dart';

enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated }

//class UserProvider with ChangeNotifier {
class Auths with ChangeNotifier {
  static const LOGGED_IN = "loggedIn";
  static const ID = "id";
  User _user;
  User get user => _user;
  UserServices _userServices = UserServices();
  UserModel _userModel;
  Status _status = Status.Uninitialized;
  UserModel get userModel => _userModel;
  Status get status => _status;

  Auths.initialize() {
    _initialize();
  }
  final auth = FirebaseAuth.instance;

  Future<void> signin(String email, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    _status = Status.Authenticating;
    notifyListeners();
    await auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) async {
      await prefs.setString(ID, value.user.uid);
      await prefs.setBool(LOGGED_IN, true);

      _userModel = await _userServices.getUserById(value.user.uid);
    });
    return true;
  }

  Future<void> create(String email, String password) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('no user');
      } else {
        print("Check Cred");
      }
    }
  }

  _initialize() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool loggedIn = prefs.getBool(LOGGED_IN) ?? false;
    if (!loggedIn) {
      _status = Status.Unauthenticated;
    } else {
      _user = FirebaseAuth.instance.currentUser;
      _status = Status.Authenticated;
      _userModel = await _userServices.getUserById(_user.uid);
      //});
    }
    notifyListeners();
  }

  Future<void> reloadUserModel() async {
    _userModel = await _userServices.getUserById(user.uid);
    notifyListeners();
  }
  //final auth  = await auth.
  // }
  //}
}
*/
