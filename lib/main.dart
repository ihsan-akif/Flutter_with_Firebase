import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/models/user.dart';
import 'package:flutter_with_firebase/screens/wrapper.dart';
import 'package:flutter_with_firebase/services/auth.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // this widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
